; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTevOp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTevOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GX_CC_RASC = common dso_local global i64 0, align 8
@GX_CA_RASA = common dso_local global i64 0, align 8
@GX_TEVSTAGE0 = common dso_local global i64 0, align 8
@GX_CC_CPREV = common dso_local global i64 0, align 8
@GX_CA_APREV = common dso_local global i64 0, align 8
@GX_CC_ZERO = common dso_local global i64 0, align 8
@GX_CC_TEXC = common dso_local global i64 0, align 8
@GX_CA_ZERO = common dso_local global i64 0, align 8
@GX_CA_TEXA = common dso_local global i64 0, align 8
@GX_CC_TEXA = common dso_local global i64 0, align 8
@GX_CC_ONE = common dso_local global i64 0, align 8
@GX_CC_A2 = common dso_local global i64 0, align 8
@GX_TEV_ADD = common dso_local global i32 0, align 4
@GX_TB_ZERO = common dso_local global i32 0, align 4
@GX_CS_SCALE_1 = common dso_local global i32 0, align 4
@GX_TRUE = common dso_local global i32 0, align 4
@GX_TEVPREV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetTevOp(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @GX_CC_RASC, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @GX_CA_RASA, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @GX_TEVSTAGE0, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* @GX_CC_CPREV, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* @GX_CA_APREV, align 8
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i64, i64* %4, align 8
  switch i64 %16, label %82 [
    i64 130, label %17
    i64 131, label %30
    i64 132, label %43
    i64 128, label %56
    i64 129, label %69
  ]

17:                                               ; preds = %15
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @GX_CC_ZERO, align 8
  %20 = load i64, i64* @GX_CC_TEXC, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @GX_CC_ZERO, align 8
  %23 = call i32 @GX_SetTevColorIn(i64 %18, i64 %19, i64 %20, i64 %21, i64 %22)
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @GX_CA_ZERO, align 8
  %26 = load i64, i64* @GX_CA_TEXA, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @GX_CA_ZERO, align 8
  %29 = call i32 @GX_SetTevAlphaIn(i64 %24, i64 %25, i64 %26, i64 %27, i64 %28)
  br label %82

30:                                               ; preds = %15
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @GX_CC_TEXC, align 8
  %34 = load i64, i64* @GX_CC_TEXA, align 8
  %35 = load i64, i64* @GX_CC_ZERO, align 8
  %36 = call i32 @GX_SetTevColorIn(i64 %31, i64 %32, i64 %33, i64 %34, i64 %35)
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @GX_CA_ZERO, align 8
  %39 = load i64, i64* @GX_CA_ZERO, align 8
  %40 = load i64, i64* @GX_CA_ZERO, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @GX_SetTevAlphaIn(i64 %37, i64 %38, i64 %39, i64 %40, i64 %41)
  br label %82

43:                                               ; preds = %15
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @GX_CC_ONE, align 8
  %47 = load i64, i64* @GX_CC_TEXC, align 8
  %48 = load i64, i64* @GX_CC_ZERO, align 8
  %49 = call i32 @GX_SetTevColorIn(i64 %44, i64 %45, i64 %46, i64 %47, i64 %48)
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @GX_CA_ZERO, align 8
  %52 = load i64, i64* @GX_CA_TEXA, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @GX_CA_RASA, align 8
  %55 = call i32 @GX_SetTevAlphaIn(i64 %50, i64 %51, i64 %52, i64 %53, i64 %54)
  br label %82

56:                                               ; preds = %15
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @GX_CC_ZERO, align 8
  %59 = load i64, i64* @GX_CC_ZERO, align 8
  %60 = load i64, i64* @GX_CC_ZERO, align 8
  %61 = load i64, i64* @GX_CC_TEXC, align 8
  %62 = call i32 @GX_SetTevColorIn(i64 %57, i64 %58, i64 %59, i64 %60, i64 %61)
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @GX_CA_ZERO, align 8
  %65 = load i64, i64* @GX_CA_ZERO, align 8
  %66 = load i64, i64* @GX_CA_ZERO, align 8
  %67 = load i64, i64* @GX_CA_TEXA, align 8
  %68 = call i32 @GX_SetTevAlphaIn(i64 %63, i64 %64, i64 %65, i64 %66, i64 %67)
  br label %82

69:                                               ; preds = %15
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @GX_CC_ZERO, align 8
  %72 = load i64, i64* @GX_CC_ZERO, align 8
  %73 = load i64, i64* @GX_CC_ZERO, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @GX_SetTevColorIn(i64 %70, i64 %71, i64 %72, i64 %73, i64 %74)
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* @GX_CC_A2, align 8
  %78 = load i64, i64* @GX_CC_A2, align 8
  %79 = load i64, i64* @GX_CC_A2, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @GX_SetTevAlphaIn(i64 %76, i64 %77, i64 %78, i64 %79, i64 %80)
  br label %82

82:                                               ; preds = %15, %69, %56, %43, %30, %17
  %83 = load i64, i64* %3, align 8
  %84 = load i32, i32* @GX_TEV_ADD, align 4
  %85 = load i32, i32* @GX_TB_ZERO, align 4
  %86 = load i32, i32* @GX_CS_SCALE_1, align 4
  %87 = load i32, i32* @GX_TRUE, align 4
  %88 = load i32, i32* @GX_TEVPREV, align 4
  %89 = call i32 @GX_SetTevColorOp(i64 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i64, i64* %3, align 8
  %91 = load i32, i32* @GX_TEV_ADD, align 4
  %92 = load i32, i32* @GX_TB_ZERO, align 4
  %93 = load i32, i32* @GX_CS_SCALE_1, align 4
  %94 = load i32, i32* @GX_TRUE, align 4
  %95 = load i32, i32* @GX_TEVPREV, align 4
  %96 = call i32 @GX_SetTevAlphaOp(i64 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @GX_SetTevColorIn(i64, i64, i64, i64, i64) #1

declare dso_local i32 @GX_SetTevAlphaIn(i64, i64, i64, i64, i64) #1

declare dso_local i32 @GX_SetTevColorOp(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_SetTevAlphaOp(i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
