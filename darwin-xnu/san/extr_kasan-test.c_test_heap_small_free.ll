; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-test.c_test_heap_small_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-test.c_test_heap_small_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kasan_test = type { i64, i32* }

@BUFSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kasan_test*)* @test_heap_small_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_heap_small_free(%struct.kasan_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kasan_test*, align 8
  %4 = alloca i32*, align 8
  store %struct.kasan_test* %0, %struct.kasan_test** %3, align 8
  %5 = load %struct.kasan_test*, %struct.kasan_test** %3, align 8
  %6 = call i32 @TEST_START(%struct.kasan_test* %5)
  %7 = load i64, i64* @BUFSZ, align 8
  %8 = call i32* @kalloc(i64 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load i64, i64* @BUFSZ, align 8
  %14 = load %struct.kasan_test*, %struct.kasan_test** %3, align 8
  %15 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.kasan_test*, %struct.kasan_test** %3, align 8
  %18 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.kasan_test*, %struct.kasan_test** %3, align 8
  %20 = call i32 @TEST_FAULT(%struct.kasan_test* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i64, i64* @BUFSZ, align 8
  %23 = sub nsw i64 %22, 2
  %24 = call i32 @kfree(i32* %21, i64 %23)
  %25 = load %struct.kasan_test*, %struct.kasan_test** %3, align 8
  %26 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.kasan_test*, %struct.kasan_test** %3, align 8
  %28 = getelementptr inbounds %struct.kasan_test, %struct.kasan_test* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %12, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @TEST_START(%struct.kasan_test*) #1

declare dso_local i32* @kalloc(i64) #1

declare dso_local i32 @TEST_FAULT(%struct.kasan_test*) #1

declare dso_local i32 @kfree(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
