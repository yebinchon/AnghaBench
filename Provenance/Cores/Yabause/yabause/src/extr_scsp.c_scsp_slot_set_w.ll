; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_slot_set_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_slot_set_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32 }

@scsp = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"slot %d : reg %.2X = %.4X\0A\00", align 1
@scsp_isr = common dso_local global i32* null, align 8
@SCSP_RAM_MASK = common dso_local global i32 0, align 4
@SCSP_ENV_DE = common dso_local global i32 0, align 4
@SCSP_FREQ_LB = common dso_local global i32 0, align 4
@scsp_decay_rate = common dso_local global i32* null, align 8
@scsp_null_rate = common dso_local global i32* null, align 8
@scsp_attack_rate = common dso_local global i32* null, align 8
@SCSP_ENV_LB = common dso_local global i32 0, align 4
@SCSP_ENV_DS = common dso_local global i32 0, align 4
@scsp_tl_table = common dso_local global i32* null, align 8
@scsp_lfo_step = common dso_local global i32* null, align 8
@scsp_lfo_sawt_f = common dso_local global i32 0, align 4
@scsp_lfo_squa_f = common dso_local global i32 0, align 4
@scsp_lfo_tri_f = common dso_local global i32 0, align 4
@scsp_lfo_noi_f = common dso_local global i32 0, align 4
@scsp_lfo_sawt_e = common dso_local global i32 0, align 4
@scsp_lfo_squa_e = common dso_local global i32 0, align 4
@scsp_lfo_tri_e = common dso_local global i32 0, align 4
@scsp_lfo_noi_e = common dso_local global i32 0, align 4
@SCSP_ENV_HB = common dso_local global i32 0, align 4
@new_scsp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @scsp_slot_set_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsp_slot_set_w(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 0), align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 %9
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %7, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 30
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @SCSPLOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** @scsp_isr, align 8
  %18 = load i32, i32* %5, align 4
  %19 = xor i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32 %16, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 30
  switch i32 %23, label %542 [
    i32 0, label %24
    i32 2, label %79
    i32 4, label %102
    i32 6, label %108
    i32 8, label %114
    i32 10, label %195
    i32 12, label %253
    i32 14, label %272
    i32 16, label %287
    i32 18, label %318
    i32 20, label %413
    i32 22, label %429
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 11
  %27 = and i32 %26, 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 9
  %32 = and i32 %31, 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 7
  %37 = and i32 %36, 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 5
  %42 = and i32 %41, 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 16
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 65535
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 15
  %55 = shl i32 %54, 16
  %56 = or i32 %52, %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @SCSP_RAM_MASK, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 39
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SCSP_ENV_DE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %24
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = call i32 @scsp_slot_update_keyon(%struct.TYPE_5__* %70)
  br label %72

72:                                               ; preds = %69, %24
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 4096
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 (...) @scsp_slot_keyonoff()
  br label %78

78:                                               ; preds = %76, %72
  br label %542

79:                                               ; preds = %3
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 983040
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @SCSP_RAM_MASK, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 39
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SCSP_ENV_DE, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %79
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = call i32 @scsp_slot_update_keyon(%struct.TYPE_5__* %99)
  br label %101

101:                                              ; preds = %98, %79
  br label %542

102:                                              ; preds = %3
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @SCSP_FREQ_LB, align 4
  %105 = shl i32 %103, %104
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  br label %542

108:                                              ; preds = %3
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @SCSP_FREQ_LB, align 4
  %111 = shl i32 %109, %110
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 4
  br label %542

114:                                              ; preds = %3
  %115 = load i32, i32* %6, align 4
  %116 = ashr i32 %115, 11
  %117 = and i32 %116, 31
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 8
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %6, align 4
  %121 = ashr i32 %120, 6
  %122 = and i32 %121, 31
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 9
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, 32
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 10
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %6, align 4
  %130 = and i32 %129, 31
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 11
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %114
  %138 = load i32*, i32** @scsp_decay_rate, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = shl i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %138, i64 %143
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 38
  store i32* %144, i32** %146, align 8
  br label %152

147:                                              ; preds = %114
  %148 = load i32*, i32** @scsp_null_rate, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 38
  store i32* %149, i32** %151, align 8
  br label %152

152:                                              ; preds = %147, %137
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %152
  %158 = load i32*, i32** @scsp_decay_rate, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %158, i64 %163
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 37
  store i32* %164, i32** %166, align 8
  br label %172

167:                                              ; preds = %152
  %168 = load i32*, i32** @scsp_null_rate, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 37
  store i32* %169, i32** %171, align 8
  br label %172

172:                                              ; preds = %167, %157
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 11
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %172
  %178 = load i32*, i32** @scsp_attack_rate, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 11
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %178, i64 %183
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 36
  store i32* %184, i32** %186, align 8
  br label %192

187:                                              ; preds = %172
  %188 = load i32*, i32** @scsp_null_rate, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 36
  store i32* %189, i32** %191, align 8
  br label %192

192:                                              ; preds = %187, %177
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %194 = call i32 @scsp_slot_refresh_einc(%struct.TYPE_5__* %193, i32 7)
  br label %542

195:                                              ; preds = %3
  %196 = load i32, i32* %6, align 4
  %197 = ashr i32 %196, 8
  %198 = and i32 %197, 64
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 12
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* %6, align 4
  %202 = ashr i32 %201, 10
  %203 = and i32 %202, 15
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 13
  store i32 %203, i32* %205, align 4
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 13
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 15
  br i1 %209, label %210, label %213

210:                                              ; preds = %195
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 13
  store i32 4, i32* %212, align 4
  br label %218

213:                                              ; preds = %195
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 13
  %216 = load i32, i32* %215, align 4
  %217 = ashr i32 %216, 2
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %213, %210
  %219 = load i32, i32* %6, align 4
  %220 = and i32 %219, 992
  %221 = load i32, i32* @SCSP_ENV_LB, align 4
  %222 = shl i32 %220, %221
  %223 = load i32, i32* @SCSP_ENV_DS, align 4
  %224 = add nsw i32 %222, %223
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 14
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* %6, align 4
  %228 = and i32 %227, 31
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 15
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 15
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %218
  %236 = load i32*, i32** @scsp_decay_rate, align 8
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 15
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %236, i64 %241
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 35
  store i32* %242, i32** %244, align 8
  br label %250

245:                                              ; preds = %218
  %246 = load i32*, i32** @scsp_null_rate, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 35
  store i32* %247, i32** %249, align 8
  br label %250

250:                                              ; preds = %245, %235
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %252 = call i32 @scsp_slot_refresh_einc(%struct.TYPE_5__* %251, i32 15)
  br label %542

253:                                              ; preds = %3
  %254 = load i32, i32* %6, align 4
  %255 = ashr i32 %254, 8
  %256 = and i32 %255, 2
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 16
  store i32 %256, i32* %258, align 8
  %259 = load i32, i32* %6, align 4
  %260 = ashr i32 %259, 8
  %261 = and i32 %260, 1
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 17
  store i32 %261, i32* %263, align 4
  %264 = load i32*, i32** @scsp_tl_table, align 8
  %265 = load i32, i32* %6, align 4
  %266 = and i32 %265, 255
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 34
  store i32 %269, i32* %271, align 8
  br label %542

272:                                              ; preds = %3
  %273 = load i32, i32* %6, align 4
  %274 = ashr i32 %273, 12
  %275 = and i32 %274, 15
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 18
  store i32 %275, i32* %277, align 8
  %278 = load i32, i32* %6, align 4
  %279 = ashr i32 %278, 6
  %280 = and i32 %279, 63
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 19
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* %6, align 4
  %284 = and i32 %283, 63
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 20
  store i32 %284, i32* %286, align 8
  br label %542

287:                                              ; preds = %3
  %288 = load i32, i32* %6, align 4
  %289 = and i32 %288, 16384
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %287
  %292 = load i32, i32* %6, align 4
  %293 = ashr i32 %292, 11
  %294 = and i32 %293, 15
  %295 = sub nsw i32 23, %294
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 21
  store i32 %295, i32* %297, align 4
  br label %305

298:                                              ; preds = %287
  %299 = load i32, i32* %6, align 4
  %300 = ashr i32 %299, 11
  %301 = and i32 %300, 7
  %302 = xor i32 %301, 7
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 21
  store i32 %302, i32* %304, align 4
  br label %305

305:                                              ; preds = %298, %291
  %306 = load i32, i32* %6, align 4
  %307 = and i32 %306, 1023
  %308 = add nsw i32 1024, %307
  %309 = shl i32 %308, 7
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 21
  %312 = load i32, i32* %311, align 4
  %313 = ashr i32 %309, %312
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 22
  store i32 %313, i32* %315, align 8
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %317 = call i32 @scsp_slot_refresh_einc(%struct.TYPE_5__* %316, i32 15)
  br label %542

318:                                              ; preds = %3
  %319 = load i32, i32* %6, align 4
  %320 = and i32 %319, 32768
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %318
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 23
  store i32 -1, i32* %324, align 4
  br label %542

325:                                              ; preds = %318
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 23
  %328 = load i32, i32* %327, align 4
  %329 = icmp eq i32 %328, -1
  br i1 %329, label %330, label %333

330:                                              ; preds = %325
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 33
  store i32 0, i32* %332, align 4
  br label %333

333:                                              ; preds = %330, %325
  br label %334

334:                                              ; preds = %333
  %335 = load i32*, i32** @scsp_lfo_step, align 8
  %336 = load i32, i32* %6, align 4
  %337 = ashr i32 %336, 10
  %338 = and i32 %337, 31
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %335, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 23
  store i32 %341, i32* %343, align 4
  %344 = load i32, i32* %6, align 4
  %345 = ashr i32 %344, 5
  %346 = and i32 %345, 7
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %334
  %349 = load i32, i32* %6, align 4
  %350 = ashr i32 %349, 5
  %351 = and i32 %350, 7
  %352 = add nsw i32 %351, 7
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 24
  store i32 %352, i32* %354, align 8
  br label %358

355:                                              ; preds = %334
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 24
  store i32 31, i32* %357, align 8
  br label %358

358:                                              ; preds = %355, %348
  %359 = load i32, i32* %6, align 4
  %360 = and i32 %359, 7
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %369

362:                                              ; preds = %358
  %363 = load i32, i32* %6, align 4
  %364 = and i32 %363, 7
  %365 = xor i32 %364, 7
  %366 = add nsw i32 %365, 4
  %367 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 25
  store i32 %366, i32* %368, align 4
  br label %372

369:                                              ; preds = %358
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 25
  store i32 31, i32* %371, align 4
  br label %372

372:                                              ; preds = %369, %362
  %373 = load i32, i32* %6, align 4
  %374 = ashr i32 %373, 8
  %375 = and i32 %374, 3
  switch i32 %375, label %392 [
    i32 0, label %376
    i32 1, label %380
    i32 2, label %384
    i32 3, label %388
  ]

376:                                              ; preds = %372
  %377 = load i32, i32* @scsp_lfo_sawt_f, align 4
  %378 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 32
  store i32 %377, i32* %379, align 8
  br label %392

380:                                              ; preds = %372
  %381 = load i32, i32* @scsp_lfo_squa_f, align 4
  %382 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 32
  store i32 %381, i32* %383, align 8
  br label %392

384:                                              ; preds = %372
  %385 = load i32, i32* @scsp_lfo_tri_f, align 4
  %386 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 32
  store i32 %385, i32* %387, align 8
  br label %392

388:                                              ; preds = %372
  %389 = load i32, i32* @scsp_lfo_noi_f, align 4
  %390 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %390, i32 0, i32 32
  store i32 %389, i32* %391, align 8
  br label %392

392:                                              ; preds = %372, %388, %384, %380, %376
  %393 = load i32, i32* %6, align 4
  %394 = ashr i32 %393, 3
  %395 = and i32 %394, 3
  switch i32 %395, label %412 [
    i32 0, label %396
    i32 1, label %400
    i32 2, label %404
    i32 3, label %408
  ]

396:                                              ; preds = %392
  %397 = load i32, i32* @scsp_lfo_sawt_e, align 4
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 31
  store i32 %397, i32* %399, align 4
  br label %542

400:                                              ; preds = %392
  %401 = load i32, i32* @scsp_lfo_squa_e, align 4
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 31
  store i32 %401, i32* %403, align 4
  br label %542

404:                                              ; preds = %392
  %405 = load i32, i32* @scsp_lfo_tri_e, align 4
  %406 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 31
  store i32 %405, i32* %407, align 4
  br label %542

408:                                              ; preds = %392
  %409 = load i32, i32* @scsp_lfo_noi_e, align 4
  %410 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 31
  store i32 %409, i32* %411, align 4
  br label %412

412:                                              ; preds = %408, %392
  br label %542

413:                                              ; preds = %3
  %414 = load i32, i32* %6, align 4
  %415 = and i32 %414, 7
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %425

417:                                              ; preds = %413
  %418 = load i32, i32* %6, align 4
  %419 = and i32 %418, 7
  %420 = xor i32 %419, 7
  %421 = load i32, i32* @SCSP_ENV_HB, align 4
  %422 = add nsw i32 %420, %421
  %423 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 26
  store i32 %422, i32* %424, align 8
  br label %428

425:                                              ; preds = %413
  %426 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i32 0, i32 26
  store i32 31, i32* %427, align 8
  br label %428

428:                                              ; preds = %425, %417
  br label %542

429:                                              ; preds = %3
  %430 = load i32, i32* %6, align 4
  %431 = and i32 %430, 57344
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %480

433:                                              ; preds = %429
  %434 = load i32, i32* %6, align 4
  %435 = ashr i32 %434, 13
  %436 = and i32 %435, 7
  %437 = xor i32 %436, 7
  %438 = load i32, i32* @SCSP_ENV_HB, align 4
  %439 = add nsw i32 %437, %438
  %440 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 28
  store i32 %439, i32* %441, align 8
  %442 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %443 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i32 0, i32 27
  store i32 %439, i32* %443, align 4
  %444 = load i32, i32* %6, align 4
  %445 = and i32 %444, 4096
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %463

447:                                              ; preds = %433
  %448 = load i32, i32* %6, align 4
  %449 = and i32 %448, 3840
  %450 = icmp eq i32 %449, 3840
  br i1 %450, label %451, label %454

451:                                              ; preds = %447
  %452 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %453 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %452, i32 0, i32 27
  store i32 31, i32* %453, align 4
  br label %462

454:                                              ; preds = %447
  %455 = load i32, i32* %6, align 4
  %456 = ashr i32 %455, 9
  %457 = and i32 %456, 7
  %458 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %458, i32 0, i32 27
  %460 = load i32, i32* %459, align 4
  %461 = add nsw i32 %460, %457
  store i32 %461, i32* %459, align 4
  br label %462

462:                                              ; preds = %454, %451
  br label %479

463:                                              ; preds = %433
  %464 = load i32, i32* %6, align 4
  %465 = and i32 %464, 3840
  %466 = icmp eq i32 %465, 3840
  br i1 %466, label %467, label %470

467:                                              ; preds = %463
  %468 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %468, i32 0, i32 28
  store i32 31, i32* %469, align 8
  br label %478

470:                                              ; preds = %463
  %471 = load i32, i32* %6, align 4
  %472 = ashr i32 %471, 9
  %473 = and i32 %472, 7
  %474 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %475 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %474, i32 0, i32 28
  %476 = load i32, i32* %475, align 8
  %477 = add nsw i32 %476, %473
  store i32 %477, i32* %475, align 8
  br label %478

478:                                              ; preds = %470, %467
  br label %479

479:                                              ; preds = %478, %462
  br label %485

480:                                              ; preds = %429
  %481 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %482 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %481, i32 0, i32 28
  store i32 31, i32* %482, align 8
  %483 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %483, i32 0, i32 27
  store i32 31, i32* %484, align 4
  br label %485

485:                                              ; preds = %480, %479
  %486 = load i32, i32* %6, align 4
  %487 = and i32 %486, 224
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %536

489:                                              ; preds = %485
  %490 = load i32, i32* %6, align 4
  %491 = ashr i32 %490, 5
  %492 = and i32 %491, 7
  %493 = xor i32 %492, 7
  %494 = load i32, i32* @SCSP_ENV_HB, align 4
  %495 = add nsw i32 %493, %494
  %496 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %497 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %496, i32 0, i32 30
  store i32 %495, i32* %497, align 8
  %498 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %499 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %498, i32 0, i32 29
  store i32 %495, i32* %499, align 4
  %500 = load i32, i32* %6, align 4
  %501 = and i32 %500, 16
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %519

503:                                              ; preds = %489
  %504 = load i32, i32* %6, align 4
  %505 = and i32 %504, 15
  %506 = icmp eq i32 %505, 15
  br i1 %506, label %507, label %510

507:                                              ; preds = %503
  %508 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %509 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %508, i32 0, i32 29
  store i32 31, i32* %509, align 4
  br label %518

510:                                              ; preds = %503
  %511 = load i32, i32* %6, align 4
  %512 = ashr i32 %511, 1
  %513 = and i32 %512, 7
  %514 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %515 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %514, i32 0, i32 29
  %516 = load i32, i32* %515, align 4
  %517 = add nsw i32 %516, %513
  store i32 %517, i32* %515, align 4
  br label %518

518:                                              ; preds = %510, %507
  br label %535

519:                                              ; preds = %489
  %520 = load i32, i32* %6, align 4
  %521 = and i32 %520, 15
  %522 = icmp eq i32 %521, 15
  br i1 %522, label %523, label %526

523:                                              ; preds = %519
  %524 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %525 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %524, i32 0, i32 30
  store i32 31, i32* %525, align 8
  br label %534

526:                                              ; preds = %519
  %527 = load i32, i32* %6, align 4
  %528 = ashr i32 %527, 1
  %529 = and i32 %528, 7
  %530 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %531 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %530, i32 0, i32 30
  %532 = load i32, i32* %531, align 8
  %533 = add nsw i32 %532, %529
  store i32 %533, i32* %531, align 8
  br label %534

534:                                              ; preds = %526, %523
  br label %535

535:                                              ; preds = %534, %518
  br label %541

536:                                              ; preds = %485
  %537 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %537, i32 0, i32 30
  store i32 31, i32* %538, align 8
  %539 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %540 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %539, i32 0, i32 29
  store i32 31, i32* %540, align 4
  br label %541

541:                                              ; preds = %536, %535
  br label %542

542:                                              ; preds = %78, %101, %102, %108, %192, %250, %253, %272, %305, %322, %396, %400, %404, %412, %428, %541, %3
  ret void
}

declare dso_local i32 @SCSPLOG(i8*, i64, i32, i32) #1

declare dso_local i32 @scsp_slot_update_keyon(%struct.TYPE_5__*) #1

declare dso_local i32 @scsp_slot_keyonoff(...) #1

declare dso_local i32 @scsp_slot_refresh_einc(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
