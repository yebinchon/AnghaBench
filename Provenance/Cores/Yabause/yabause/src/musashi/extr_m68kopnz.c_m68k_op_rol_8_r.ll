; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_rol_8_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_rol_8_r.c"
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
define dso_local void @m68k_op_rol_8_r() #0 {
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
  %9 = and i32 %8, 7
  store i32 %9, i32* %3, align 4
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @MASK_OUT_ABOVE_8(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ROL_8(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %0
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @CYC_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = call i32 @USE_CYCLES(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load i32*, i32** %1, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @MASK_OUT_BELOW_8(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %28, %29
  %31 = load i32*, i32** %1, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* @FLAG_C, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @NFLAG_8(i32 %35)
  store i32 %36, i32* @FLAG_N, align 4
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* @FLAG_Z, align 4
  %38 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %38, i32* @FLAG_V, align 4
  br label %53

39:                                               ; preds = %18
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 1
  %42 = shl i32 %41, 8
  store i32 %42, i32* @FLAG_C, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @NFLAG_8(i32 %43)
  store i32 %44, i32* @FLAG_N, align 4
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* @FLAG_Z, align 4
  %46 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %46, i32* @FLAG_V, align 4
  br label %53

47:                                               ; preds = %0
  %48 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %48, i32* @FLAG_C, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @NFLAG_8(i32 %49)
  store i32 %50, i32* @FLAG_N, align 4
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* @FLAG_Z, align 4
  %52 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %52, i32* @FLAG_V, align 4
  br label %53

53:                                               ; preds = %47, %39, %25
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

declare dso_local i32 @ROL_8(i32, i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_8(i32) #1

declare dso_local i32 @NFLAG_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
