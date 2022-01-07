; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_roxr_32_s.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_roxr_32_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@REG_IR = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_roxr_32_s() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %6 = load i32, i32* @REG_IR, align 4
  %7 = ashr i32 %6, 9
  %8 = sub nsw i32 %7, 1
  %9 = and i32 %8, 7
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %2, align 4
  %11 = load i32*, i32** %1, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ROR_33(i32 %13, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = sub nsw i32 32, %16
  %18 = shl i32 1, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = call i32 (...) @XFLAG_AS_1()
  %22 = load i32, i32* %2, align 4
  %23 = sub nsw i32 32, %22
  %24 = shl i32 %21, %23
  %25 = or i32 %20, %24
  %26 = call i32 @MASK_OUT_ABOVE_32(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = sub nsw i32 %28, 1
  %30 = shl i32 1, %29
  %31 = and i32 %27, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32*, i32** %1, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = shl i32 %36, 8
  store i32 %37, i32* @FLAG_X, align 4
  store i32 %37, i32* @FLAG_C, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @NFLAG_32(i32 %38)
  store i32 %39, i32* @FLAG_N, align 4
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* @FLAG_Z, align 4
  %41 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %41, i32* @FLAG_V, align 4
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @ROR_33(i32, i32) #1

declare dso_local i32 @XFLAG_AS_1(...) #1

declare dso_local i32 @NFLAG_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
