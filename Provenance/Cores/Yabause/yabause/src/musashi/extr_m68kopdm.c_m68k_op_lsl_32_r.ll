; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_lsl_32_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_lsl_32_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@NFLAG_CLEAR = common dso_local global i32 0, align 4
@ZFLAG_SET = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_lsl_32_r() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %5 = load i32, i32* @DX, align 4
  %6 = and i32 %5, 63
  store i32 %6, i32* %2, align 4
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = shl i32 %9, %10
  %12 = call i32 @MASK_OUT_ABOVE_32(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @CYC_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = call i32 @USE_CYCLES(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** %1, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 32, %26
  %28 = ashr i32 %25, %27
  %29 = shl i32 %28, 8
  store i32 %29, i32* @FLAG_C, align 4
  store i32 %29, i32* @FLAG_X, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @NFLAG_32(i32 %30)
  store i32 %31, i32* @FLAG_N, align 4
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* @FLAG_Z, align 4
  %33 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %33, i32* @FLAG_V, align 4
  br label %54

34:                                               ; preds = %15
  %35 = load i32*, i32** %1, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 1
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 0, %41 ]
  %44 = shl i32 %43, 8
  store i32 %44, i32* @FLAG_C, align 4
  store i32 %44, i32* @FLAG_X, align 4
  %45 = load i32, i32* @NFLAG_CLEAR, align 4
  store i32 %45, i32* @FLAG_N, align 4
  %46 = load i32, i32* @ZFLAG_SET, align 4
  store i32 %46, i32* @FLAG_Z, align 4
  %47 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %47, i32* @FLAG_V, align 4
  br label %54

48:                                               ; preds = %0
  %49 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %49, i32* @FLAG_C, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @NFLAG_32(i32 %50)
  store i32 %51, i32* @FLAG_N, align 4
  %52 = load i32, i32* %3, align 4
  store i32 %52, i32* @FLAG_Z, align 4
  %53 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %53, i32* @FLAG_V, align 4
  br label %54

54:                                               ; preds = %48, %42, %22
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
