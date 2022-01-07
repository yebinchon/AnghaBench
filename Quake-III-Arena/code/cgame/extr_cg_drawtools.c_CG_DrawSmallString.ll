; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_drawtools.c_CG_DrawSmallString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_drawtools.c_CG_DrawSmallString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawSmallString(i32 %0, i32 %1, i8* %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  %9 = alloca [4 x float], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store float %3, float* %8, align 4
  %10 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 2
  store float 1.000000e+00, float* %10, align 8
  %11 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  store float 1.000000e+00, float* %11, align 4
  %12 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  store float 1.000000e+00, float* %12, align 16
  %13 = load float, float* %8, align 4
  %14 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  store float %13, float* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  %19 = load i32, i32* @qfalse, align 4
  %20 = load i32, i32* @qfalse, align 4
  %21 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %22 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %23 = call i32 @CG_DrawStringExt(i32 %15, i32 %16, i8* %17, float* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 0)
  ret void
}

declare dso_local i32 @CG_DrawStringExt(i32, i32, i8*, float*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
