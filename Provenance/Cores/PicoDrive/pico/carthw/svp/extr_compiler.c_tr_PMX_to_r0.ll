; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_PMX_to_r0.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_PMX_to_r0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@known_regb = common dso_local global i32 0, align 4
@KRREG_PMC = common dso_local global i32 0, align 4
@known_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SSP_PMC_SET = common dso_local global i32 0, align 4
@dirty_regb = common dso_local global i32 0, align 4
@SSP_PMC_HAVE_ADDR = common dso_local global i32 0, align 4
@SSP_WAIT_30FE06 = common dso_local global i32 0, align 4
@SSP_WAIT_30FE08 = common dso_local global i32 0, align 4
@A_COND_EQ = common dso_local global i32 0, align 4
@A_OP_SUB = common dso_local global i32 0, align 4
@A_OP_ORR = common dso_local global i32 0, align 4
@hostreg_r = common dso_local global i32* null, align 8
@ssp_pm_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tr_PMX_to_r0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_PMX_to_r0(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @known_regb, align 4
  %8 = load i32, i32* @KRREG_PMC, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %13 = load i32, i32* @SSP_PMC_SET, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 2, i32 0), align 8
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @SSP_PMC_SET, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %25 = and i32 %24, %23
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 20, %26
  %28 = shl i32 1, %27
  %29 = load i32, i32* @known_regb, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* @known_regb, align 4
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 20, %31
  %33 = shl i32 1, %32
  %34 = load i32, i32* @dirty_regb, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @dirty_regb, align 4
  br label %174

36:                                               ; preds = %11, %1
  %37 = load i32, i32* @known_regb, align 4
  %38 = load i32, i32* @KRREG_PMC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %147

41:                                               ; preds = %36
  %42 = load i32, i32* @known_regb, align 4
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 20, %43
  %45 = shl i32 1, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %147

48:                                               ; preds = %41
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = ashr i32 %54, 16
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %59 = and i32 %58, %57
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, 65520
  %62 = icmp eq i32 %61, 2048
  br i1 %62, label %63, label %76

63:                                               ; preds = %48
  %64 = call i32 @EOP_LDR_IMM(i32 1, i32 7, i32 1160)
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 1048575
  %67 = shl i32 %66, 1
  %68 = call i32 @emith_move_r_imm(i32 0, i32 %67)
  %69 = call i32 @EOP_LDRH_REG(i32 0, i32 1, i32 0)
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %129

76:                                               ; preds = %48
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, 18431
  %79 = icmp eq i32 %78, 24
  br i1 %79, label %80, label %126

80:                                               ; preds = %76
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @get_inc(i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = call i32 @EOP_LDR_IMM(i32 1, i32 7, i32 1168)
  %84 = load i32, i32* %3, align 4
  %85 = and i32 %84, 65535
  %86 = shl i32 %85, 1
  %87 = call i32 @emith_move_r_imm(i32 0, i32 %86)
  %88 = call i32 @EOP_LDRH_REG(i32 0, i32 1, i32 0)
  %89 = load i32, i32* %2, align 4
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %91, label %118

91:                                               ; preds = %80
  %92 = load i32, i32* %3, align 4
  %93 = icmp eq i32 %92, 1605379
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %3, align 4
  %96 = icmp eq i32 %95, 1605380
  br i1 %96, label %97, label %118

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %3, align 4
  %99 = icmp eq i32 %98, 1605379
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @SSP_WAIT_30FE06, align 4
  br label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @SSP_WAIT_30FE08, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  store i32 %105, i32* %6, align 4
  %106 = call i32 (...) @tr_flush_dirty_ST()
  %107 = call i32 @EOP_LDR_IMM(i32 1, i32 7, i32 1156)
  %108 = call i32 @EOP_TST_REG_SIMPLE(i32 0, i32 0)
  %109 = load i32, i32* @A_COND_EQ, align 4
  %110 = load i32, i32* @A_OP_SUB, align 4
  %111 = call i32 @EOP_C_DOP_IMM(i32 %109, i32 %110, i32 0, i32 11, i32 11, i32 11, i32 1)
  %112 = load i32, i32* @A_COND_EQ, align 4
  %113 = load i32, i32* @A_OP_ORR, align 4
  %114 = load i32, i32* %6, align 4
  %115 = ashr i32 %114, 8
  %116 = call i32 @EOP_C_DOP_IMM(i32 %112, i32 %113, i32 0, i32 1, i32 1, i32 12, i32 %115)
  %117 = call i32 @EOP_STR_IMM(i32 1, i32 7, i32 1156)
  br label %118

118:                                              ; preds = %104, %94, %80
  %119 = load i32, i32* %5, align 4
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %119
  store i32 %125, i32* %123, align 4
  br label %128

126:                                              ; preds = %76
  %127 = call i32 (...) @tr_unhandled()
  br label %128

128:                                              ; preds = %126, %118
  br label %129

129:                                              ; preds = %128, %63
  %130 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %131 = load i32, i32* %2, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 2, i32 0), align 8
  %135 = load i32, i32* @KRREG_PMC, align 4
  %136 = load i32, i32* @dirty_regb, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* @dirty_regb, align 4
  %138 = load i32, i32* %2, align 4
  %139 = add nsw i32 20, %138
  %140 = shl i32 1, %139
  %141 = load i32, i32* @dirty_regb, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* @dirty_regb, align 4
  %143 = load i32*, i32** @hostreg_r, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 -1, i32* %144, align 4
  %145 = load i32*, i32** @hostreg_r, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 -1, i32* %146, align 4
  br label %174

147:                                              ; preds = %41, %36
  %148 = load i32, i32* @KRREG_PMC, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* @known_regb, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* @known_regb, align 4
  %152 = load i32, i32* @KRREG_PMC, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* @dirty_regb, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* @dirty_regb, align 4
  %156 = load i32, i32* %2, align 4
  %157 = add nsw i32 20, %156
  %158 = shl i32 1, %157
  %159 = xor i32 %158, -1
  %160 = load i32, i32* @known_regb, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* @known_regb, align 4
  %162 = load i32, i32* %2, align 4
  %163 = add nsw i32 20, %162
  %164 = shl i32 1, %163
  %165 = xor i32 %164, -1
  %166 = load i32, i32* @dirty_regb, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* @dirty_regb, align 4
  %168 = call i32 (...) @tr_flush_dirty_ST()
  %169 = load i32, i32* %2, align 4
  %170 = call i32 @tr_mov16(i32 0, i32 %169)
  %171 = load i32, i32* @ssp_pm_read, align 4
  %172 = call i32 @emith_call_c_func(i32 %171)
  %173 = call i32 (...) @hostreg_clear()
  br label %174

174:                                              ; preds = %147, %129, %16
  ret void
}

declare dso_local i32 @EOP_LDR_IMM(i32, i32, i32) #1

declare dso_local i32 @emith_move_r_imm(i32, i32) #1

declare dso_local i32 @EOP_LDRH_REG(i32, i32, i32) #1

declare dso_local i32 @get_inc(i32) #1

declare dso_local i32 @tr_flush_dirty_ST(...) #1

declare dso_local i32 @EOP_TST_REG_SIMPLE(i32, i32) #1

declare dso_local i32 @EOP_C_DOP_IMM(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EOP_STR_IMM(i32, i32, i32) #1

declare dso_local i32 @tr_unhandled(...) #1

declare dso_local i32 @tr_mov16(i32, i32) #1

declare dso_local i32 @emith_call_c_func(i32) #1

declare dso_local i32 @hostreg_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
