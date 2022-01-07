; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_Update_audctl.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_Update_audctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8)* @Update_audctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Update_audctl(%struct.TYPE_3__* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8 %1, i8* %4, align 1
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 64
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 32
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 16
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i8, i8* %4, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 8
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i8, i8* %4, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 2
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i8, i8* %4, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %2
  store i32 114, i32* %11, align 4
  br label %56

55:                                               ; preds = %2
  store i32 28, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %15, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %77

77:                                               ; preds = %76, %70
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  store i32 1, i32* %12, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 1, i32* %13, align 4
  br label %87

87:                                               ; preds = %86, %83
  br label %88

88:                                               ; preds = %87, %77
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  store i32 1, i32* %14, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 1, i32* %15, align 4
  br label %98

98:                                               ; preds = %97, %94
  br label %99

99:                                               ; preds = %98, %88
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %99
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %16, align 4
  br label %119

111:                                              ; preds = %102
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = udiv i32 %114, %117
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %111, %107
  br label %120

120:                                              ; preds = %119, %99
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %157

123:                                              ; preds = %120
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %123
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, 256
  store i32 %137, i32* %17, align 4
  br label %147

138:                                              ; preds = %128
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 256
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sdiv i32 %142, %145
  store i32 %146, i32* %17, align 4
  br label %147

147:                                              ; preds = %138, %133
  br label %156

148:                                              ; preds = %123
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sdiv i32 %151, %154
  store i32 %155, i32* %17, align 4
  br label %156

156:                                              ; preds = %148, %147
  br label %157

157:                                              ; preds = %156, %120
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %178

160:                                              ; preds = %157
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %18, align 4
  br label %177

169:                                              ; preds = %160
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = udiv i32 %172, %175
  store i32 %176, i32* %18, align 4
  br label %177

177:                                              ; preds = %169, %165
  br label %178

178:                                              ; preds = %177, %157
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %207

181:                                              ; preds = %178
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %181
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 4
  %195 = sdiv i32 %194, 256
  store i32 %195, i32* %19, align 4
  br label %205

196:                                              ; preds = %186
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 4
  %200 = sdiv i32 %199, 256
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = sdiv i32 %200, %203
  store i32 %204, i32* %19, align 4
  br label %205

205:                                              ; preds = %196, %191
  br label %206

206:                                              ; preds = %205, %181
  br label %207

207:                                              ; preds = %206, %178
  %208 = load i32, i32* %12, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %207
  %211 = load i32, i32* %5, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i32, i32* %16, align 4
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 4
  br label %223

217:                                              ; preds = %210
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %11, align 4
  %220 = mul i32 %218, %219
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %217, %213
  br label %224

224:                                              ; preds = %223, %207
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %257

227:                                              ; preds = %224
  %228 = load i32, i32* %7, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %250

230:                                              ; preds = %227
  %231 = load i32, i32* %5, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = load i32, i32* %17, align 4
  %235 = mul i32 %234, 256
  %236 = load i32, i32* %16, align 4
  %237 = add i32 %235, %236
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 6
  store i32 %237, i32* %239, align 4
  br label %249

240:                                              ; preds = %230
  %241 = load i32, i32* %17, align 4
  %242 = mul i32 %241, 256
  %243 = load i32, i32* %16, align 4
  %244 = add i32 %242, %243
  %245 = load i32, i32* %11, align 4
  %246 = mul i32 %244, %245
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 6
  store i32 %246, i32* %248, align 4
  br label %249

249:                                              ; preds = %240, %233
  br label %256

250:                                              ; preds = %227
  %251 = load i32, i32* %17, align 4
  %252 = load i32, i32* %11, align 4
  %253 = mul i32 %251, %252
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 6
  store i32 %253, i32* %255, align 4
  br label %256

256:                                              ; preds = %250, %249
  br label %257

257:                                              ; preds = %256, %224
  %258 = load i32, i32* %14, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %274

260:                                              ; preds = %257
  %261 = load i32, i32* %6, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %260
  %264 = load i32, i32* %18, align 4
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 7
  store i32 %264, i32* %266, align 4
  br label %273

267:                                              ; preds = %260
  %268 = load i32, i32* %18, align 4
  %269 = load i32, i32* %11, align 4
  %270 = mul i32 %268, %269
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 7
  store i32 %270, i32* %272, align 4
  br label %273

273:                                              ; preds = %267, %263
  br label %274

274:                                              ; preds = %273, %257
  %275 = load i32, i32* %15, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %301

277:                                              ; preds = %274
  %278 = load i32, i32* %8, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %300

280:                                              ; preds = %277
  %281 = load i32, i32* %6, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %280
  %284 = load i32, i32* %19, align 4
  %285 = mul i32 %284, 256
  %286 = load i32, i32* %18, align 4
  %287 = add i32 %285, %286
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 8
  store i32 %287, i32* %289, align 4
  br label %299

290:                                              ; preds = %280
  %291 = load i32, i32* %19, align 4
  %292 = mul i32 %291, 256
  %293 = load i32, i32* %18, align 4
  %294 = add i32 %292, %293
  %295 = load i32, i32* %11, align 4
  %296 = mul i32 %294, %295
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 8
  store i32 %296, i32* %298, align 4
  br label %299

299:                                              ; preds = %290, %283
  br label %300

300:                                              ; preds = %299, %277
  br label %301

301:                                              ; preds = %300, %274
  %302 = load i32, i32* %5, align 4
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 3
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* %6, align 4
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 4
  store i32 %305, i32* %307, align 4
  %308 = load i32, i32* %7, align 4
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 4
  %311 = load i32, i32* %8, align 4
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 2
  store i32 %311, i32* %313, align 4
  %314 = load i32, i32* %9, align 4
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 9
  store i32 %314, i32* %316, align 4
  %317 = load i32, i32* %10, align 4
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 10
  store i32 %317, i32* %319, align 4
  %320 = load i32, i32* %11, align 4
  %321 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 0
  store i32 %320, i32* %322, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
