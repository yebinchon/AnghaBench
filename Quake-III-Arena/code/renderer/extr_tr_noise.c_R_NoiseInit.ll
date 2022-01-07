; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_noise.c_R_NoiseInit.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_noise.c_R_NoiseInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOISE_SIZE = common dso_local global i32 0, align 4
@RAND_MAX = common dso_local global i64 0, align 8
@s_noise_table = common dso_local global float* null, align 8
@s_noise_perm = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_NoiseInit() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @srand(i32 1001)
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %30, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @NOISE_SIZE, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = call float (...) @rand()
  %9 = load i64, i64* @RAND_MAX, align 8
  %10 = sitofp i64 %9 to float
  %11 = fdiv float %8, %10
  %12 = fpext float %11 to double
  %13 = fmul double %12, 2.000000e+00
  %14 = fsub double %13, 1.000000e+00
  %15 = fptrunc double %14 to float
  %16 = load float*, float** @s_noise_table, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float* %16, i64 %18
  store float %15, float* %19, align 4
  %20 = call float (...) @rand()
  %21 = load i64, i64* @RAND_MAX, align 8
  %22 = sitofp i64 %21 to float
  %23 = fdiv float %20, %22
  %24 = fmul float %23, 2.550000e+02
  %25 = fptoui float %24 to i8
  %26 = load i8*, i8** @s_noise_perm, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 %25, i8* %29, align 1
  br label %30

30:                                               ; preds = %7
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %3

33:                                               ; preds = %3
  ret void
}

declare dso_local i32 @srand(i32) #1

declare dso_local float @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
