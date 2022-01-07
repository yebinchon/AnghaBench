; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_divu_16_d.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_divu_16_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DX = common dso_local global i32 0, align 4
@DY = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@VFLAG_SET = common dso_local global i32 0, align 4
@EXCEPTION_ZERO_DIVIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_divu_16_d() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* @DX, i32** %1, align 8
  %5 = load i32, i32* @DY, align 4
  %6 = call i32 @MASK_OUT_ABOVE_16(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %0
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %2, align 4
  %17 = srem i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 65536
  br i1 %19, label %20, label %33

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* @FLAG_Z, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @NFLAG_16(i32 %22)
  store i32 %23, i32* @FLAG_N, align 4
  %24 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %24, i32* @FLAG_V, align 4
  %25 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %25, i32* @FLAG_C, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @MASK_OUT_ABOVE_16(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %27, %29
  %31 = call i32 @MASK_OUT_ABOVE_32(i32 %30)
  %32 = load i32*, i32** %1, align 8
  store i32 %31, i32* %32, align 4
  br label %38

33:                                               ; preds = %9
  %34 = load i32, i32* @VFLAG_SET, align 4
  store i32 %34, i32* @FLAG_V, align 4
  br label %38

35:                                               ; preds = %0
  %36 = load i32, i32* @EXCEPTION_ZERO_DIVIDE, align 4
  %37 = call i32 @m68ki_exception_trap(i32 %36)
  br label %38

38:                                               ; preds = %35, %33, %20
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

declare dso_local i32 @NFLAG_16(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @m68ki_exception_trap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
