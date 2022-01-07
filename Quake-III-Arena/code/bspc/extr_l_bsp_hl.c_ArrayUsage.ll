; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_hl.c_ArrayUsage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_hl.c_ArrayUsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"%-12s  %7i/%-7i  %7i/%-7i  (%4.1f%%)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"VERY FULL!\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"SIZE DANGER!\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SIZE OVERFLOW!!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayUsage(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = sitofp i32 %13 to double
  %15 = fmul double %14, 1.000000e+02
  %16 = load i32, i32* %7, align 4
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %15, %17
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %12
  %21 = phi double [ %18, %12 ], [ 0.000000e+00, %19 ]
  %22 = fptrunc double %21 to float
  store float %22, float* %9, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load float, float* %9, align 4
  %33 = fpext float %32 to double
  %34 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24, i32 %25, i32 %28, i32 %31, double %33)
  %35 = load float, float* %9, align 4
  %36 = fpext float %35 to double
  %37 = fcmp ogt double %36, 8.000000e+01
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %56

40:                                               ; preds = %20
  %41 = load float, float* %9, align 4
  %42 = fpext float %41 to double
  %43 = fcmp ogt double %42, 9.500000e+01
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %55

46:                                               ; preds = %40
  %47 = load float, float* %9, align 4
  %48 = fpext float %47 to double
  %49 = fcmp ogt double %48, 9.990000e+01
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %54

52:                                               ; preds = %46
  %53 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %50
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %57, %58
  ret i32 %59
}

declare dso_local i32 @qprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
