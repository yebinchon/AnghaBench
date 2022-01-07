; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_r0_to_PMX.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_r0_to_PMX.c"
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
@hostreg_r = common dso_local global i32* null, align 8
@ssp_pm_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tr_r0_to_PMX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_r0_to_PMX(i32 %0) #0 {
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
  %27 = add nsw i32 25, %26
  %28 = shl i32 1, %27
  %29 = load i32, i32* @known_regb, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* @known_regb, align 4
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 25, %31
  %33 = shl i32 1, %32
  %34 = load i32, i32* @dirty_regb, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @dirty_regb, align 4
  br label %187

36:                                               ; preds = %11, %1
  %37 = load i32, i32* @known_regb, align 4
  %38 = load i32, i32* @KRREG_PMC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %160

41:                                               ; preds = %36
  %42 = load i32, i32* @known_regb, align 4
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 25, %43
  %45 = shl i32 1, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %160

48:                                               ; preds = %41
  %49 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %52 = and i32 %51, %50
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 16
  store i32 %58, i32* %3, align 4
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 65535
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 17407
  %67 = icmp eq i32 %66, 24
  br i1 %67, label %68, label %89

68:                                               ; preds = %48
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @get_inc(i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %3, align 4
  %72 = and i32 %71, 1024
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 (...) @tr_unhandled()
  br label %76

76:                                               ; preds = %74, %68
  %77 = call i32 @EOP_LDR_IMM(i32 1, i32 7, i32 1168)
  %78 = load i32, i32* %4, align 4
  %79 = shl i32 %78, 1
  %80 = call i32 @emith_move_r_imm(i32 2, i32 %79)
  %81 = call i32 @EOP_STRH_REG(i32 0, i32 1, i32 2)
  %82 = load i32, i32* %5, align 4
  %83 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %82
  store i32 %88, i32* %86, align 4
  br label %142

89:                                               ; preds = %48
  %90 = load i32, i32* %3, align 4
  %91 = and i32 %90, 64511
  %92 = icmp eq i32 %91, 16408
  br i1 %92, label %93, label %116

93:                                               ; preds = %89
  %94 = load i32, i32* %3, align 4
  %95 = and i32 %94, 1024
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 (...) @tr_unhandled()
  br label %99

99:                                               ; preds = %97, %93
  %100 = call i32 @EOP_LDR_IMM(i32 1, i32 7, i32 1168)
  %101 = load i32, i32* %4, align 4
  %102 = shl i32 %101, 1
  %103 = call i32 @emith_move_r_imm(i32 2, i32 %102)
  %104 = call i32 @EOP_STRH_REG(i32 0, i32 1, i32 2)
  %105 = load i32, i32* %4, align 4
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 31, i32 1
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %109
  store i32 %115, i32* %113, align 4
  br label %141

116:                                              ; preds = %89
  %117 = load i32, i32* %3, align 4
  %118 = and i32 %117, 18431
  %119 = icmp eq i32 %118, 28
  br i1 %119, label %120, label %138

120:                                              ; preds = %116
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @get_inc(i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = call i32 @EOP_LDR_IMM(i32 1, i32 7, i32 1164)
  %124 = load i32, i32* %4, align 4
  %125 = and i32 %124, 1023
  %126 = shl i32 %125, 1
  %127 = call i32 @emith_move_r_imm(i32 2, i32 %126)
  %128 = call i32 @EOP_STRH_REG(i32 0, i32 1, i32 2)
  %129 = call i32 @EOP_MOV_IMM(i32 1, i32 0, i32 1)
  %130 = call i32 @EOP_STR_IMM(i32 1, i32 7, i32 1172)
  %131 = load i32, i32* %6, align 4
  %132 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %131
  store i32 %137, i32* %135, align 4
  br label %140

138:                                              ; preds = %116
  %139 = call i32 (...) @tr_unhandled()
  br label %140

140:                                              ; preds = %138, %120
  br label %141

141:                                              ; preds = %140, %99
  br label %142

142:                                              ; preds = %141, %76
  %143 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %144 = load i32, i32* %2, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 2, i32 0), align 8
  %148 = load i32, i32* @KRREG_PMC, align 4
  %149 = load i32, i32* @dirty_regb, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* @dirty_regb, align 4
  %151 = load i32, i32* %2, align 4
  %152 = add nsw i32 25, %151
  %153 = shl i32 1, %152
  %154 = load i32, i32* @dirty_regb, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* @dirty_regb, align 4
  %156 = load i32*, i32** @hostreg_r, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  store i32 -1, i32* %157, align 4
  %158 = load i32*, i32** @hostreg_r, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  store i32 -1, i32* %159, align 4
  br label %187

160:                                              ; preds = %41, %36
  %161 = load i32, i32* @KRREG_PMC, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* @known_regb, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* @known_regb, align 4
  %165 = load i32, i32* @KRREG_PMC, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* @dirty_regb, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* @dirty_regb, align 4
  %169 = load i32, i32* %2, align 4
  %170 = add nsw i32 25, %169
  %171 = shl i32 1, %170
  %172 = xor i32 %171, -1
  %173 = load i32, i32* @known_regb, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* @known_regb, align 4
  %175 = load i32, i32* %2, align 4
  %176 = add nsw i32 25, %175
  %177 = shl i32 1, %176
  %178 = xor i32 %177, -1
  %179 = load i32, i32* @dirty_regb, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* @dirty_regb, align 4
  %181 = call i32 (...) @tr_flush_dirty_ST()
  %182 = load i32, i32* %2, align 4
  %183 = call i32 @tr_mov16(i32 1, i32 %182)
  %184 = load i32, i32* @ssp_pm_write, align 4
  %185 = call i32 @emith_call_c_func(i32 %184)
  %186 = call i32 (...) @hostreg_clear()
  br label %187

187:                                              ; preds = %160, %142, %16
  ret void
}

declare dso_local i32 @get_inc(i32) #1

declare dso_local i32 @tr_unhandled(...) #1

declare dso_local i32 @EOP_LDR_IMM(i32, i32, i32) #1

declare dso_local i32 @emith_move_r_imm(i32, i32) #1

declare dso_local i32 @EOP_STRH_REG(i32, i32, i32) #1

declare dso_local i32 @EOP_MOV_IMM(i32, i32, i32) #1

declare dso_local i32 @EOP_STR_IMM(i32, i32, i32) #1

declare dso_local i32 @tr_flush_dirty_ST(...) #1

declare dso_local i32 @tr_mov16(i32, i32) #1

declare dso_local i32 @emith_call_c_func(i32) #1

declare dso_local i32 @hostreg_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
