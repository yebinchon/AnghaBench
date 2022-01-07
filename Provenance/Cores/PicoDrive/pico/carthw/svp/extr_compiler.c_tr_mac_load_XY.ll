; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_mac_load_XY.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_mac_load_XY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KRREG_P = common dso_local global i32 0, align 4
@dirty_regb = common dso_local global i32 0, align 4
@SSP_X = common dso_local global i32 0, align 4
@SSP_Y = common dso_local global i32 0, align 4
@KRREG_X = common dso_local global i32 0, align 4
@known_regb = common dso_local global i32 0, align 4
@KRREG_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tr_mac_load_XY to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_mac_load_XY(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 3
  %5 = load i32, i32* %2, align 4
  %6 = ashr i32 %5, 2
  %7 = and i32 %6, 3
  %8 = call i32 @tr_rX_read(i32 %4, i32 %7)
  %9 = call i32 @EOP_MOV_REG_LSL(i32 4, i32 0, i32 16)
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 4
  %12 = and i32 %11, 3
  %13 = or i32 %12, 4
  %14 = load i32, i32* %2, align 4
  %15 = ashr i32 %14, 6
  %16 = and i32 %15, 3
  %17 = call i32 @tr_rX_read(i32 %13, i32 %16)
  %18 = call i32 @EOP_ORR_REG_SIMPLE(i32 4, i32 0)
  %19 = load i32, i32* @KRREG_P, align 4
  %20 = load i32, i32* @dirty_regb, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* @dirty_regb, align 4
  %22 = load i32, i32* @SSP_X, align 4
  %23 = call i32 @hostreg_sspreg_changed(i32 %22)
  %24 = load i32, i32* @SSP_Y, align 4
  %25 = call i32 @hostreg_sspreg_changed(i32 %24)
  %26 = load i32, i32* @KRREG_X, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* @known_regb, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* @known_regb, align 4
  %30 = load i32, i32* @KRREG_Y, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* @known_regb, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* @known_regb, align 4
  ret void
}

declare dso_local i32 @tr_rX_read(i32, i32) #1

declare dso_local i32 @EOP_MOV_REG_LSL(i32, i32, i32) #1

declare dso_local i32 @EOP_ORR_REG_SIMPLE(i32, i32) #1

declare dso_local i32 @hostreg_sspreg_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
