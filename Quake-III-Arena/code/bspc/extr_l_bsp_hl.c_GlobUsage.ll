; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_hl.c_GlobUsage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_hl.c_GlobUsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"%-12s     [variable]    %7i/%-7i  (%4.1f%%)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"VERY FULL!\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"SIZE DANGER!\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SIZE OVERFLOW!!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GlobUsage(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = sitofp i32 %11 to double
  %13 = fmul double %12, 1.000000e+02
  %14 = load i32, i32* %6, align 4
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %13, %15
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %10
  %19 = phi double [ %16, %10 ], [ 0.000000e+00, %17 ]
  %20 = fptrunc double %19 to float
  store float %20, float* %7, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load float, float* %7, align 4
  %25 = fpext float %24 to double
  %26 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22, i32 %23, double %25)
  %27 = load float, float* %7, align 4
  %28 = fpext float %27 to double
  %29 = fcmp ogt double %28, 8.000000e+01
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %48

32:                                               ; preds = %18
  %33 = load float, float* %7, align 4
  %34 = fpext float %33 to double
  %35 = fcmp ogt double %34, 9.500000e+01
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %47

38:                                               ; preds = %32
  %39 = load float, float* %7, align 4
  %40 = fpext float %39 to double
  %41 = fcmp ogt double %40, 9.990000e+01
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %46

44:                                               ; preds = %38
  %45 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42
  br label %47

47:                                               ; preds = %46, %36
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @qprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
