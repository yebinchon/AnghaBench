; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_bot.c_BotImport_BSPModelMinsMaxsOrigin.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_bot.c_BotImport_BSPModelMinsMaxsOrigin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotImport_BSPModelMinsMaxsOrigin(i32 %0, float* %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @CM_InlineModel(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load float*, float** %12, align 8
  %20 = load float*, float** %13, align 8
  %21 = call i32 @CM_ModelBounds(i32 %18, float* %19, float* %20)
  %22 = load float*, float** %7, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  %24 = load float, float* %23, align 4
  %25 = fcmp une float %24, 0.000000e+00
  br i1 %25, label %36, label %26

26:                                               ; preds = %5
  %27 = load float*, float** %7, align 8
  %28 = getelementptr inbounds float, float* %27, i64 1
  %29 = load float, float* %28, align 4
  %30 = fcmp une float %29, 0.000000e+00
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load float*, float** %7, align 8
  %33 = getelementptr inbounds float, float* %32, i64 2
  %34 = load float, float* %33, align 4
  %35 = fcmp une float %34, 0.000000e+00
  br i1 %35, label %36, label %59

36:                                               ; preds = %31, %26, %5
  %37 = load float*, float** %12, align 8
  %38 = load float*, float** %13, align 8
  %39 = call float @RadiusFromBounds(float* %37, float* %38)
  store float %39, float* %14, align 4
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %55, %36
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load float, float* %14, align 4
  %45 = fneg float %44
  %46 = load float*, float** %12, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  store float %45, float* %49, align 4
  %50 = load float, float* %14, align 4
  %51 = load float*, float** %13, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  store float %50, float* %54, align 4
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %40

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %31
  %60 = load float*, float** %8, align 8
  %61 = icmp ne float* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load float*, float** %12, align 8
  %64 = load float*, float** %8, align 8
  %65 = call i32 @VectorCopy(float* %63, float* %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = load float*, float** %9, align 8
  %68 = icmp ne float* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load float*, float** %13, align 8
  %71 = load float*, float** %9, align 8
  %72 = call i32 @VectorCopy(float* %70, float* %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load float*, float** %10, align 8
  %75 = icmp ne float* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load float*, float** %10, align 8
  %78 = call i32 @VectorClear(float* %77)
  br label %79

79:                                               ; preds = %76, %73
  ret void
}

declare dso_local i32 @CM_InlineModel(i32) #1

declare dso_local i32 @CM_ModelBounds(i32, float*, float*) #1

declare dso_local float @RadiusFromBounds(float*, float*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @VectorClear(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
