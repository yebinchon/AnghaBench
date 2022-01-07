; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scspdsp.c_ScspDspExec.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scspdsp.c_ScspDspExec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i32, i32, i32* }
%union.ScspDspInstruction = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i32, i64, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@scsp_dsp = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScspDspExec(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.ScspDspInstruction, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scsp_dsp, i32 0, i32 0), align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.ScspDspInstruction* %9 to i32*
  store i32 %19, i32* %20, align 8
  %21 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %3
  %26 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 31
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 31
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %93

43:                                               ; preds = %25, %3
  %44 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 32
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sle i32 %51, 47
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 32
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %92

67:                                               ; preds = %48, %43
  %68 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 48
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 49
  br i1 %76, label %77, label %91

77:                                               ; preds = %72, %67
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 48
  %85 = and i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %80, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %77, %72
  br label %92

92:                                               ; preds = %91, %53
  br label %93

93:                                               ; preds = %92, %30
  %94 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 23
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %101, i32* %108, align 4
  br label %109

109:                                              ; preds = %98, %93
  %110 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %139

114:                                              ; preds = %109
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %120, %123
  %125 = and i32 %124, 127
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %117, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = and i32 %129, 8388608
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %114
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %133, 50331648
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %132, %114
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 7
  store i32 %136, i32* %138, align 4
  br label %151

139:                                              ; preds = %109
  %140 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %144, %139
  br label %151

151:                                              ; preds = %150, %135
  %152 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 22
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 0, %159
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %156, %151
  %164 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 21
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 7
  store i32 0, i32* %170, align 4
  br label %171

171:                                              ; preds = %168, %163
  %172 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %171
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %182, %185
  %187 = and i32 %186, 127
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %179, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 9
  store i32 %190, i32* %192, align 4
  br label %205

193:                                              ; preds = %171
  %194 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 9
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %198, %193
  br label %205

205:                                              ; preds = %204, %176
  %206 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 11
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 10
  store i32 %213, i32* %215, align 8
  br label %278

216:                                              ; preds = %205
  %217 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %249

221:                                              ; preds = %216
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 12
  %224 = load i32*, i32** %223, align 8
  %225 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = ashr i32 %229, 3
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 10
  store i32 %230, i32* %232, align 8
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 12
  %235 = load i32*, i32** %234, align 8
  %236 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 6
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, 32768
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %221
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 10
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, 57344
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %243, %221
  br label %277

249:                                              ; preds = %216
  %250 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 2
  br i1 %253, label %254, label %262

254:                                              ; preds = %249
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 13
  %257 = load i32, i32* %256, align 8
  %258 = ashr i32 %257, 11
  %259 = and i32 %258, 8191
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 10
  store i32 %259, i32* %261, align 8
  br label %276

262:                                              ; preds = %249
  %263 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %265, 3
  br i1 %266, label %267, label %275

267:                                              ; preds = %262
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 13
  %270 = load i32, i32* %269, align 8
  %271 = ashr i32 %270, 4
  %272 = and i32 %271, 4095
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 10
  store i32 %272, i32* %274, align 8
  br label %275

275:                                              ; preds = %267, %262
  br label %276

276:                                              ; preds = %275, %254
  br label %277

277:                                              ; preds = %276, %248
  br label %278

278:                                              ; preds = %277, %210
  %279 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 20
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %278
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 13
  store i32 %286, i32* %288, align 8
  br label %289

289:                                              ; preds = %283, %278
  %290 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 7
  %292 = load i32, i32* %291, align 8
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %302

294:                                              ; preds = %289
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 8
  %297 = load i32, i32* %296, align 8
  %298 = call i8* @saturate_24(i32 %297)
  %299 = ptrtoint i8* %298 to i32
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 14
  store i32 %299, i32* %301, align 4
  br label %344

302:                                              ; preds = %289
  %303 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 7
  %305 = load i32, i32* %304, align 8
  %306 = icmp eq i32 %305, 1
  br i1 %306, label %307, label %316

307:                                              ; preds = %302
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 8
  %310 = load i32, i32* %309, align 8
  %311 = mul nsw i32 %310, 2
  %312 = call i8* @saturate_24(i32 %311)
  %313 = ptrtoint i8* %312 to i32
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 14
  store i32 %313, i32* %315, align 4
  br label %343

316:                                              ; preds = %302
  %317 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 8
  %320 = icmp eq i32 %319, 2
  br i1 %320, label %321, label %329

321:                                              ; preds = %316
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 8
  %324 = load i32, i32* %323, align 8
  %325 = mul nsw i32 %324, 2
  %326 = and i32 %325, 16777215
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 14
  store i32 %326, i32* %328, align 4
  br label %342

329:                                              ; preds = %316
  %330 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 7
  %332 = load i32, i32* %331, align 8
  %333 = icmp eq i32 %332, 2
  br i1 %333, label %334, label %341

334:                                              ; preds = %329
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 8
  %337 = load i32, i32* %336, align 8
  %338 = and i32 %337, 16777215
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 14
  store i32 %338, i32* %340, align 4
  br label %341

341:                                              ; preds = %334, %329
  br label %342

342:                                              ; preds = %341, %321
  br label %343

343:                                              ; preds = %342, %307
  br label %344

344:                                              ; preds = %343, %294
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 9
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 10
  %350 = load i32, i32* %349, align 8
  %351 = mul nsw i32 %347, %350
  store i32 %351, i32* %8, align 4
  %352 = load i32, i32* %8, align 4
  %353 = ashr i32 %352, 12
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 4
  %357 = add nsw i32 %353, %356
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 8
  store i32 %357, i32* %359, align 8
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 8
  %362 = load i32, i32* %361, align 8
  %363 = and i32 %362, 16777215
  store i32 %363, i32* %361, align 8
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 8
  %366 = load i32, i32* %365, align 8
  %367 = and i32 %366, 8388608
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %374

369:                                              ; preds = %344
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 8
  %372 = load i32, i32* %371, align 8
  %373 = or i32 %372, -16777216
  store i32 %373, i32* %371, align 8
  br label %374

374:                                              ; preds = %369, %344
  %375 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 19
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %396

379:                                              ; preds = %374
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 14
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 5
  %385 = load i32*, i32** %384, align 8
  %386 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 8
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 6
  %391 = load i32, i32* %390, align 8
  %392 = add nsw i32 %388, %391
  %393 = and i32 %392, 127
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %385, i64 %394
  store i32 %382, i32* %395, align 4
  br label %396

396:                                              ; preds = %379, %374
  %397 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 18
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %422

401:                                              ; preds = %396
  %402 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 7
  %404 = load i32, i32* %403, align 8
  %405 = icmp eq i32 %404, 3
  br i1 %405, label %406, label %413

406:                                              ; preds = %401
  %407 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 14
  %409 = load i32, i32* %408, align 4
  %410 = and i32 %409, 4095
  %411 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 11
  store i32 %410, i32* %412, align 4
  br label %421

413:                                              ; preds = %401
  %414 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 14
  %416 = load i32, i32* %415, align 4
  %417 = ashr i32 %416, 11
  %418 = and i32 %417, 8191
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 11
  store i32 %418, i32* %420, align 4
  br label %421

421:                                              ; preds = %413, %406
  br label %422

422:                                              ; preds = %421, %396
  %423 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 15
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %432, label %427

427:                                              ; preds = %422
  %428 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i32 0, i32 14
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %562

432:                                              ; preds = %427, %422
  %433 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 15
  %435 = load i32*, i32** %434, align 8
  %436 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %437 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %436, i32 0, i32 9
  %438 = load i64, i64* %437, align 8
  %439 = getelementptr inbounds i32, i32* %435, i64 %438
  %440 = load i32, i32* %439, align 4
  store i32 %440, i32* %11, align 4
  %441 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i32 0, i32 10
  %443 = load i32, i32* %442, align 8
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %451

445:                                              ; preds = %432
  %446 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %446, i32 0, i32 6
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* %11, align 4
  %450 = add nsw i32 %449, %448
  store i32 %450, i32* %11, align 4
  br label %451

451:                                              ; preds = %445, %432
  %452 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %453 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %452, i32 0, i32 17
  %454 = load i64, i64* %453, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %463

456:                                              ; preds = %451
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 16
  %459 = load i32, i32* %458, align 8
  %460 = and i32 %459, 4095
  %461 = load i32, i32* %11, align 4
  %462 = add nsw i32 %461, %460
  store i32 %462, i32* %11, align 4
  br label %463

463:                                              ; preds = %456, %451
  %464 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 16
  %466 = load i64, i64* %465, align 8
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %463
  %469 = load i32, i32* %11, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %11, align 4
  br label %471

471:                                              ; preds = %468, %463
  %472 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %473 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %472, i32 0, i32 10
  %474 = load i32, i32* %473, align 8
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %512

476:                                              ; preds = %471
  %477 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %477, i32 0, i32 17
  %479 = load i32, i32* %478, align 4
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %484

481:                                              ; preds = %476
  %482 = load i32, i32* %11, align 4
  %483 = and i32 %482, 8191
  store i32 %483, i32* %11, align 4
  br label %511

484:                                              ; preds = %476
  %485 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %485, i32 0, i32 17
  %487 = load i32, i32* %486, align 4
  %488 = icmp eq i32 %487, 1
  br i1 %488, label %489, label %492

489:                                              ; preds = %484
  %490 = load i32, i32* %11, align 4
  %491 = and i32 %490, 16383
  store i32 %491, i32* %11, align 4
  br label %510

492:                                              ; preds = %484
  %493 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %494 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %493, i32 0, i32 17
  %495 = load i32, i32* %494, align 4
  %496 = icmp eq i32 %495, 2
  br i1 %496, label %497, label %500

497:                                              ; preds = %492
  %498 = load i32, i32* %11, align 4
  %499 = and i32 %498, 32767
  store i32 %499, i32* %11, align 4
  br label %509

500:                                              ; preds = %492
  %501 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %502 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %501, i32 0, i32 17
  %503 = load i32, i32* %502, align 4
  %504 = icmp eq i32 %503, 3
  br i1 %504, label %505, label %508

505:                                              ; preds = %500
  %506 = load i32, i32* %11, align 4
  %507 = and i32 %506, 65535
  store i32 %507, i32* %11, align 4
  br label %508

508:                                              ; preds = %505, %500
  br label %509

509:                                              ; preds = %508, %497
  br label %510

510:                                              ; preds = %509, %489
  br label %511

511:                                              ; preds = %510, %481
  br label %521

512:                                              ; preds = %471
  %513 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %514 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %513, i32 0, i32 10
  %515 = load i32, i32* %514, align 8
  %516 = icmp eq i32 %515, 1
  br i1 %516, label %517, label %520

517:                                              ; preds = %512
  %518 = load i32, i32* %11, align 4
  %519 = and i32 %518, 65535
  store i32 %519, i32* %11, align 4
  br label %520

520:                                              ; preds = %517, %512
  br label %521

521:                                              ; preds = %520, %511
  %522 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %523 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %522, i32 0, i32 18
  %524 = load i32, i32* %523, align 8
  %525 = shl i32 %524, 11
  %526 = mul nsw i32 %525, 2
  %527 = load i32, i32* %11, align 4
  %528 = add nsw i32 %527, %526
  store i32 %528, i32* %11, align 4
  %529 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %530 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %529, i32 0, i32 15
  %531 = load i64, i64* %530, align 8
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %544

533:                                              ; preds = %521
  %534 = load i32*, i32** %7, align 8
  %535 = load i32, i32* %11, align 4
  %536 = and i32 %535, 524287
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %534, i64 %537
  %539 = load i32, i32* %538, align 4
  store i32 %539, i32* %12, align 4
  %540 = load i32, i32* %12, align 4
  %541 = call i32 @float_to_int(i32 %540)
  %542 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %543 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %542, i32 0, i32 4
  store i32 %541, i32* %543, align 8
  br label %544

544:                                              ; preds = %533, %521
  %545 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %546 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %545, i32 0, i32 14
  %547 = load i64, i64* %546, align 8
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %561

549:                                              ; preds = %544
  %550 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %551 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %550, i32 0, i32 14
  %552 = load i32, i32* %551, align 4
  store i32 %552, i32* %13, align 4
  %553 = load i32, i32* %13, align 4
  %554 = call i32 @int_to_float(i32 %553)
  store i32 %554, i32* %13, align 4
  %555 = load i32, i32* %13, align 4
  %556 = load i32*, i32** %7, align 8
  %557 = load i32, i32* %11, align 4
  %558 = and i32 %557, 524287
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i32, i32* %556, i64 %559
  store i32 %555, i32* %560, align 4
  br label %561

561:                                              ; preds = %549, %544
  br label %562

562:                                              ; preds = %561, %427
  %563 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %564 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %563, i32 0, i32 13
  %565 = load i64, i64* %564, align 8
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %567, label %588

567:                                              ; preds = %562
  %568 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %569 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %568, i32 0, i32 7
  %570 = load i32, i32* %569, align 8
  %571 = icmp eq i32 %570, 3
  br i1 %571, label %572, label %579

572:                                              ; preds = %567
  %573 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %574 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 8
  %576 = ashr i32 %575, 16
  %577 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %578 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %577, i32 0, i32 16
  store i32 %576, i32* %578, align 8
  br label %587

579:                                              ; preds = %567
  %580 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %581 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %580, i32 0, i32 14
  %582 = load i32, i32* %581, align 4
  %583 = ashr i32 %582, 12
  %584 = and i32 %583, 4095
  %585 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %586 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %585, i32 0, i32 16
  store i32 %584, i32* %586, align 8
  br label %587

587:                                              ; preds = %579, %572
  br label %588

588:                                              ; preds = %587, %562
  %589 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %590 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %589, i32 0, i32 12
  %591 = load i64, i64* %590, align 8
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %605

593:                                              ; preds = %588
  %594 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %595 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %594, i32 0, i32 14
  %596 = load i32, i32* %595, align 4
  %597 = ashr i32 %596, 8
  %598 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %599 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %598, i32 0, i32 19
  %600 = load i32*, i32** %599, align 8
  %601 = bitcast %union.ScspDspInstruction* %9 to %struct.TYPE_5__*
  %602 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %601, i32 0, i32 11
  %603 = load i64, i64* %602, align 8
  %604 = getelementptr inbounds i32, i32* %600, i64 %603
  store i32 %597, i32* %604, align 4
  br label %605

605:                                              ; preds = %593, %588
  ret void
}

declare dso_local i8* @saturate_24(i32) #1

declare dso_local i32 @float_to_int(i32) #1

declare dso_local i32 @int_to_float(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
