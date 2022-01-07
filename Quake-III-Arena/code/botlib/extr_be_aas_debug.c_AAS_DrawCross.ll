; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_debug.c_AAS_DrawCross.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_debug.c_AAS_DrawCross.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_DrawCross(float* %0, float %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  store float* %0, float** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %38, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %41

13:                                               ; preds = %10
  %14 = load float*, float** %4, align 8
  %15 = load float*, float** %8, align 8
  %16 = call i32 @VectorCopy(float* %14, float* %15)
  %17 = load float, float* %5, align 4
  %18 = load float*, float** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  %22 = load float, float* %21, align 4
  %23 = fadd float %22, %17
  store float %23, float* %21, align 4
  %24 = load float*, float** %4, align 8
  %25 = load float*, float** %9, align 8
  %26 = call i32 @VectorCopy(float* %24, float* %25)
  %27 = load float, float* %5, align 4
  %28 = load float*, float** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %28, i64 %30
  %32 = load float, float* %31, align 4
  %33 = fsub float %32, %27
  store float %33, float* %31, align 4
  %34 = load float*, float** %8, align 8
  %35 = load float*, float** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @AAS_DebugLine(float* %34, float* %35, i32 %36)
  br label %38

38:                                               ; preds = %13
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %10

41:                                               ; preds = %10
  ret void
}

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @AAS_DebugLine(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
