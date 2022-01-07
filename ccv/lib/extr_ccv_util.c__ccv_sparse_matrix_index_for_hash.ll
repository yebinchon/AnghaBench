; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c__ccv_sparse_matrix_index_for_hash.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c__ccv_sparse_matrix_index_for_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @_ccv_sparse_matrix_index_for_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ccv_sparse_matrix_index_for_hash(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %281 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %11
    i32 3, label %14
    i32 4, label %17
    i32 5, label %20
    i32 6, label %23
    i32 7, label %26
    i32 8, label %29
    i32 9, label %32
    i32 10, label %35
    i32 11, label %38
    i32 12, label %41
    i32 13, label %44
    i32 14, label %47
    i32 15, label %50
    i32 16, label %53
    i32 17, label %56
    i32 18, label %59
    i32 19, label %62
    i32 20, label %65
    i32 21, label %68
    i32 22, label %71
    i32 23, label %74
    i32 24, label %77
    i32 25, label %80
    i32 26, label %83
    i32 27, label %86
    i32 28, label %89
    i32 29, label %92
    i32 30, label %95
    i32 31, label %98
    i32 32, label %101
    i32 33, label %104
    i32 34, label %107
    i32 35, label %110
    i32 36, label %113
    i32 37, label %116
    i32 38, label %119
    i32 39, label %122
    i32 40, label %125
    i32 41, label %128
    i32 42, label %131
    i32 43, label %134
    i32 44, label %137
    i32 45, label %140
    i32 46, label %143
    i32 47, label %146
    i32 48, label %149
    i32 49, label %152
    i32 50, label %155
    i32 51, label %158
    i32 52, label %161
    i32 53, label %164
    i32 54, label %167
    i32 55, label %170
    i32 56, label %173
    i32 57, label %176
    i32 58, label %179
    i32 59, label %182
    i32 60, label %185
    i32 61, label %188
    i32 62, label %191
    i32 63, label %194
    i32 64, label %197
    i32 65, label %200
    i32 66, label %203
    i32 67, label %206
    i32 68, label %209
    i32 69, label %212
    i32 70, label %215
    i32 71, label %218
    i32 72, label %221
    i32 73, label %224
    i32 74, label %227
    i32 75, label %230
    i32 76, label %233
    i32 77, label %236
    i32 78, label %239
    i32 79, label %242
    i32 80, label %245
    i32 81, label %248
    i32 82, label %251
    i32 83, label %254
    i32 84, label %257
    i32 85, label %260
    i32 86, label %263
    i32 87, label %266
    i32 88, label %269
    i32 89, label %272
    i32 90, label %275
    i32 91, label %278
  ]

7:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %283

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = urem i32 %9, 2
  store i32 %10, i32* %3, align 4
  br label %283

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = urem i32 %12, 3
  store i32 %13, i32* %3, align 4
  br label %283

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = urem i32 %15, 5
  store i32 %16, i32* %3, align 4
  br label %283

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = urem i32 %18, 7
  store i32 %19, i32* %3, align 4
  br label %283

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = urem i32 %21, 11
  store i32 %22, i32* %3, align 4
  br label %283

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = urem i32 %24, 13
  store i32 %25, i32* %3, align 4
  br label %283

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = urem i32 %27, 17
  store i32 %28, i32* %3, align 4
  br label %283

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = urem i32 %30, 23
  store i32 %31, i32* %3, align 4
  br label %283

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = urem i32 %33, 29
  store i32 %34, i32* %3, align 4
  br label %283

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = urem i32 %36, 37
  store i32 %37, i32* %3, align 4
  br label %283

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = urem i32 %39, 47
  store i32 %40, i32* %3, align 4
  br label %283

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = urem i32 %42, 59
  store i32 %43, i32* %3, align 4
  br label %283

44:                                               ; preds = %2
  %45 = load i32, i32* %4, align 4
  %46 = urem i32 %45, 73
  store i32 %46, i32* %3, align 4
  br label %283

47:                                               ; preds = %2
  %48 = load i32, i32* %4, align 4
  %49 = urem i32 %48, 97
  store i32 %49, i32* %3, align 4
  br label %283

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  %52 = urem i32 %51, 127
  store i32 %52, i32* %3, align 4
  br label %283

53:                                               ; preds = %2
  %54 = load i32, i32* %4, align 4
  %55 = urem i32 %54, 151
  store i32 %55, i32* %3, align 4
  br label %283

56:                                               ; preds = %2
  %57 = load i32, i32* %4, align 4
  %58 = urem i32 %57, 197
  store i32 %58, i32* %3, align 4
  br label %283

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4
  %61 = urem i32 %60, 251
  store i32 %61, i32* %3, align 4
  br label %283

62:                                               ; preds = %2
  %63 = load i32, i32* %4, align 4
  %64 = urem i32 %63, 313
  store i32 %64, i32* %3, align 4
  br label %283

65:                                               ; preds = %2
  %66 = load i32, i32* %4, align 4
  %67 = urem i32 %66, 397
  store i32 %67, i32* %3, align 4
  br label %283

68:                                               ; preds = %2
  %69 = load i32, i32* %4, align 4
  %70 = urem i32 %69, 499
  store i32 %70, i32* %3, align 4
  br label %283

71:                                               ; preds = %2
  %72 = load i32, i32* %4, align 4
  %73 = urem i32 %72, 631
  store i32 %73, i32* %3, align 4
  br label %283

74:                                               ; preds = %2
  %75 = load i32, i32* %4, align 4
  %76 = urem i32 %75, 797
  store i32 %76, i32* %3, align 4
  br label %283

77:                                               ; preds = %2
  %78 = load i32, i32* %4, align 4
  %79 = urem i32 %78, 1009
  store i32 %79, i32* %3, align 4
  br label %283

80:                                               ; preds = %2
  %81 = load i32, i32* %4, align 4
  %82 = urem i32 %81, 1259
  store i32 %82, i32* %3, align 4
  br label %283

83:                                               ; preds = %2
  %84 = load i32, i32* %4, align 4
  %85 = urem i32 %84, 1597
  store i32 %85, i32* %3, align 4
  br label %283

86:                                               ; preds = %2
  %87 = load i32, i32* %4, align 4
  %88 = urem i32 %87, 2011
  store i32 %88, i32* %3, align 4
  br label %283

89:                                               ; preds = %2
  %90 = load i32, i32* %4, align 4
  %91 = urem i32 %90, 2539
  store i32 %91, i32* %3, align 4
  br label %283

92:                                               ; preds = %2
  %93 = load i32, i32* %4, align 4
  %94 = urem i32 %93, 3203
  store i32 %94, i32* %3, align 4
  br label %283

95:                                               ; preds = %2
  %96 = load i32, i32* %4, align 4
  %97 = urem i32 %96, 4027
  store i32 %97, i32* %3, align 4
  br label %283

98:                                               ; preds = %2
  %99 = load i32, i32* %4, align 4
  %100 = urem i32 %99, 5087
  store i32 %100, i32* %3, align 4
  br label %283

101:                                              ; preds = %2
  %102 = load i32, i32* %4, align 4
  %103 = urem i32 %102, 6421
  store i32 %103, i32* %3, align 4
  br label %283

104:                                              ; preds = %2
  %105 = load i32, i32* %4, align 4
  %106 = urem i32 %105, 8089
  store i32 %106, i32* %3, align 4
  br label %283

107:                                              ; preds = %2
  %108 = load i32, i32* %4, align 4
  %109 = urem i32 %108, 10193
  store i32 %109, i32* %3, align 4
  br label %283

110:                                              ; preds = %2
  %111 = load i32, i32* %4, align 4
  %112 = urem i32 %111, 12853
  store i32 %112, i32* %3, align 4
  br label %283

113:                                              ; preds = %2
  %114 = load i32, i32* %4, align 4
  %115 = urem i32 %114, 16193
  store i32 %115, i32* %3, align 4
  br label %283

116:                                              ; preds = %2
  %117 = load i32, i32* %4, align 4
  %118 = urem i32 %117, 20399
  store i32 %118, i32* %3, align 4
  br label %283

119:                                              ; preds = %2
  %120 = load i32, i32* %4, align 4
  %121 = urem i32 %120, 25717
  store i32 %121, i32* %3, align 4
  br label %283

122:                                              ; preds = %2
  %123 = load i32, i32* %4, align 4
  %124 = urem i32 %123, 32401
  store i32 %124, i32* %3, align 4
  br label %283

125:                                              ; preds = %2
  %126 = load i32, i32* %4, align 4
  %127 = urem i32 %126, 40823
  store i32 %127, i32* %3, align 4
  br label %283

128:                                              ; preds = %2
  %129 = load i32, i32* %4, align 4
  %130 = urem i32 %129, 51437
  store i32 %130, i32* %3, align 4
  br label %283

131:                                              ; preds = %2
  %132 = load i32, i32* %4, align 4
  %133 = urem i32 %132, 64811
  store i32 %133, i32* %3, align 4
  br label %283

134:                                              ; preds = %2
  %135 = load i32, i32* %4, align 4
  %136 = urem i32 %135, 81649
  store i32 %136, i32* %3, align 4
  br label %283

137:                                              ; preds = %2
  %138 = load i32, i32* %4, align 4
  %139 = urem i32 %138, 102877
  store i32 %139, i32* %3, align 4
  br label %283

140:                                              ; preds = %2
  %141 = load i32, i32* %4, align 4
  %142 = urem i32 %141, 129607
  store i32 %142, i32* %3, align 4
  br label %283

143:                                              ; preds = %2
  %144 = load i32, i32* %4, align 4
  %145 = urem i32 %144, 163307
  store i32 %145, i32* %3, align 4
  br label %283

146:                                              ; preds = %2
  %147 = load i32, i32* %4, align 4
  %148 = urem i32 %147, 205759
  store i32 %148, i32* %3, align 4
  br label %283

149:                                              ; preds = %2
  %150 = load i32, i32* %4, align 4
  %151 = urem i32 %150, 259229
  store i32 %151, i32* %3, align 4
  br label %283

152:                                              ; preds = %2
  %153 = load i32, i32* %4, align 4
  %154 = urem i32 %153, 326617
  store i32 %154, i32* %3, align 4
  br label %283

155:                                              ; preds = %2
  %156 = load i32, i32* %4, align 4
  %157 = urem i32 %156, 411527
  store i32 %157, i32* %3, align 4
  br label %283

158:                                              ; preds = %2
  %159 = load i32, i32* %4, align 4
  %160 = urem i32 %159, 518509
  store i32 %160, i32* %3, align 4
  br label %283

161:                                              ; preds = %2
  %162 = load i32, i32* %4, align 4
  %163 = urem i32 %162, 653267
  store i32 %163, i32* %3, align 4
  br label %283

164:                                              ; preds = %2
  %165 = load i32, i32* %4, align 4
  %166 = urem i32 %165, 823117
  store i32 %166, i32* %3, align 4
  br label %283

167:                                              ; preds = %2
  %168 = load i32, i32* %4, align 4
  %169 = urem i32 %168, 1037059
  store i32 %169, i32* %3, align 4
  br label %283

170:                                              ; preds = %2
  %171 = load i32, i32* %4, align 4
  %172 = urem i32 %171, 1306601
  store i32 %172, i32* %3, align 4
  br label %283

173:                                              ; preds = %2
  %174 = load i32, i32* %4, align 4
  %175 = urem i32 %174, 1646237
  store i32 %175, i32* %3, align 4
  br label %283

176:                                              ; preds = %2
  %177 = load i32, i32* %4, align 4
  %178 = urem i32 %177, 2074129
  store i32 %178, i32* %3, align 4
  br label %283

179:                                              ; preds = %2
  %180 = load i32, i32* %4, align 4
  %181 = urem i32 %180, 2613229
  store i32 %181, i32* %3, align 4
  br label %283

182:                                              ; preds = %2
  %183 = load i32, i32* %4, align 4
  %184 = urem i32 %183, 3292489
  store i32 %184, i32* %3, align 4
  br label %283

185:                                              ; preds = %2
  %186 = load i32, i32* %4, align 4
  %187 = urem i32 %186, 4148279
  store i32 %187, i32* %3, align 4
  br label %283

188:                                              ; preds = %2
  %189 = load i32, i32* %4, align 4
  %190 = urem i32 %189, 5226491
  store i32 %190, i32* %3, align 4
  br label %283

191:                                              ; preds = %2
  %192 = load i32, i32* %4, align 4
  %193 = urem i32 %192, 6584983
  store i32 %193, i32* %3, align 4
  br label %283

194:                                              ; preds = %2
  %195 = load i32, i32* %4, align 4
  %196 = urem i32 %195, 8296553
  store i32 %196, i32* %3, align 4
  br label %283

197:                                              ; preds = %2
  %198 = load i32, i32* %4, align 4
  %199 = urem i32 %198, 10453007
  store i32 %199, i32* %3, align 4
  br label %283

200:                                              ; preds = %2
  %201 = load i32, i32* %4, align 4
  %202 = urem i32 %201, 13169977
  store i32 %202, i32* %3, align 4
  br label %283

203:                                              ; preds = %2
  %204 = load i32, i32* %4, align 4
  %205 = urem i32 %204, 16593127
  store i32 %205, i32* %3, align 4
  br label %283

206:                                              ; preds = %2
  %207 = load i32, i32* %4, align 4
  %208 = urem i32 %207, 20906033
  store i32 %208, i32* %3, align 4
  br label %283

209:                                              ; preds = %2
  %210 = load i32, i32* %4, align 4
  %211 = urem i32 %210, 26339969
  store i32 %211, i32* %3, align 4
  br label %283

212:                                              ; preds = %2
  %213 = load i32, i32* %4, align 4
  %214 = urem i32 %213, 33186281
  store i32 %214, i32* %3, align 4
  br label %283

215:                                              ; preds = %2
  %216 = load i32, i32* %4, align 4
  %217 = urem i32 %216, 41812097
  store i32 %217, i32* %3, align 4
  br label %283

218:                                              ; preds = %2
  %219 = load i32, i32* %4, align 4
  %220 = urem i32 %219, 52679969
  store i32 %220, i32* %3, align 4
  br label %283

221:                                              ; preds = %2
  %222 = load i32, i32* %4, align 4
  %223 = urem i32 %222, 66372617
  store i32 %223, i32* %3, align 4
  br label %283

224:                                              ; preds = %2
  %225 = load i32, i32* %4, align 4
  %226 = urem i32 %225, 83624237
  store i32 %226, i32* %3, align 4
  br label %283

227:                                              ; preds = %2
  %228 = load i32, i32* %4, align 4
  %229 = urem i32 %228, 105359939
  store i32 %229, i32* %3, align 4
  br label %283

230:                                              ; preds = %2
  %231 = load i32, i32* %4, align 4
  %232 = urem i32 %231, 132745199
  store i32 %232, i32* %3, align 4
  br label %283

233:                                              ; preds = %2
  %234 = load i32, i32* %4, align 4
  %235 = urem i32 %234, 167248483
  store i32 %235, i32* %3, align 4
  br label %283

236:                                              ; preds = %2
  %237 = load i32, i32* %4, align 4
  %238 = urem i32 %237, 210719881
  store i32 %238, i32* %3, align 4
  br label %283

239:                                              ; preds = %2
  %240 = load i32, i32* %4, align 4
  %241 = urem i32 %240, 265490441
  store i32 %241, i32* %3, align 4
  br label %283

242:                                              ; preds = %2
  %243 = load i32, i32* %4, align 4
  %244 = urem i32 %243, 334496971
  store i32 %244, i32* %3, align 4
  br label %283

245:                                              ; preds = %2
  %246 = load i32, i32* %4, align 4
  %247 = urem i32 %246, 421439783
  store i32 %247, i32* %3, align 4
  br label %283

248:                                              ; preds = %2
  %249 = load i32, i32* %4, align 4
  %250 = urem i32 %249, 530980861
  store i32 %250, i32* %3, align 4
  br label %283

251:                                              ; preds = %2
  %252 = load i32, i32* %4, align 4
  %253 = urem i32 %252, 668993977
  store i32 %253, i32* %3, align 4
  br label %283

254:                                              ; preds = %2
  %255 = load i32, i32* %4, align 4
  %256 = urem i32 %255, 842879579
  store i32 %256, i32* %3, align 4
  br label %283

257:                                              ; preds = %2
  %258 = load i32, i32* %4, align 4
  %259 = urem i32 %258, 1061961721
  store i32 %259, i32* %3, align 4
  br label %283

260:                                              ; preds = %2
  %261 = load i32, i32* %4, align 4
  %262 = urem i32 %261, 1337987929
  store i32 %262, i32* %3, align 4
  br label %283

263:                                              ; preds = %2
  %264 = load i32, i32* %4, align 4
  %265 = urem i32 %264, 1685759167
  store i32 %265, i32* %3, align 4
  br label %283

266:                                              ; preds = %2
  %267 = load i32, i32* %4, align 4
  %268 = urem i32 %267, 2123923447
  store i32 %268, i32* %3, align 4
  br label %283

269:                                              ; preds = %2
  %270 = load i32, i32* %4, align 4
  %271 = urem i32 %270, -1618991415
  store i32 %271, i32* %3, align 4
  br label %283

272:                                              ; preds = %2
  %273 = load i32, i32* %4, align 4
  %274 = urem i32 %273, -923448953
  store i32 %274, i32* %3, align 4
  br label %283

275:                                              ; preds = %2
  %276 = load i32, i32* %4, align 4
  %277 = urem i32 %276, -47120369
  store i32 %277, i32* %3, align 4
  br label %283

278:                                              ; preds = %2
  %279 = load i32, i32* %4, align 4
  %280 = urem i32 %279, -5
  store i32 %280, i32* %3, align 4
  br label %283

281:                                              ; preds = %2
  %282 = load i32, i32* %4, align 4
  store i32 %282, i32* %3, align 4
  br label %283

283:                                              ; preds = %281, %278, %275, %272, %269, %266, %263, %260, %257, %254, %251, %248, %245, %242, %239, %236, %233, %230, %227, %224, %221, %218, %215, %212, %209, %206, %203, %200, %197, %194, %191, %188, %185, %182, %179, %176, %173, %170, %167, %164, %161, %158, %155, %152, %149, %146, %143, %140, %137, %134, %131, %128, %125, %122, %119, %116, %113, %110, %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %7
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
