; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_r0_to_PMC.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_r0_to_PMC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@known_regb = common dso_local global i32 0, align 4
@KRREG_PMC = common dso_local global i32 0, align 4
@known_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SSP_PMC_HAVE_ADDR = common dso_local global i32 0, align 4
@SSP_PMC_SET = common dso_local global i32 0, align 4
@SSP_PMC = common dso_local global i32 0, align 4
@dirty_regb = common dso_local global i32 0, align 4
@A_COND_EQ = common dso_local global i32 0, align 4
@A_COND_NE = common dso_local global i32 0, align 4
@A_OP_ORR = common dso_local global i32 0, align 4
@A_OP_BIC = common dso_local global i32 0, align 4
@hostreg_r = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tr_r0_to_PMC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_r0_to_PMC(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @known_regb, align 4
  %4 = load i32, i32* @KRREG_PMC, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  %12 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32, i32* @SSP_PMC_SET, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  %19 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1, i32 0), align 4
  br label %29

24:                                               ; preds = %10
  %25 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 4
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1, i32 1), align 4
  br label %29

29:                                               ; preds = %24, %15
  br label %82

30:                                               ; preds = %7, %1
  %31 = call i32 (...) @tr_flush_dirty_ST()
  %32 = load i32, i32* @known_regb, align 4
  %33 = load i32, i32* @KRREG_PMC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1, i32 2), align 4
  %38 = call i32 @emith_move_r_imm(i32 1, i32 %37)
  %39 = load i32, i32* @SSP_PMC, align 4
  %40 = mul nsw i32 %39, 4
  %41 = add nsw i32 1024, %40
  %42 = call i32 @EOP_STR_IMM(i32 1, i32 7, i32 %41)
  %43 = load i32, i32* @KRREG_PMC, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* @known_regb, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* @known_regb, align 4
  %47 = load i32, i32* @KRREG_PMC, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* @dirty_regb, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* @dirty_regb, align 4
  br label %51

51:                                               ; preds = %36, %30
  %52 = call i32 @EOP_LDR_IMM(i32 1, i32 7, i32 1156)
  %53 = call i32 @EOP_ADD_IMM(i32 2, i32 7, i32 12, i32 4)
  %54 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %55 = call i32 @EOP_TST_IMM(i32 1, i32 0, i32 %54)
  %56 = load i32, i32* @A_COND_EQ, align 4
  %57 = load i32, i32* @SSP_PMC, align 4
  %58 = mul nsw i32 %57, 4
  %59 = call i32 @EOP_C_AM3_IMM(i32 %56, i32 1, i32 0, i32 2, i32 0, i32 0, i32 1, i32 %58)
  %60 = load i32, i32* @A_COND_NE, align 4
  %61 = load i32, i32* @SSP_PMC, align 4
  %62 = mul nsw i32 %61, 4
  %63 = add nsw i32 %62, 2
  %64 = call i32 @EOP_C_AM3_IMM(i32 %60, i32 1, i32 0, i32 2, i32 0, i32 0, i32 1, i32 %63)
  %65 = load i32, i32* @A_COND_EQ, align 4
  %66 = load i32, i32* @A_OP_ORR, align 4
  %67 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %68 = call i32 @EOP_C_DOP_IMM(i32 %65, i32 %66, i32 0, i32 1, i32 1, i32 0, i32 %67)
  %69 = load i32, i32* @A_COND_NE, align 4
  %70 = load i32, i32* @A_OP_BIC, align 4
  %71 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %72 = call i32 @EOP_C_DOP_IMM(i32 %69, i32 %70, i32 0, i32 1, i32 1, i32 0, i32 %71)
  %73 = load i32, i32* @A_COND_NE, align 4
  %74 = load i32, i32* @A_OP_ORR, align 4
  %75 = load i32, i32* @SSP_PMC_SET, align 4
  %76 = call i32 @EOP_C_DOP_IMM(i32 %73, i32 %74, i32 0, i32 1, i32 1, i32 0, i32 %75)
  %77 = call i32 @EOP_STR_IMM(i32 1, i32 7, i32 1156)
  %78 = load i32*, i32** @hostreg_r, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32 -1, i32* %79, align 4
  %80 = load i32*, i32** @hostreg_r, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 -1, i32* %81, align 4
  br label %82

82:                                               ; preds = %51, %29
  ret void
}

declare dso_local i32 @tr_flush_dirty_ST(...) #1

declare dso_local i32 @emith_move_r_imm(i32, i32) #1

declare dso_local i32 @EOP_STR_IMM(i32, i32, i32) #1

declare dso_local i32 @EOP_LDR_IMM(i32, i32, i32) #1

declare dso_local i32 @EOP_ADD_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_TST_IMM(i32, i32, i32) #1

declare dso_local i32 @EOP_C_AM3_IMM(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EOP_C_DOP_IMM(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
