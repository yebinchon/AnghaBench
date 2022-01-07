; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_ptrr_mod.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_ptrr_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@known_regb = common dso_local global i32 0, align 4
@KRREG_ST = common dso_local global i32 0, align 4
@known_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SSP_ST = common dso_local global i64 0, align 8
@dirty_regb = common dso_local global i32 0, align 4
@A_COND_AL = common dso_local global i32 0, align 4
@A_OP_AND = common dso_local global i32 0, align 4
@A_COND_EQ = common dso_local global i32 0, align 4
@A_OP_MOV = common dso_local global i32 0, align 4
@hostreg_r = common dso_local global i32* null, align 8
@A_OP_SUB = common dso_local global i32 0, align 4
@A_OP_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @tr_ptrr_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_ptrr_mod(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %206

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17
  store i32 8, i32* %9, align 4
  br label %44

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32, i32* @known_regb, align 4
  %29 = load i32, i32* @KRREG_ST, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 1), align 8
  %34 = load i64, i64* @SSP_ST, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 7
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 8, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %32
  br label %43

43:                                               ; preds = %42, %27, %24
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %108

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 4
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 8, i32 9
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @tr_release_pr(i32 %52)
  %54 = load i32, i32* @dirty_regb, align 4
  %55 = load i32, i32* @KRREG_ST, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = call i32 @EOP_AND_IMM(i32 1, i32 6, i32 0, i32 112)
  %60 = call i32 @EOP_SUB_IMM(i32 1, i32 1, i32 0, i32 16)
  %61 = call i32 @EOP_AND_IMM(i32 1, i32 1, i32 0, i32 112)
  %62 = call i32 @EOP_ADD_IMM(i32 1, i32 1, i32 0, i32 16)
  br label %70

63:                                               ; preds = %47
  %64 = load i32, i32* @A_COND_AL, align 4
  %65 = load i32, i32* @A_OP_AND, align 4
  %66 = call i32 @EOP_C_DOP_IMM(i32 %64, i32 %65, i32 1, i32 6, i32 1, i32 0, i32 112)
  %67 = load i32, i32* @A_COND_EQ, align 4
  %68 = load i32, i32* @A_OP_MOV, align 4
  %69 = call i32 @EOP_C_DOP_IMM(i32 %67, i32 %68, i32 0, i32 0, i32 1, i32 0, i32 128)
  br label %70

70:                                               ; preds = %63, %58
  %71 = call i32 @EOP_MOV_REG_LSR(i32 1, i32 1, i32 4)
  %72 = call i32 @EOP_RSB_IMM(i32 2, i32 1, i32 0, i32 8)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @EOP_MOV_IMM(i32 3, i32 4, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 3
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, 3
  %81 = mul nsw i32 %80, 8
  %82 = call i32 @EOP_ADD_IMM(i32 1, i32 1, i32 0, i32 %81)
  br label %83

83:                                               ; preds = %78, %70
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @EOP_MOV_REG2_ROR(i32 %84, i32 %85, i32 1)
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @EOP_SUB_REG2_LSL(i32 %90, i32 %91, i32 3, i32 2)
  br label %97

93:                                               ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @EOP_ADD_REG2_LSL(i32 %94, i32 %95, i32 3, i32 2)
  br label %97

97:                                               ; preds = %93, %89
  %98 = call i32 @EOP_RSB_IMM(i32 1, i32 1, i32 0, i32 32)
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @EOP_MOV_REG2_ROR(i32 %99, i32 %100, i32 1)
  %102 = load i32*, i32** @hostreg_r, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  store i32 -1, i32* %103, align 4
  %104 = load i32*, i32** @hostreg_r, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32 -1, i32* %105, align 4
  %106 = load i32*, i32** @hostreg_r, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 -1, i32* %107, align 4
  br label %206

108:                                              ; preds = %44
  %109 = load i32, i32* @known_regb, align 4
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 8
  %112 = shl i32 1, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %168

115:                                              ; preds = %108
  %116 = load i32, i32* %9, align 4
  %117 = shl i32 1, %116
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %144

121:                                              ; preds = %115
  %122 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  %130 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load i32, i32* %11, align 4
  %138 = and i32 %136, %137
  %139 = or i32 %129, %138
  %140 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  br label %167

144:                                              ; preds = %115
  %145 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %11, align 4
  %151 = xor i32 %150, -1
  %152 = and i32 %149, %151
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32, i32* %11, align 4
  %161 = and i32 %159, %160
  %162 = or i32 %152, %161
  %163 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %162, i32* %166, align 4
  br label %167

167:                                              ; preds = %144, %121
  br label %205

168:                                              ; preds = %108
  %169 = load i32, i32* %5, align 4
  %170 = icmp slt i32 %169, 4
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 8, i32 9
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %5, align 4
  %174 = and i32 %173, 3
  %175 = add nsw i32 %174, 1
  %176 = mul nsw i32 %175, 8
  %177 = load i32, i32* %9, align 4
  %178 = sub nsw i32 8, %177
  %179 = sub nsw i32 %176, %178
  store i32 %179, i32* %13, align 4
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @EOP_MOV_REG_ROR(i32 %180, i32 %181, i32 %182)
  %184 = load i32, i32* @A_COND_AL, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %187, label %189

187:                                              ; preds = %168
  %188 = load i32, i32* @A_OP_SUB, align 4
  br label %191

189:                                              ; preds = %168
  %190 = load i32, i32* @A_OP_ADD, align 4
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i32 [ %188, %187 ], [ %190, %189 ]
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %9, align 4
  %197 = sub nsw i32 8, %196
  %198 = shl i32 %195, %197
  %199 = call i32 @EOP_C_DOP_IMM(i32 %184, i32 %192, i32 0, i32 %193, i32 %194, i32 4, i32 %198)
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %13, align 4
  %203 = sub nsw i32 32, %202
  %204 = call i32 @EOP_MOV_REG_ROR(i32 %200, i32 %201, i32 %203)
  br label %205

205:                                              ; preds = %191, %167
  br label %206

206:                                              ; preds = %16, %205, %97
  ret void
}

declare dso_local i32 @tr_release_pr(i32) #1

declare dso_local i32 @EOP_AND_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_SUB_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_ADD_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_C_DOP_IMM(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EOP_MOV_REG_LSR(i32, i32, i32) #1

declare dso_local i32 @EOP_RSB_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_MOV_IMM(i32, i32, i32) #1

declare dso_local i32 @EOP_MOV_REG2_ROR(i32, i32, i32) #1

declare dso_local i32 @EOP_SUB_REG2_LSL(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_ADD_REG2_LSL(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_MOV_REG_ROR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
