; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fmvc.c_decode_type1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fmvc.c_decode_type1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @decode_type1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_type1(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %311, %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @bytestream2_get_bytes_left(i32* %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %312

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %208, %16
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @bytestream2_get_bytes_left(i32* %18)
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %209

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %84, %21
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @bytestream2_get_bytes_left(i32* %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %85

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @bytestream2_get_byte(i32* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp uge i32 %29, 32
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %85

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %85

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @bytestream2_get_byte(i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ult i32 %42, 248
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 32
  store i32 %46, i32* %5, align 4
  br label %85

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = sub i32 %48, 248
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  store i32 256, i32* %6, align 4
  br label %53

53:                                               ; preds = %58, %52
  %54 = load i32, i32* %6, align 4
  %55 = mul i32 %54, 2
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %53, label %61

61:                                               ; preds = %58
  br label %63

62:                                               ; preds = %47
  store i32 280, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %61
  br label %64

64:                                               ; preds = %82, %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @bytestream2_get_le32(i32* %66)
  %68 = call i32 @bytestream2_put_le32(%struct.TYPE_6__* %65, i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @bytestream2_get_le32(i32* %70)
  %72 = call i32 @bytestream2_put_le32(%struct.TYPE_6__* %69, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = sub i32 %73, 8
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32*, i32** %3, align 8
  %80 = call i64 @bytestream2_get_bytes_left(i32* %79)
  %81 = icmp sgt i64 %80, 0
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi i1 [ false, %75 ], [ %81, %78 ]
  br i1 %83, label %64, label %84

84:                                               ; preds = %82
  br label %22

85:                                               ; preds = %44, %38, %34, %22
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %155, label %88

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %103, %88
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @bytestream2_get_byte(i32* %91)
  %93 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %90, i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = add i32 %94, -1
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32*, i32** %3, align 8
  %101 = call i64 @bytestream2_get_bytes_left(i32* %100)
  %102 = icmp sgt i64 %101, 0
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi i1 [ false, %96 ], [ %102, %99 ]
  br i1 %104, label %89, label %105

105:                                              ; preds = %103
  br label %106

106:                                              ; preds = %116, %105
  %107 = load i32*, i32** %3, align 8
  %108 = call i64 @bytestream2_get_bytes_left(i32* %107)
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %154

110:                                              ; preds = %106
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @bytestream2_get_byte(i32* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp uge i32 %113, 32
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %154

116:                                              ; preds = %110
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %122, %125
  %127 = call i32 @bytestream2_init(i32* %11, i64 %119, i64 %126)
  %128 = load i32, i32* %5, align 4
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @bytestream2_get_byte(i32* %129)
  %131 = mul nsw i32 32, %130
  %132 = or i32 %128, %131
  %133 = sub i32 0, %132
  %134 = sub i32 %133, 1
  store i32 %134, i32* %9, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %135)
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* @SEEK_SET, align 4
  %140 = call i32 @bytestream2_seek(i32* %11, i32 %138, i32 %139)
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = call i32 @bytestream2_get_byte(i32* %11)
  %143 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %141, i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = call i32 @bytestream2_get_byte(i32* %11)
  %146 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %144, i32 %145)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %148 = call i32 @bytestream2_get_byte(i32* %11)
  %149 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %147, i32 %148)
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @bytestream2_get_byte(i32* %151)
  %153 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %150, i32 %152)
  br label %106

154:                                              ; preds = %115, %106
  br label %155

155:                                              ; preds = %154, %85
  store i32 0, i32* %7, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp ult i32 %156, 64
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %209

159:                                              ; preds = %155
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %165, %168
  %170 = call i32 @bytestream2_init(i32* %10, i64 %162, i64 %169)
  %171 = load i32, i32* %5, align 4
  %172 = and i32 %171, 31
  %173 = load i32*, i32** %3, align 8
  %174 = call i32 @bytestream2_get_byte(i32* %173)
  %175 = mul nsw i32 32, %174
  %176 = or i32 %172, %175
  %177 = sub i32 0, %176
  %178 = sub i32 %177, 1
  store i32 %178, i32* %9, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %180 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %179)
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* @SEEK_SET, align 4
  %184 = call i32 @bytestream2_seek(i32* %10, i32 %182, i32 %183)
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %186 = call i32 @bytestream2_get_byte(i32* %10)
  %187 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %185, i32 %186)
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %189 = call i32 @bytestream2_get_byte(i32* %10)
  %190 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %188, i32 %189)
  %191 = load i32, i32* %5, align 4
  %192 = lshr i32 %191, 5
  %193 = sub i32 %192, 1
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %206, %159
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %196 = call i32 @bytestream2_get_byte(i32* %10)
  %197 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %195, i32 %196)
  %198 = load i32, i32* %6, align 4
  %199 = add i32 %198, -1
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %194
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = call i64 @bytestream2_get_bytes_left(i32* %10)
  %205 = icmp sgt i64 %204, 0
  br label %206

206:                                              ; preds = %203, %200
  %207 = phi i1 [ false, %200 ], [ %205, %203 ]
  br i1 %207, label %194, label %208

208:                                              ; preds = %206
  br label %17

209:                                              ; preds = %158, %17
  %210 = load i32, i32* %5, align 4
  %211 = and i32 %210, 31
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %241, label %214

214:                                              ; preds = %209
  %215 = load i32*, i32** %3, align 8
  %216 = call i32 @bytestream2_peek_byte(i32* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %235, label %218

218:                                              ; preds = %214
  br label %219

219:                                              ; preds = %232, %218
  %220 = load i32*, i32** %3, align 8
  %221 = call i32 @bytestream2_skip(i32* %220, i32 1)
  %222 = load i32, i32* %6, align 4
  %223 = add i32 %222, 255
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %219
  %225 = load i32*, i32** %3, align 8
  %226 = call i32 @bytestream2_peek_byte(i32* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %224
  %229 = load i32*, i32** %3, align 8
  %230 = call i64 @bytestream2_get_bytes_left(i32* %229)
  %231 = icmp sgt i64 %230, 0
  br label %232

232:                                              ; preds = %228, %224
  %233 = phi i1 [ false, %224 ], [ %231, %228 ]
  br i1 %233, label %219, label %234

234:                                              ; preds = %232
  br label %235

235:                                              ; preds = %234, %214
  %236 = load i32*, i32** %3, align 8
  %237 = call i32 @bytestream2_get_byte(i32* %236)
  %238 = add nsw i32 %237, 31
  %239 = load i32, i32* %6, align 4
  %240 = add i32 %239, %238
  store i32 %240, i32* %6, align 4
  br label %241

241:                                              ; preds = %235, %209
  %242 = load i32*, i32** %3, align 8
  %243 = call i32 @bytestream2_get_byte(i32* %242)
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %9, align 4
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = sub nsw i64 %250, %253
  %255 = call i32 @bytestream2_init(i32* %10, i64 %247, i64 %254)
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %257 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %256)
  %258 = load i32, i32* %9, align 4
  %259 = add nsw i32 %257, %258
  %260 = load i32*, i32** %3, align 8
  %261 = call i32 @bytestream2_get_byte(i32* %260)
  %262 = shl i32 %261, 8
  %263 = sub nsw i32 %259, %262
  %264 = load i32, i32* @SEEK_SET, align 4
  %265 = call i32 @bytestream2_seek(i32* %10, i32 %263, i32 %264)
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %267 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %266)
  %268 = call i32 @bytestream2_tell(i32* %10)
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %241
  br label %312

271:                                              ; preds = %241
  %272 = load i32, i32* %6, align 4
  %273 = icmp ult i32 %272, 5
  br i1 %273, label %280, label %274

274:                                              ; preds = %271
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %276 = call i32 @bytestream2_tell_p(%struct.TYPE_6__* %275)
  %277 = call i32 @bytestream2_tell(i32* %10)
  %278 = sub nsw i32 %276, %277
  %279 = icmp slt i32 %278, 4
  br i1 %279, label %280, label %290

280:                                              ; preds = %274, %271
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %282 = call i32 @bytestream2_get_byte(i32* %10)
  %283 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %281, i32 %282)
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %285 = call i32 @bytestream2_get_byte(i32* %10)
  %286 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %284, i32 %285)
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %288 = call i32 @bytestream2_get_byte(i32* %10)
  %289 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %287, i32 %288)
  br label %296

290:                                              ; preds = %274
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %292 = call i32 @bytestream2_get_le32(i32* %10)
  %293 = call i32 @bytestream2_put_le32(%struct.TYPE_6__* %291, i32 %292)
  %294 = load i32, i32* %6, align 4
  %295 = add i32 %294, -1
  store i32 %295, i32* %6, align 4
  br label %296

296:                                              ; preds = %290, %280
  br label %297

297:                                              ; preds = %309, %296
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %299 = call i32 @bytestream2_get_byte(i32* %10)
  %300 = call i32 @bytestream2_put_byte(%struct.TYPE_6__* %298, i32 %299)
  %301 = load i32, i32* %6, align 4
  %302 = add i32 %301, -1
  store i32 %302, i32* %6, align 4
  br label %303

303:                                              ; preds = %297
  %304 = load i32, i32* %6, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = call i64 @bytestream2_get_bytes_left(i32* %10)
  %308 = icmp sgt i64 %307, 0
  br label %309

309:                                              ; preds = %306, %303
  %310 = phi i1 [ false, %303 ], [ %308, %306 ]
  br i1 %310, label %297, label %311

311:                                              ; preds = %309
  br label %12

312:                                              ; preds = %270, %12
  ret i32 0
}

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_put_le32(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_put_byte(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i64, i64) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_tell_p(%struct.TYPE_6__*) #1

declare dso_local i32 @bytestream2_peek_byte(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
