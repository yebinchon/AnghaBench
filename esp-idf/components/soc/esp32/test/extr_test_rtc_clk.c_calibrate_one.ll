; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/test/extr_test_rtc_clk.c_calibrate_one.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/test/extr_test_rtc_clk.c_calibrate_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"calibrate (%d): \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%.3f kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @calibrate_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calibrate_one(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 1000, i32* %5, align 4
  store float 5.242880e+08, float* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %9)
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32, i32* %8, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @rtc_clk_cal(i32 %17, i32 1000)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sitofp i32 %19 to float
  %21 = fdiv float 5.242880e+08, %20
  %22 = fpext float %21 to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), double %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @rtc_clk_cal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
