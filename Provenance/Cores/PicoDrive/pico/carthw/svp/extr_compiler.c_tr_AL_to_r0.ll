; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_AL_to_r0.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_AL_to_r0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@known_regb = common dso_local global i32 0, align 4
@KRREG_PMC = common dso_local global i32 0, align 4
@SSP_PMC_SET = common dso_local global i32 0, align 4
@SSP_PMC_HAVE_ADDR = common dso_local global i32 0, align 4
@known_regs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@hostreg_r = common dso_local global i32* null, align 8
@SSP_AL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tr_AL_to_r0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_AL_to_r0(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 15
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = load i32, i32* @known_regb, align 4
  %7 = load i32, i32* @KRREG_PMC, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load i32, i32* @SSP_PMC_SET, align 4
  %12 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @known_regs, i32 0, i32 0), align 4
  br label %24

17:                                               ; preds = %5
  %18 = call i32 @EOP_LDR_IMM(i32 0, i32 7, i32 1156)
  %19 = load i32, i32* @SSP_PMC_SET, align 4
  %20 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @EOP_BIC_IMM(i32 0, i32 0, i32 0, i32 %21)
  %23 = call i32 @EOP_STR_IMM(i32 0, i32 7, i32 1156)
  br label %24

24:                                               ; preds = %17, %10
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32*, i32** @hostreg_r, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SSP_AL, align 4
  %30 = shl i32 %29, 16
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = call i32 @EOP_MOV_REG_SIMPLE(i32 0, i32 5)
  %34 = load i32, i32* @SSP_AL, align 4
  %35 = shl i32 %34, 16
  %36 = load i32*, i32** @hostreg_r, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %25
  ret void
}

declare dso_local i32 @EOP_LDR_IMM(i32, i32, i32) #1

declare dso_local i32 @EOP_BIC_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_STR_IMM(i32, i32, i32) #1

declare dso_local i32 @EOP_MOV_REG_SIMPLE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
