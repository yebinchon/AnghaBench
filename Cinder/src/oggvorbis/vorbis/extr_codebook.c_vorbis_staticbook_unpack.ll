; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_codebook.c_vorbis_staticbook_unpack.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_codebook.c_vorbis_staticbook_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64*, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @vorbis_staticbook_unpack(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %13 = call %struct.TYPE_10__* @_ogg_calloc(i32 1, i32 56)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = call i32 @oggpack_read(%struct.TYPE_11__* %16, i32 24)
  %18 = icmp ne i32 %17, 5653314
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %356

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = call i32 @oggpack_read(%struct.TYPE_11__* %21, i32 16)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = call i32 @oggpack_read(%struct.TYPE_11__* %25, i32 24)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %356

34:                                               ; preds = %20
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = call i32 @_ilog(i64 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = call i32 @_ilog(i64 %43)
  %45 = add nsw i32 %39, %44
  %46 = icmp sgt i32 %45, 24
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %356

48:                                               ; preds = %34
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = call i32 @oggpack_read(%struct.TYPE_11__* %49, i32 1)
  switch i32 %50, label %240 [
    i32 0, label %51
    i32 1, label %152
  ]

51:                                               ; preds = %48
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = call i32 @oggpack_read(%struct.TYPE_11__* %52, i32 1)
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %7, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 5
  %62 = mul nsw i32 %57, %61
  %63 = add nsw i32 %62, 7
  %64 = ashr i32 %63, 3
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = call i32 @oggpack_bytes(%struct.TYPE_11__* %68)
  %70 = sub nsw i32 %67, %69
  %71 = icmp sgt i32 %64, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %51
  br label %356

73:                                               ; preds = %51
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = mul i64 8, %77
  %79 = trunc i64 %78 to i32
  %80 = call i8* @_ogg_malloc(i32 %79)
  %81 = bitcast i8* %80 to i64*
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  store i64* %81, i64** %83, align 8
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %124

86:                                               ; preds = %73
  store i64 0, i64* %4, align 8
  br label %87

87:                                               ; preds = %120, %86
  %88 = load i64, i64* %4, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %123

94:                                               ; preds = %87
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = call i32 @oggpack_read(%struct.TYPE_11__* %95, i32 1)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = call i32 @oggpack_read(%struct.TYPE_11__* %99, i32 5)
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp eq i64 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %356

105:                                              ; preds = %98
  %106 = load i64, i64* %8, align 8
  %107 = add nsw i64 %106, 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %4, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64 %107, i64* %112, align 8
  br label %119

113:                                              ; preds = %94
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 3
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* %4, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %113, %105
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %4, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %4, align 8
  br label %87

123:                                              ; preds = %87
  br label %151

124:                                              ; preds = %73
  store i64 0, i64* %4, align 8
  br label %125

125:                                              ; preds = %147, %124
  %126 = load i64, i64* %4, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %126, %130
  br i1 %131, label %132, label %150

132:                                              ; preds = %125
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = call i32 @oggpack_read(%struct.TYPE_11__* %133, i32 5)
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %9, align 8
  %136 = load i64, i64* %9, align 8
  %137 = icmp eq i64 %136, -1
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %356

139:                                              ; preds = %132
  %140 = load i64, i64* %9, align 8
  %141 = add nsw i64 %140, 1
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 3
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* %4, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  store i64 %141, i64* %146, align 8
  br label %147

147:                                              ; preds = %139
  %148 = load i64, i64* %4, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %4, align 8
  br label %125

150:                                              ; preds = %125
  br label %151

151:                                              ; preds = %150, %123
  br label %241

152:                                              ; preds = %48
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %154 = call i32 @oggpack_read(%struct.TYPE_11__* %153, i32 5)
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %10, align 8
  %157 = load i64, i64* %10, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %356

160:                                              ; preds = %152
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = mul i64 8, %164
  %166 = trunc i64 %165 to i32
  %167 = call i8* @_ogg_malloc(i32 %166)
  %168 = bitcast i8* %167 to i64*
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 3
  store i64* %168, i64** %170, align 8
  store i64 0, i64* %4, align 8
  br label %171

171:                                              ; preds = %236, %160
  %172 = load i64, i64* %4, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = icmp slt i64 %172, %176
  br i1 %177, label %178, label %239

178:                                              ; preds = %171
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %4, align 8
  %185 = sub nsw i64 %183, %184
  %186 = call i32 @_ilog(i64 %185)
  %187 = call i32 @oggpack_read(%struct.TYPE_11__* %179, i32 %186)
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %11, align 8
  %189 = load i64, i64* %11, align 8
  %190 = icmp eq i64 %189, -1
  br i1 %190, label %191, label %192

191:                                              ; preds = %178
  br label %356

192:                                              ; preds = %178
  %193 = load i64, i64* %10, align 8
  %194 = icmp sgt i64 %193, 32
  br i1 %194, label %214, label %195

195:                                              ; preds = %192
  %196 = load i64, i64* %11, align 8
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %4, align 8
  %202 = sub nsw i64 %200, %201
  %203 = icmp sgt i64 %196, %202
  br i1 %203, label %214, label %204

204:                                              ; preds = %195
  %205 = load i64, i64* %11, align 8
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = load i64, i64* %11, align 8
  %209 = sub nsw i64 %208, 1
  %210 = load i64, i64* %10, align 8
  %211 = sub nsw i64 %210, 1
  %212 = ashr i64 %209, %211
  %213 = icmp sgt i64 %212, 1
  br i1 %213, label %214, label %215

214:                                              ; preds = %207, %195, %192
  br label %355

215:                                              ; preds = %207, %204
  %216 = load i64, i64* %10, align 8
  %217 = icmp sgt i64 %216, 32
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  br label %355

219:                                              ; preds = %215
  store i64 0, i64* %5, align 8
  br label %220

220:                                              ; preds = %231, %219
  %221 = load i64, i64* %5, align 8
  %222 = load i64, i64* %11, align 8
  %223 = icmp slt i64 %221, %222
  br i1 %223, label %224, label %236

224:                                              ; preds = %220
  %225 = load i64, i64* %10, align 8
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 3
  %228 = load i64*, i64** %227, align 8
  %229 = load i64, i64* %4, align 8
  %230 = getelementptr inbounds i64, i64* %228, i64 %229
  store i64 %225, i64* %230, align 8
  br label %231

231:                                              ; preds = %224
  %232 = load i64, i64* %5, align 8
  %233 = add nsw i64 %232, 1
  store i64 %233, i64* %5, align 8
  %234 = load i64, i64* %4, align 8
  %235 = add nsw i64 %234, 1
  store i64 %235, i64* %4, align 8
  br label %220

236:                                              ; preds = %220
  %237 = load i64, i64* %10, align 8
  %238 = add nsw i64 %237, 1
  store i64 %238, i64* %10, align 8
  br label %171

239:                                              ; preds = %171
  br label %241

240:                                              ; preds = %48
  br label %356

241:                                              ; preds = %239, %151
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %243 = call i32 @oggpack_read(%struct.TYPE_11__* %242, i32 4)
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 4
  store i32 %243, i32* %245, align 8
  switch i32 %243, label %352 [
    i32 0, label %246
    i32 1, label %247
    i32 2, label %247
  ]

246:                                              ; preds = %241
  br label %353

247:                                              ; preds = %241, %241
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %249 = call i32 @oggpack_read(%struct.TYPE_11__* %248, i32 32)
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 5
  store i32 %249, i32* %251, align 4
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %253 = call i32 @oggpack_read(%struct.TYPE_11__* %252, i32 32)
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 6
  store i32 %253, i32* %255, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %257 = call i32 @oggpack_read(%struct.TYPE_11__* %256, i32 4)
  %258 = add nsw i32 %257, 1
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 7
  store i32 %258, i32* %260, align 4
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %262 = call i32 @oggpack_read(%struct.TYPE_11__* %261, i32 1)
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 8
  store i32 %262, i32* %264, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 8
  %268 = icmp eq i32 %267, -1
  br i1 %268, label %269, label %270

269:                                              ; preds = %247
  br label %356

270:                                              ; preds = %247
  store i32 0, i32* %12, align 4
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  switch i32 %273, label %293 [
    i32 1, label %274
    i32 2, label %285
  ]

274:                                              ; preds = %270
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  br label %283

280:                                              ; preds = %274
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %282 = call i32 @_book_maptype1_quantvals(%struct.TYPE_10__* %281)
  br label %283

283:                                              ; preds = %280, %279
  %284 = phi i32 [ 0, %279 ], [ %282, %280 ]
  store i32 %284, i32* %12, align 4
  br label %293

285:                                              ; preds = %270
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = mul nsw i32 %288, %291
  store i32 %292, i32* %12, align 4
  br label %293

293:                                              ; preds = %270, %285, %283
  %294 = load i32, i32* %12, align 4
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 7
  %297 = load i32, i32* %296, align 4
  %298 = mul nsw i32 %294, %297
  %299 = add nsw i32 %298, 7
  %300 = ashr i32 %299, 3
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %305 = call i32 @oggpack_bytes(%struct.TYPE_11__* %304)
  %306 = sub nsw i32 %303, %305
  %307 = icmp sgt i32 %300, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %293
  br label %356

309:                                              ; preds = %293
  %310 = load i32, i32* %12, align 4
  %311 = sext i32 %310 to i64
  %312 = mul i64 4, %311
  %313 = trunc i64 %312 to i32
  %314 = call i8* @_ogg_malloc(i32 %313)
  %315 = bitcast i8* %314 to i32*
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 9
  store i32* %315, i32** %317, align 8
  store i64 0, i64* %4, align 8
  br label %318

318:                                              ; preds = %334, %309
  %319 = load i64, i64* %4, align 8
  %320 = load i32, i32* %12, align 4
  %321 = sext i32 %320 to i64
  %322 = icmp slt i64 %319, %321
  br i1 %322, label %323, label %337

323:                                              ; preds = %318
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 7
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @oggpack_read(%struct.TYPE_11__* %324, i32 %327)
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 9
  %331 = load i32*, i32** %330, align 8
  %332 = load i64, i64* %4, align 8
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  store i32 %328, i32* %333, align 4
  br label %334

334:                                              ; preds = %323
  %335 = load i64, i64* %4, align 8
  %336 = add nsw i64 %335, 1
  store i64 %336, i64* %4, align 8
  br label %318

337:                                              ; preds = %318
  %338 = load i32, i32* %12, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %351

340:                                              ; preds = %337
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 9
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %12, align 4
  %345 = sub nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, -1
  br i1 %349, label %350, label %351

350:                                              ; preds = %340
  br label %356

351:                                              ; preds = %340, %337
  br label %353

352:                                              ; preds = %241
  br label %355

353:                                              ; preds = %351, %246
  %354 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %354, %struct.TYPE_10__** %2, align 8
  br label %359

355:                                              ; preds = %352, %218, %214
  br label %356

356:                                              ; preds = %355, %350, %308, %269, %240, %191, %159, %138, %104, %72, %47, %33, %19
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %358 = call i32 @vorbis_staticbook_destroy(%struct.TYPE_10__* %357)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %359

359:                                              ; preds = %356, %353
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %360
}

declare dso_local %struct.TYPE_10__* @_ogg_calloc(i32, i32) #1

declare dso_local i32 @oggpack_read(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @_ilog(i64) #1

declare dso_local i32 @oggpack_bytes(%struct.TYPE_11__*) #1

declare dso_local i8* @_ogg_malloc(i32) #1

declare dso_local i32 @_book_maptype1_quantvals(%struct.TYPE_10__*) #1

declare dso_local i32 @vorbis_staticbook_destroy(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
