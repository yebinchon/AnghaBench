; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-test.c_heap_cleanup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-test.c_heap_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kasan_test = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kasan_test*)* @heap_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_cleanup(%struct.kasan_test* %0) #0 {
  %2 = alloca %struct.kasan_test*, align 8
  store %struct.kasan_test* %0, %struct.kasan_test** %2, align 8
  %3 = load %struct.kasan_test*, %struct.kasan_test** %2, align 8
  %4 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.kasan_test*, %struct.kasan_test** %2, align 8
  %9 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.kasan_test*, %struct.kasan_test** %2, align 8
  %12 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @kfree(i32* %10, i32 %13)
  %15 = load %struct.kasan_test*, %struct.kasan_test** %2, align 8
  %16 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @kfree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
