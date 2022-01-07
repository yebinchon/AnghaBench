; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_struct.c_t12.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_struct.c_t12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag12 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @t12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t12() #0 {
  %1 = alloca [3 x %struct.tag12], align 16
  %2 = alloca i32*, align 8
  %3 = getelementptr inbounds [3 x %struct.tag12], [3 x %struct.tag12]* %1, i64 0, i64 0
  %4 = getelementptr inbounds %struct.tag12, %struct.tag12* %3, i32 0, i32 0
  store i32 83, i32* %4, align 16
  %5 = getelementptr inbounds [3 x %struct.tag12], [3 x %struct.tag12]* %1, i64 0, i64 0
  %6 = getelementptr inbounds %struct.tag12, %struct.tag12* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = call i32 @expect(i32 83, i32 %7)
  %9 = getelementptr inbounds [3 x %struct.tag12], [3 x %struct.tag12]* %1, i64 0, i64 0
  %10 = getelementptr inbounds %struct.tag12, %struct.tag12* %9, i32 0, i32 1
  store i32 84, i32* %10, align 4
  %11 = getelementptr inbounds [3 x %struct.tag12], [3 x %struct.tag12]* %1, i64 0, i64 0
  %12 = getelementptr inbounds %struct.tag12, %struct.tag12* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @expect(i32 84, i32 %13)
  %15 = getelementptr inbounds [3 x %struct.tag12], [3 x %struct.tag12]* %1, i64 0, i64 1
  %16 = getelementptr inbounds %struct.tag12, %struct.tag12* %15, i32 0, i32 1
  store i32 85, i32* %16, align 4
  %17 = getelementptr inbounds [3 x %struct.tag12], [3 x %struct.tag12]* %1, i64 0, i64 1
  %18 = getelementptr inbounds %struct.tag12, %struct.tag12* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @expect(i32 85, i32 %19)
  %21 = getelementptr inbounds [3 x %struct.tag12], [3 x %struct.tag12]* %1, i64 0, i64 0
  %22 = bitcast %struct.tag12* %21 to i32*
  store i32* %22, i32** %2, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @expect(i32 85, i32 %25)
  ret void
}

declare dso_local i32 @expect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
