; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_Decoder_ProcessByte.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_Decoder_ProcessByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SEQUENCE_PENDING = common dso_local global i32 0, align 4
@SEQUENCE_COMPLETE = common dso_local global i32 0, align 4
@FIRST_2_BYTE_UTF8_CODEPOINT = common dso_local global i32 0, align 4
@SEQUENCE_INVALID_INCLUSIVE = common dso_local global i32 0, align 4
@MAX_CODEPOINT = common dso_local global i32 0, align 4
@SEQUENCE_INVALID_EXCLUSIVE = common dso_local global i32 0, align 4
@FIRST_3_BYTE_UTF8_CODEPOINT = common dso_local global i32 0, align 4
@FIRST_4_BYTE_UTF8_CODEPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @Decoder_ProcessByte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Decoder_ProcessByte(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @SEQUENCE_PENDING, align 4
  %9 = call i32 @DECODER_OUTPUT(i32 %8, i32 0, i32 0)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %510 [
    i32 128, label %11
    i32 131, label %224
    i32 132, label %309
    i32 129, label %394
    i32 130, label %452
  ]

11:                                               ; preds = %3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %223 [
    i32 133, label %15
    i32 139, label %86
    i32 138, label %103
    i32 136, label %137
    i32 137, label %154
    i32 135, label %188
    i32 134, label %206
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @IS_UTF8_SINGLE_BYTE(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @SEQUENCE_COMPLETE, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DECODER_OUTPUT(i32 %20, i32 1, i32 %21)
  store i32 %22, i32* %7, align 4
  br label %85

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @IS_UTF8_FIRST_BYTE_OF_2(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @BOTTOM_5_BITS(i32 %28)
  %30 = shl i32 %29, 6
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FIRST_2_BYTE_UTF8_CODEPOINT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @SEQUENCE_INVALID_INCLUSIVE, align 4
  %40 = call i32 @DECODER_OUTPUT(i32 %39, i32 1, i32 0)
  store i32 %40, i32* %7, align 4
  br label %44

41:                                               ; preds = %27
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 139, i32* %43, align 4
  br label %513

44:                                               ; preds = %38
  br label %84

45:                                               ; preds = %23
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @IS_UTF8_FIRST_BYTE_OF_3(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @BOTTOM_4_BITS(i32 %50)
  %52 = shl i32 %51, 12
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 138, i32* %56, align 4
  br label %513

57:                                               ; preds = %45
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @IS_UTF8_FIRST_BYTE_OF_4(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @BOTTOM_3_BITS(i32 %62)
  %64 = shl i32 %63, 18
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MAX_CODEPOINT, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i32, i32* @SEQUENCE_INVALID_INCLUSIVE, align 4
  %74 = call i32 @DECODER_OUTPUT(i32 %73, i32 1, i32 0)
  store i32 %74, i32* %7, align 4
  br label %78

75:                                               ; preds = %61
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 137, i32* %77, align 4
  br label %513

78:                                               ; preds = %72
  br label %82

79:                                               ; preds = %57
  %80 = load i32, i32* @SEQUENCE_INVALID_INCLUSIVE, align 4
  %81 = call i32 @DECODER_OUTPUT(i32 %80, i32 1, i32 0)
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %78
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83, %44
  br label %85

85:                                               ; preds = %84, %19
  br label %223

86:                                               ; preds = %11
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @IS_UTF8_CONTINUATION_BYTE(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i32, i32* @SEQUENCE_COMPLETE, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @BOTTOM_6_BITS(i32 %95)
  %97 = or i32 %94, %96
  %98 = call i32 @DECODER_OUTPUT(i32 %91, i32 2, i32 %97)
  store i32 %98, i32* %7, align 4
  br label %102

99:                                               ; preds = %86
  %100 = load i32, i32* @SEQUENCE_INVALID_EXCLUSIVE, align 4
  %101 = call i32 @DECODER_OUTPUT(i32 %100, i32 1, i32 0)
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %99, %90
  br label %223

103:                                              ; preds = %11
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @IS_UTF8_CONTINUATION_BYTE(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %133

107:                                              ; preds = %103
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @BOTTOM_6_BITS(i32 %108)
  %110 = shl i32 %109, 6
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @FIRST_3_BYTE_UTF8_CODEPOINT, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %107
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @IS_SURROGATE(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120, %107
  %127 = load i32, i32* @SEQUENCE_INVALID_EXCLUSIVE, align 4
  %128 = call i32 @DECODER_OUTPUT(i32 %127, i32 1, i32 0)
  store i32 %128, i32* %7, align 4
  br label %132

129:                                              ; preds = %120
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 136, i32* %131, align 4
  br label %513

132:                                              ; preds = %126
  br label %136

133:                                              ; preds = %103
  %134 = load i32, i32* @SEQUENCE_INVALID_EXCLUSIVE, align 4
  %135 = call i32 @DECODER_OUTPUT(i32 %134, i32 1, i32 0)
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %133, %132
  br label %223

137:                                              ; preds = %11
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @IS_UTF8_CONTINUATION_BYTE(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load i32, i32* @SEQUENCE_COMPLETE, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @BOTTOM_6_BITS(i32 %146)
  %148 = or i32 %145, %147
  %149 = call i32 @DECODER_OUTPUT(i32 %142, i32 3, i32 %148)
  store i32 %149, i32* %7, align 4
  br label %153

150:                                              ; preds = %137
  %151 = load i32, i32* @SEQUENCE_INVALID_EXCLUSIVE, align 4
  %152 = call i32 @DECODER_OUTPUT(i32 %151, i32 2, i32 0)
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %150, %141
  br label %223

154:                                              ; preds = %11
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @IS_UTF8_CONTINUATION_BYTE(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %184

158:                                              ; preds = %154
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @BOTTOM_6_BITS(i32 %159)
  %161 = shl i32 %160, 12
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @FIRST_4_BYTE_UTF8_CODEPOINT, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %158
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @MAX_CODEPOINT, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %171, %158
  %178 = load i32, i32* @SEQUENCE_INVALID_EXCLUSIVE, align 4
  %179 = call i32 @DECODER_OUTPUT(i32 %178, i32 1, i32 0)
  store i32 %179, i32* %7, align 4
  br label %183

180:                                              ; preds = %171
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  store i32 135, i32* %182, align 4
  br label %513

183:                                              ; preds = %177
  br label %187

184:                                              ; preds = %154
  %185 = load i32, i32* @SEQUENCE_INVALID_EXCLUSIVE, align 4
  %186 = call i32 @DECODER_OUTPUT(i32 %185, i32 1, i32 0)
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %184, %183
  br label %223

188:                                              ; preds = %11
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @IS_UTF8_CONTINUATION_BYTE(i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %188
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @BOTTOM_6_BITS(i32 %193)
  %195 = shl i32 %194, 6
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  store i32 134, i32* %201, align 4
  br label %513

202:                                              ; preds = %188
  %203 = load i32, i32* @SEQUENCE_INVALID_EXCLUSIVE, align 4
  %204 = call i32 @DECODER_OUTPUT(i32 %203, i32 2, i32 0)
  store i32 %204, i32* %7, align 4
  br label %205

205:                                              ; preds = %202
  br label %223

206:                                              ; preds = %11
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @IS_UTF8_CONTINUATION_BYTE(i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %206
  %211 = load i32, i32* @SEQUENCE_COMPLETE, align 4
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @BOTTOM_6_BITS(i32 %215)
  %217 = or i32 %214, %216
  %218 = call i32 @DECODER_OUTPUT(i32 %211, i32 4, i32 %217)
  store i32 %218, i32* %7, align 4
  br label %222

219:                                              ; preds = %206
  %220 = load i32, i32* @SEQUENCE_INVALID_EXCLUSIVE, align 4
  %221 = call i32 @DECODER_OUTPUT(i32 %220, i32 3, i32 0)
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %219, %210
  br label %223

223:                                              ; preds = %11, %222, %205, %187, %153, %136, %102, %85
  br label %510

224:                                              ; preds = %3
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  switch i32 %227, label %308 [
    i32 133, label %228
    i32 139, label %234
    i32 135, label %270
    i32 134, label %278
  ]

228:                                              ; preds = %224
  %229 = load i32, i32* %6, align 4
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  store i32 139, i32* %233, align 4
  br label %513

234:                                              ; preds = %224
  %235 = load i32, i32* %6, align 4
  %236 = shl i32 %235, 8
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @IS_TRAILING_SURROGATE(i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %234
  %247 = load i32, i32* @SEQUENCE_INVALID_INCLUSIVE, align 4
  %248 = call i32 @DECODER_OUTPUT(i32 %247, i32 2, i32 0)
  store i32 %248, i32* %7, align 4
  br label %269

249:                                              ; preds = %234
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @IS_LEADING_SURROGATE(i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %249
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = shl i32 %258, 16
  store i32 %259, i32* %257, align 4
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  store i32 135, i32* %261, align 4
  br label %513

262:                                              ; preds = %249
  %263 = load i32, i32* @SEQUENCE_COMPLETE, align 4
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @DECODER_OUTPUT(i32 %263, i32 2, i32 %266)
  store i32 %267, i32* %7, align 4
  br label %268

268:                                              ; preds = %262
  br label %269

269:                                              ; preds = %268, %246
  br label %308

270:                                              ; preds = %224
  %271 = load i32, i32* %6, align 4
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  store i32 134, i32* %277, align 4
  br label %513

278:                                              ; preds = %224
  %279 = load i32, i32* %6, align 4
  %280 = shl i32 %279, 8
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 4
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = and i32 %287, 65535
  %289 = call i32 @IS_TRAILING_SURROGATE(i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %300, label %291

291:                                              ; preds = %278
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = and i32 %294, 255
  store i32 %295, i32* %293, align 4
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  store i32 139, i32* %297, align 4
  %298 = load i32, i32* @SEQUENCE_INVALID_EXCLUSIVE, align 4
  %299 = call i32 @DECODER_OUTPUT(i32 %298, i32 2, i32 0)
  store i32 %299, i32* %7, align 4
  br label %513

300:                                              ; preds = %278
  %301 = load i32, i32* @SEQUENCE_COMPLETE, align 4
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @CODEPOINT_FROM_SURROGATES(i32 %304)
  %306 = call i32 @DECODER_OUTPUT(i32 %301, i32 4, i32 %305)
  store i32 %306, i32* %7, align 4
  br label %307

307:                                              ; preds = %300
  br label %308

308:                                              ; preds = %224, %307, %269
  br label %510

309:                                              ; preds = %3
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  switch i32 %312, label %393 [
    i32 133, label %313
    i32 139, label %320
    i32 135, label %355
    i32 134, label %364
  ]

313:                                              ; preds = %309
  %314 = load i32, i32* %6, align 4
  %315 = shl i32 %314, 8
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 4
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 0
  store i32 139, i32* %319, align 4
  br label %513

320:                                              ; preds = %309
  %321 = load i32, i32* %6, align 4
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = or i32 %324, %321
  store i32 %325, i32* %323, align 4
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @IS_TRAILING_SURROGATE(i32 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %320
  %332 = load i32, i32* @SEQUENCE_INVALID_INCLUSIVE, align 4
  %333 = call i32 @DECODER_OUTPUT(i32 %332, i32 2, i32 0)
  store i32 %333, i32* %7, align 4
  br label %354

334:                                              ; preds = %320
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @IS_LEADING_SURROGATE(i32 %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %347

340:                                              ; preds = %334
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = shl i32 %343, 16
  store i32 %344, i32* %342, align 4
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 0
  store i32 135, i32* %346, align 4
  br label %513

347:                                              ; preds = %334
  %348 = load i32, i32* @SEQUENCE_COMPLETE, align 4
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @DECODER_OUTPUT(i32 %348, i32 2, i32 %351)
  store i32 %352, i32* %7, align 4
  br label %353

353:                                              ; preds = %347
  br label %354

354:                                              ; preds = %353, %331
  br label %393

355:                                              ; preds = %309
  %356 = load i32, i32* %6, align 4
  %357 = shl i32 %356, 8
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = or i32 %360, %357
  store i32 %361, i32* %359, align 4
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 0
  store i32 134, i32* %363, align 4
  br label %513

364:                                              ; preds = %309
  %365 = load i32, i32* %6, align 4
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = or i32 %368, %365
  store i32 %369, i32* %367, align 4
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = and i32 %372, 65535
  %374 = call i32 @IS_TRAILING_SURROGATE(i32 %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %385, label %376

376:                                              ; preds = %364
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = and i32 %379, 65280
  store i32 %380, i32* %378, align 4
  %381 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 0
  store i32 139, i32* %382, align 4
  %383 = load i32, i32* @SEQUENCE_INVALID_EXCLUSIVE, align 4
  %384 = call i32 @DECODER_OUTPUT(i32 %383, i32 2, i32 0)
  store i32 %384, i32* %7, align 4
  br label %513

385:                                              ; preds = %364
  %386 = load i32, i32* @SEQUENCE_COMPLETE, align 4
  %387 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @CODEPOINT_FROM_SURROGATES(i32 %389)
  %391 = call i32 @DECODER_OUTPUT(i32 %386, i32 4, i32 %390)
  store i32 %391, i32* %7, align 4
  br label %392

392:                                              ; preds = %385
  br label %393

393:                                              ; preds = %309, %392, %354
  br label %510

394:                                              ; preds = %3
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  switch i32 %397, label %451 [
    i32 133, label %398
    i32 137, label %404
    i32 135, label %413
    i32 134, label %422
  ]

398:                                              ; preds = %394
  %399 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 0
  store i32 137, i32* %400, align 4
  %401 = load i32, i32* %6, align 4
  %402 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 1
  store i32 %401, i32* %403, align 4
  br label %513

404:                                              ; preds = %394
  %405 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 0
  store i32 135, i32* %406, align 4
  %407 = load i32, i32* %6, align 4
  %408 = shl i32 %407, 8
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = or i32 %411, %408
  store i32 %412, i32* %410, align 4
  br label %513

413:                                              ; preds = %394
  %414 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 0
  store i32 134, i32* %415, align 4
  %416 = load i32, i32* %6, align 4
  %417 = shl i32 %416, 16
  %418 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = or i32 %420, %417
  store i32 %421, i32* %419, align 4
  br label %513

422:                                              ; preds = %394
  %423 = load i32, i32* %6, align 4
  %424 = shl i32 %423, 24
  %425 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = or i32 %427, %424
  store i32 %428, i32* %426, align 4
  %429 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @IS_SURROGATE(i32 %431)
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %440, label %434

434:                                              ; preds = %422
  %435 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @MAX_CODEPOINT, align 4
  %439 = icmp sgt i32 %437, %438
  br i1 %439, label %440, label %443

440:                                              ; preds = %434, %422
  %441 = load i32, i32* @SEQUENCE_INVALID_INCLUSIVE, align 4
  %442 = call i32 @DECODER_OUTPUT(i32 %441, i32 4, i32 0)
  br label %449

443:                                              ; preds = %434
  %444 = load i32, i32* @SEQUENCE_COMPLETE, align 4
  %445 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @DECODER_OUTPUT(i32 %444, i32 4, i32 %447)
  br label %449

449:                                              ; preds = %443, %440
  %450 = phi i32 [ %442, %440 ], [ %448, %443 ]
  store i32 %450, i32* %7, align 4
  br label %451

451:                                              ; preds = %394, %449
  br label %510

452:                                              ; preds = %3
  %453 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  switch i32 %455, label %509 [
    i32 133, label %456
    i32 137, label %463
    i32 135, label %472
    i32 134, label %481
  ]

456:                                              ; preds = %452
  %457 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %457, i32 0, i32 0
  store i32 137, i32* %458, align 4
  %459 = load i32, i32* %6, align 4
  %460 = shl i32 %459, 24
  %461 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 1
  store i32 %460, i32* %462, align 4
  br label %513

463:                                              ; preds = %452
  %464 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 0
  store i32 135, i32* %465, align 4
  %466 = load i32, i32* %6, align 4
  %467 = shl i32 %466, 16
  %468 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %469 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = or i32 %470, %467
  store i32 %471, i32* %469, align 4
  br label %513

472:                                              ; preds = %452
  %473 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i32 0, i32 0
  store i32 134, i32* %474, align 4
  %475 = load i32, i32* %6, align 4
  %476 = shl i32 %475, 8
  %477 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = or i32 %479, %476
  store i32 %480, i32* %478, align 4
  br label %513

481:                                              ; preds = %452
  %482 = load i32, i32* %6, align 4
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = or i32 %485, %482
  store i32 %486, i32* %484, align 4
  %487 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = call i32 @IS_SURROGATE(i32 %489)
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %498, label %492

492:                                              ; preds = %481
  %493 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %494 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* @MAX_CODEPOINT, align 4
  %497 = icmp sgt i32 %495, %496
  br i1 %497, label %498, label %501

498:                                              ; preds = %492, %481
  %499 = load i32, i32* @SEQUENCE_INVALID_INCLUSIVE, align 4
  %500 = call i32 @DECODER_OUTPUT(i32 %499, i32 4, i32 0)
  br label %507

501:                                              ; preds = %492
  %502 = load i32, i32* @SEQUENCE_COMPLETE, align 4
  %503 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = call i32 @DECODER_OUTPUT(i32 %502, i32 4, i32 %505)
  br label %507

507:                                              ; preds = %501, %498
  %508 = phi i32 [ %500, %498 ], [ %506, %501 ]
  store i32 %508, i32* %7, align 4
  br label %509

509:                                              ; preds = %452, %507
  br label %510

510:                                              ; preds = %3, %509, %451, %393, %308, %223
  %511 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %512 = call i32 @Decoder_Reset(%struct.TYPE_4__* %511)
  br label %513

513:                                              ; preds = %510, %472, %463, %456, %413, %404, %398, %376, %355, %340, %313, %291, %270, %255, %228, %192, %180, %129, %75, %49, %41
  %514 = load i32, i32* %7, align 4
  ret i32 %514
}

declare dso_local i32 @DECODER_OUTPUT(i32, i32, i32) #1

declare dso_local i32 @IS_UTF8_SINGLE_BYTE(i32) #1

declare dso_local i32 @IS_UTF8_FIRST_BYTE_OF_2(i32) #1

declare dso_local i32 @BOTTOM_5_BITS(i32) #1

declare dso_local i32 @IS_UTF8_FIRST_BYTE_OF_3(i32) #1

declare dso_local i32 @BOTTOM_4_BITS(i32) #1

declare dso_local i32 @IS_UTF8_FIRST_BYTE_OF_4(i32) #1

declare dso_local i32 @BOTTOM_3_BITS(i32) #1

declare dso_local i32 @IS_UTF8_CONTINUATION_BYTE(i32) #1

declare dso_local i32 @BOTTOM_6_BITS(i32) #1

declare dso_local i32 @IS_SURROGATE(i32) #1

declare dso_local i32 @IS_TRAILING_SURROGATE(i32) #1

declare dso_local i32 @IS_LEADING_SURROGATE(i32) #1

declare dso_local i32 @CODEPOINT_FROM_SURROGATES(i32) #1

declare dso_local i32 @Decoder_Reset(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
