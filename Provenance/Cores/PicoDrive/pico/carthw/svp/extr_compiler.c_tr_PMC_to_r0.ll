; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_PMC_to_r0.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_PMC_to_r0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@known_regb = common dso_local global i32 0, align 4
@KRREG_PMC = common dso_local global i32 0, align 4
@known_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SSP_PMC_HAVE_ADDR = common dso_local global i32 0, align 4
@SSP_PMC_SET = common dso_local global i32 0, align 4
@SSP_PMC = common dso_local global i32 0, align 4
@A_COND_EQ = common dso_local global i32 0, align 4
@A_OP_ORR = common dso_local global i32 0, align 4
@A_COND_NE = common dso_local global i32 0, align 4
@A_OP_BIC = common dso_local global i32 0, align 4
@hostreg_r = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tr_PMC_to_r0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_PMC_to_r0(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @known_regb, align 4
  %4 = load i32, i32* @KRREG_PMC, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  %9 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load i32, i32* @SSP_PMC_SET, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  %16 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  br label %26

20:                                               ; preds = %7
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1, i32 0), align 4
  %22 = call i32 @tr_mov16(i32 0, i32 %21)
  %23 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  br label %26

26:                                               ; preds = %20, %12
  br label %57

27:                                               ; preds = %1
  %28 = call i32 @EOP_LDR_IMM(i32 1, i32 7, i32 1156)
  %29 = call i32 (...) @tr_flush_dirty_ST()
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 14
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @SSP_PMC, align 4
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 1024, %34
  %36 = call i32 @EOP_LDR_IMM(i32 0, i32 7, i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %39 = call i32 @EOP_TST_IMM(i32 1, i32 0, i32 %38)
  %40 = load i32, i32* @A_COND_EQ, align 4
  %41 = load i32, i32* @A_OP_ORR, align 4
  %42 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %43 = call i32 @EOP_C_DOP_IMM(i32 %40, i32 %41, i32 0, i32 1, i32 1, i32 0, i32 %42)
  %44 = load i32, i32* @A_COND_NE, align 4
  %45 = load i32, i32* @A_OP_BIC, align 4
  %46 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %47 = call i32 @EOP_C_DOP_IMM(i32 %44, i32 %45, i32 0, i32 1, i32 1, i32 0, i32 %46)
  %48 = load i32, i32* @A_COND_NE, align 4
  %49 = load i32, i32* @A_OP_ORR, align 4
  %50 = load i32, i32* @SSP_PMC_SET, align 4
  %51 = call i32 @EOP_C_DOP_IMM(i32 %48, i32 %49, i32 0, i32 1, i32 1, i32 0, i32 %50)
  %52 = call i32 @EOP_STR_IMM(i32 1, i32 7, i32 1156)
  %53 = load i32*, i32** @hostreg_r, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 -1, i32* %54, align 4
  %55 = load i32*, i32** @hostreg_r, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 -1, i32* %56, align 4
  br label %57

57:                                               ; preds = %37, %26
  ret void
}

declare dso_local i32 @tr_mov16(i32, i32) #1

declare dso_local i32 @EOP_LDR_IMM(i32, i32, i32) #1

declare dso_local i32 @tr_flush_dirty_ST(...) #1

declare dso_local i32 @EOP_TST_IMM(i32, i32, i32) #1

declare dso_local i32 @EOP_C_DOP_IMM(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EOP_STR_IMM(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
