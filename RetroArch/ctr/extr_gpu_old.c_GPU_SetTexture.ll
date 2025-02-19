; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/extr_gpu_old.c_GPU_SetTexture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/extr_gpu_old.c_GPU_SetTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPUREG_TEXUNIT0_TYPE = common dso_local global i32 0, align 4
@GPUREG_TEXUNIT0_ADDR1 = common dso_local global i32 0, align 4
@GPUREG_TEXUNIT0_DIM = common dso_local global i32 0, align 4
@GPUREG_TEXUNIT0_PARAM = common dso_local global i32 0, align 4
@GPUREG_TEXUNIT1_TYPE = common dso_local global i32 0, align 4
@GPUREG_TEXUNIT1_ADDR = common dso_local global i32 0, align 4
@GPUREG_TEXUNIT1_DIM = common dso_local global i32 0, align 4
@GPUREG_TEXUNIT1_PARAM = common dso_local global i32 0, align 4
@GPUREG_TEXUNIT2_TYPE = common dso_local global i32 0, align 4
@GPUREG_TEXUNIT2_ADDR = common dso_local global i32 0, align 4
@GPUREG_TEXUNIT2_DIM = common dso_local global i32 0, align 4
@GPUREG_TEXUNIT2_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GPU_SetTexture(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %68 [
    i32 130, label %14
    i32 129, label %32
    i32 128, label %50
  ]

14:                                               ; preds = %6
  %15 = load i32, i32* @GPUREG_TEXUNIT0_TYPE, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @GPUCMD_AddWrite(i32 %15, i32 %16)
  %18 = load i32, i32* @GPUREG_TEXUNIT0_ADDR1, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = ashr i32 %20, 3
  %22 = call i32 @GPUCMD_AddWrite(i32 %18, i32 %21)
  %23 = load i32, i32* @GPUREG_TEXUNIT0_DIM, align 4
  %24 = load i32, i32* %9, align 4
  %25 = shl i32 %24, 16
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @GPUCMD_AddWrite(i32 %23, i32 %27)
  %29 = load i32, i32* @GPUREG_TEXUNIT0_PARAM, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @GPUCMD_AddWrite(i32 %29, i32 %30)
  br label %68

32:                                               ; preds = %6
  %33 = load i32, i32* @GPUREG_TEXUNIT1_TYPE, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @GPUCMD_AddWrite(i32 %33, i32 %34)
  %36 = load i32, i32* @GPUREG_TEXUNIT1_ADDR, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = ptrtoint i32* %37 to i32
  %39 = ashr i32 %38, 3
  %40 = call i32 @GPUCMD_AddWrite(i32 %36, i32 %39)
  %41 = load i32, i32* @GPUREG_TEXUNIT1_DIM, align 4
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 %42, 16
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @GPUCMD_AddWrite(i32 %41, i32 %45)
  %47 = load i32, i32* @GPUREG_TEXUNIT1_PARAM, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @GPUCMD_AddWrite(i32 %47, i32 %48)
  br label %68

50:                                               ; preds = %6
  %51 = load i32, i32* @GPUREG_TEXUNIT2_TYPE, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @GPUCMD_AddWrite(i32 %51, i32 %52)
  %54 = load i32, i32* @GPUREG_TEXUNIT2_ADDR, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = ptrtoint i32* %55 to i32
  %57 = ashr i32 %56, 3
  %58 = call i32 @GPUCMD_AddWrite(i32 %54, i32 %57)
  %59 = load i32, i32* @GPUREG_TEXUNIT2_DIM, align 4
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 %60, 16
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @GPUCMD_AddWrite(i32 %59, i32 %63)
  %65 = load i32, i32* @GPUREG_TEXUNIT2_PARAM, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @GPUCMD_AddWrite(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %6, %50, %32, %14
  ret void
}

declare dso_local i32 @GPUCMD_AddWrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
