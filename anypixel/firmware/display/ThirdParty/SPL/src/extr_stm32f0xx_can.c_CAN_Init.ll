; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_can.c_CAN_Init.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_can.c_CAN_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@CAN_InitStatus_Failed = common dso_local global i32 0, align 4
@CAN_MCR_SLEEP = common dso_local global i64 0, align 8
@CAN_MCR_INRQ = common dso_local global i64 0, align 8
@CAN_MSR_INAK = common dso_local global i32 0, align 4
@INAK_TIMEOUT = common dso_local global i64 0, align 8
@ENABLE = common dso_local global i64 0, align 8
@CAN_MCR_TTCM = common dso_local global i64 0, align 8
@CAN_MCR_ABOM = common dso_local global i64 0, align 8
@CAN_MCR_AWUM = common dso_local global i64 0, align 8
@CAN_MCR_NART = common dso_local global i64 0, align 8
@CAN_MCR_RFLM = common dso_local global i64 0, align 8
@CAN_MCR_TXFP = common dso_local global i64 0, align 8
@CAN_InitStatus_Success = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CAN_Init(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load i32, i32* @CAN_InitStatus_Failed, align 4
  store i32 %7, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_6__* %8)
  %10 = call i32 @assert_param(i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @IS_FUNCTIONAL_STATE(i64 %13)
  %15 = call i32 @assert_param(i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @IS_FUNCTIONAL_STATE(i64 %18)
  %20 = call i32 @assert_param(i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @IS_FUNCTIONAL_STATE(i64 %23)
  %25 = call i32 @assert_param(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @IS_FUNCTIONAL_STATE(i64 %28)
  %30 = call i32 @assert_param(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @IS_FUNCTIONAL_STATE(i64 %33)
  %35 = call i32 @assert_param(i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @IS_FUNCTIONAL_STATE(i64 %38)
  %40 = call i32 @assert_param(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 10
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @IS_CAN_MODE(i64 %43)
  %45 = call i32 @assert_param(i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @IS_CAN_SJW(i64 %48)
  %50 = call i32 @assert_param(i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @IS_CAN_BS1(i64 %53)
  %55 = call i32 @assert_param(i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @IS_CAN_BS2(i64 %58)
  %60 = call i32 @assert_param(i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @IS_CAN_PRESCALER(i64 %63)
  %65 = call i32 @assert_param(i32 %64)
  %66 = load i64, i64* @CAN_MCR_SLEEP, align 8
  %67 = xor i64 %66, -1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = and i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load i64, i64* @CAN_MCR_INRQ, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = or i64 %75, %72
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %91, %2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CAN_MSR_INAK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @CAN_MSR_INAK, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @INAK_TIMEOUT, align 8
  %88 = icmp ne i64 %86, %87
  br label %89

89:                                               ; preds = %85, %77
  %90 = phi i1 [ false, %77 ], [ %88, %85 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i64, i64* %6, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %77

94:                                               ; preds = %89
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @CAN_MSR_INAK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @CAN_MSR_INAK, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* @CAN_InitStatus_Failed, align 4
  store i32 %103, i32* %5, align 4
  br label %281

104:                                              ; preds = %94
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ENABLE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i64, i64* @CAN_MCR_TTCM, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = or i64 %114, %111
  store i64 %115, i64* %113, align 8
  br label %123

116:                                              ; preds = %104
  %117 = load i64, i64* @CAN_MCR_TTCM, align 8
  %118 = xor i64 %117, -1
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = and i64 %121, %118
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %116, %110
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ENABLE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load i64, i64* @CAN_MCR_ABOM, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = or i64 %133, %130
  store i64 %134, i64* %132, align 8
  br label %142

135:                                              ; preds = %123
  %136 = load i64, i64* @CAN_MCR_ABOM, align 8
  %137 = xor i64 %136, -1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = and i64 %140, %137
  store i64 %141, i64* %139, align 8
  br label %142

142:                                              ; preds = %135, %129
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @ENABLE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load i64, i64* @CAN_MCR_AWUM, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = or i64 %152, %149
  store i64 %153, i64* %151, align 8
  br label %161

154:                                              ; preds = %142
  %155 = load i64, i64* @CAN_MCR_AWUM, align 8
  %156 = xor i64 %155, -1
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = and i64 %159, %156
  store i64 %160, i64* %158, align 8
  br label %161

161:                                              ; preds = %154, %148
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @ENABLE, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = load i64, i64* @CAN_MCR_NART, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = or i64 %171, %168
  store i64 %172, i64* %170, align 8
  br label %180

173:                                              ; preds = %161
  %174 = load i64, i64* @CAN_MCR_NART, align 8
  %175 = xor i64 %174, -1
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = and i64 %178, %175
  store i64 %179, i64* %177, align 8
  br label %180

180:                                              ; preds = %173, %167
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @ENABLE, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %180
  %187 = load i64, i64* @CAN_MCR_RFLM, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = or i64 %190, %187
  store i64 %191, i64* %189, align 8
  br label %199

192:                                              ; preds = %180
  %193 = load i64, i64* @CAN_MCR_RFLM, align 8
  %194 = xor i64 %193, -1
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = and i64 %197, %194
  store i64 %198, i64* %196, align 8
  br label %199

199:                                              ; preds = %192, %186
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @ENABLE, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %199
  %206 = load i64, i64* @CAN_MCR_TXFP, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = or i64 %209, %206
  store i64 %210, i64* %208, align 8
  br label %218

211:                                              ; preds = %199
  %212 = load i64, i64* @CAN_MCR_TXFP, align 8
  %213 = xor i64 %212, -1
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = and i64 %216, %213
  store i64 %217, i64* %215, align 8
  br label %218

218:                                              ; preds = %211, %205
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 10
  %221 = load i64, i64* %220, align 8
  %222 = shl i64 %221, 30
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 9
  %225 = load i64, i64* %224, align 8
  %226 = shl i64 %225, 24
  %227 = or i64 %222, %226
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 8
  %230 = load i64, i64* %229, align 8
  %231 = shl i64 %230, 16
  %232 = or i64 %227, %231
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 7
  %235 = load i64, i64* %234, align 8
  %236 = shl i64 %235, 20
  %237 = or i64 %232, %236
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 6
  %240 = load i64, i64* %239, align 8
  %241 = sub nsw i64 %240, 1
  %242 = or i64 %237, %241
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 2
  store i64 %242, i64* %244, align 8
  %245 = load i64, i64* @CAN_MCR_INRQ, align 8
  %246 = xor i64 %245, -1
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = and i64 %249, %246
  store i64 %250, i64* %248, align 8
  store i64 0, i64* %6, align 8
  br label %251

251:                                              ; preds = %265, %218
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @CAN_MSR_INAK, align 4
  %256 = and i32 %254, %255
  %257 = load i32, i32* @CAN_MSR_INAK, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %251
  %260 = load i64, i64* %6, align 8
  %261 = load i64, i64* @INAK_TIMEOUT, align 8
  %262 = icmp ne i64 %260, %261
  br label %263

263:                                              ; preds = %259, %251
  %264 = phi i1 [ false, %251 ], [ %262, %259 ]
  br i1 %264, label %265, label %268

265:                                              ; preds = %263
  %266 = load i64, i64* %6, align 8
  %267 = add nsw i64 %266, 1
  store i64 %267, i64* %6, align 8
  br label %251

268:                                              ; preds = %263
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @CAN_MSR_INAK, align 4
  %273 = and i32 %271, %272
  %274 = load i32, i32* @CAN_MSR_INAK, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %268
  %277 = load i32, i32* @CAN_InitStatus_Failed, align 4
  store i32 %277, i32* %5, align 4
  br label %280

278:                                              ; preds = %268
  %279 = load i32, i32* @CAN_InitStatus_Success, align 4
  store i32 %279, i32* %5, align 4
  br label %280

280:                                              ; preds = %278, %276
  br label %281

281:                                              ; preds = %280, %102
  %282 = load i32, i32* %5, align 4
  ret i32 %282
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_6__*) #1

declare dso_local i32 @IS_FUNCTIONAL_STATE(i64) #1

declare dso_local i32 @IS_CAN_MODE(i64) #1

declare dso_local i32 @IS_CAN_SJW(i64) #1

declare dso_local i32 @IS_CAN_BS1(i64) #1

declare dso_local i32 @IS_CAN_BS2(i64) #1

declare dso_local i32 @IS_CAN_PRESCALER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
