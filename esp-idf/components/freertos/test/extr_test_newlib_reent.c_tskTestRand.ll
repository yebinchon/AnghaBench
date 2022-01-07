; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_newlib_reent.c_tskTestRand.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_newlib_reent.c_tskTestRand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Rand1: %d\0A\00", align 1
@error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Rand2: %d\0A\00", align 1
@done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tskTestRand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tskTestRand(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @srand(i32 4660)
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  %7 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %8 = sdiv i32 %6, %7
  %9 = call i32 @vTaskDelay(i32 %8)
  %10 = call i32 (...) @rand()
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 869320854
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @error, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @error, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i8*, i8** %2, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %22 = sdiv i32 %20, %21
  %23 = call i32 @vTaskDelay(i32 %22)
  %24 = call i32 (...) @rand()
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 1148737841
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @error, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @error, align 4
  br label %32

32:                                               ; preds = %29, %18
  %33 = load i32, i32* @done, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @done, align 4
  %35 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
