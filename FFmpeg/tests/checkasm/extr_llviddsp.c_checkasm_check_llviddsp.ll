; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_llviddsp.c_checkasm_check_llviddsp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_llviddsp.c_checkasm_check_llviddsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"add_bytes\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"add_median_pred\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"add_left_pred_zero\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"add_left_pred_rnd_acc\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"add_left_pred_int16\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"add_gradient_pred\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkasm_check_llviddsp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @rnd()
  %5 = call i32 @av_clip(i32 %4, i32 16, i32 128)
  %6 = mul nsw i32 16, %5
  store i32 %6, i32* %2, align 4
  %7 = call i32 (...) @rnd()
  %8 = and i32 %7, 255
  store i32 %8, i32* %3, align 4
  %9 = call i32 @ff_llviddsp_init(i32* %1)
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @check_add_bytes(i32 %10, i32 %11)
  %13 = call i32 @report(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @check_add_median_pred(i32 %14, i32 %15)
  %17 = call i32 @report(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @check_add_left_pred(i32 %18, i32 %19, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @report(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @check_add_left_pred(i32 %22, i32 %23, i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @report(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @check_add_left_pred_16(i32 %27, i32 255, i32 %28, i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %31 = call i32 @report(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @check_add_gradient_pred(i32 %32, i32 %33)
  %35 = call i32 @report(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @rnd(...) #1

declare dso_local i32 @ff_llviddsp_init(i32*) #1

declare dso_local i32 @check_add_bytes(i32, i32) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @check_add_median_pred(i32, i32) #1

declare dso_local i32 @check_add_left_pred(i32, i32, i32, i8*) #1

declare dso_local i32 @check_add_left_pred_16(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @check_add_gradient_pred(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
