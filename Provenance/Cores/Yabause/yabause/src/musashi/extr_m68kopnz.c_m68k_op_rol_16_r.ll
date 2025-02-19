; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_rol_16_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_rol_16_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_rol_16_r() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %6 = load i32, i32* @DX, align 4
  %7 = and i32 %6, 63
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 15
  store i32 %9, i32* %3, align 4
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @MASK_OUT_ABOVE_16(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ROL_16(i32 %13, i32 %14)
  %16 = call i32 @MASK_OUT_ABOVE_16(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %0
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @CYC_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = call i32 @USE_CYCLES(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @MASK_OUT_BELOW_16(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** %1, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = shl i32 %33, %34
  %36 = ashr i32 %35, 8
  store i32 %36, i32* @FLAG_C, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @NFLAG_16(i32 %37)
  store i32 %38, i32* @FLAG_N, align 4
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* @FLAG_Z, align 4
  %40 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %40, i32* @FLAG_V, align 4
  br label %55

41:                                               ; preds = %19
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 1
  %44 = shl i32 %43, 8
  store i32 %44, i32* @FLAG_C, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @NFLAG_16(i32 %45)
  store i32 %46, i32* @FLAG_N, align 4
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* @FLAG_Z, align 4
  %48 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %48, i32* @FLAG_V, align 4
  br label %55

49:                                               ; preds = %0
  %50 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %50, i32* @FLAG_C, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @NFLAG_16(i32 %51)
  store i32 %52, i32* @FLAG_N, align 4
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* @FLAG_Z, align 4
  %54 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %54, i32* @FLAG_V, align 4
  br label %55

55:                                               ; preds = %49, %41, %26
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

declare dso_local i32 @ROL_16(i32, i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_16(i32) #1

declare dso_local i32 @NFLAG_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
