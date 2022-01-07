; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_read_2bit_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_read_2bit_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"line overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32, i8***, i32, i32, i8**, i32)* @dvbsub_read_2bit_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsub_read_2bit_string(i32* %0, i8** %1, i32 %2, i8*** %3, i32 %4, i32 %5, i8** %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8***, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8*** %3, i8**** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8** %6, i8*** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i8***, i8**** %13, align 8
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %14, align 4
  %26 = shl i32 %25, 3
  %27 = call i32 @init_get_bits(i32* %18, i8** %24, i32 %26)
  %28 = load i32, i32* %17, align 4
  %29 = load i8**, i8*** %11, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8** %31, i8*** %11, align 8
  br label %32

32:                                               ; preds = %284, %8
  %33 = call i32 @get_bits_count(i32* %18)
  %34 = load i32, i32* %14, align 4
  %35 = shl i32 %34, 3
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i1 [ false, %32 ], [ %40, %37 ]
  br i1 %42, label %43, label %285

43:                                               ; preds = %41
  %44 = call i32 @get_bits(i32* %18, i32 2)
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %19, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %19, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %71

53:                                               ; preds = %50, %47
  %54 = load i8**, i8*** %16, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i8**, i8*** %16, align 8
  %58 = load i32, i32* %19, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i8**, i8*** %11, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %11, align 8
  store i8* %61, i8** %62, align 8
  br label %70

64:                                               ; preds = %53
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load i8**, i8*** %11, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %11, align 8
  store i8* %67, i8** %68, align 8
  br label %70

70:                                               ; preds = %64, %56
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i32, i32* %21, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %21, align 4
  br label %284

74:                                               ; preds = %43
  %75 = call i32 @get_bits1(i32* %18)
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %122

78:                                               ; preds = %74
  %79 = call i32 @get_bits(i32* %18, i32 3)
  %80 = add nsw i32 %79, 3
  store i32 %80, i32* %20, align 4
  %81 = call i32 @get_bits(i32* %18, i32 2)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i32, i32* %19, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %21, align 4
  br label %121

91:                                               ; preds = %84, %78
  %92 = load i8**, i8*** %16, align 8
  %93 = icmp ne i8** %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i8**, i8*** %16, align 8
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %19, align 4
  br label %101

101:                                              ; preds = %94, %91
  br label %102

102:                                              ; preds = %112, %101
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %20, align 4
  %105 = icmp sgt i32 %103, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %107, %108
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i1 [ false, %102 ], [ %109, %106 ]
  br i1 %111, label %112, label %120

112:                                              ; preds = %110
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = load i8**, i8*** %11, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i32 1
  store i8** %117, i8*** %11, align 8
  store i8* %115, i8** %116, align 8
  %118 = load i32, i32* %21, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %21, align 4
  br label %102

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %87
  br label %283

122:                                              ; preds = %74
  %123 = call i32 @get_bits1(i32* %18)
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* %19, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %265

126:                                              ; preds = %122
  %127 = call i32 @get_bits(i32* %18, i32 2)
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* %19, align 4
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %174

130:                                              ; preds = %126
  %131 = call i32 @get_bits(i32* %18, i32 4)
  %132 = add nsw i32 %131, 12
  store i32 %132, i32* %20, align 4
  %133 = call i32 @get_bits(i32* %18, i32 2)
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load i32, i32* %19, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %21, align 4
  br label %173

143:                                              ; preds = %136, %130
  %144 = load i8**, i8*** %16, align 8
  %145 = icmp ne i8** %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load i8**, i8*** %16, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* %19, align 4
  br label %153

153:                                              ; preds = %146, %143
  br label %154

154:                                              ; preds = %164, %153
  %155 = load i32, i32* %20, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %20, align 4
  %157 = icmp sgt i32 %155, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i32, i32* %21, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp slt i32 %159, %160
  br label %162

162:                                              ; preds = %158, %154
  %163 = phi i1 [ false, %154 ], [ %161, %158 ]
  br i1 %163, label %164, label %172

164:                                              ; preds = %162
  %165 = load i32, i32* %19, align 4
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = load i8**, i8*** %11, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i32 1
  store i8** %169, i8*** %11, align 8
  store i8* %167, i8** %168, align 8
  %170 = load i32, i32* %21, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %21, align 4
  br label %154

172:                                              ; preds = %162
  br label %173

173:                                              ; preds = %172, %139
  br label %264

174:                                              ; preds = %126
  %175 = load i32, i32* %19, align 4
  %176 = icmp eq i32 %175, 3
  br i1 %176, label %177, label %221

177:                                              ; preds = %174
  %178 = call i32 @get_bits(i32* %18, i32 8)
  %179 = add nsw i32 %178, 29
  store i32 %179, i32* %20, align 4
  %180 = call i32 @get_bits(i32* %18, i32 2)
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %15, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %190

183:                                              ; preds = %177
  %184 = load i32, i32* %19, align 4
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* %21, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %21, align 4
  br label %220

190:                                              ; preds = %183, %177
  %191 = load i8**, i8*** %16, align 8
  %192 = icmp ne i8** %191, null
  br i1 %192, label %193, label %200

193:                                              ; preds = %190
  %194 = load i8**, i8*** %16, align 8
  %195 = load i32, i32* %19, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = ptrtoint i8* %198 to i32
  store i32 %199, i32* %19, align 4
  br label %200

200:                                              ; preds = %193, %190
  br label %201

201:                                              ; preds = %211, %200
  %202 = load i32, i32* %20, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %20, align 4
  %204 = icmp sgt i32 %202, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* %12, align 4
  %208 = icmp slt i32 %206, %207
  br label %209

209:                                              ; preds = %205, %201
  %210 = phi i1 [ false, %201 ], [ %208, %205 ]
  br i1 %210, label %211, label %219

211:                                              ; preds = %209
  %212 = load i32, i32* %19, align 4
  %213 = sext i32 %212 to i64
  %214 = inttoptr i64 %213 to i8*
  %215 = load i8**, i8*** %11, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i32 1
  store i8** %216, i8*** %11, align 8
  store i8* %214, i8** %215, align 8
  %217 = load i32, i32* %21, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %21, align 4
  br label %201

219:                                              ; preds = %209
  br label %220

220:                                              ; preds = %219, %186
  br label %263

221:                                              ; preds = %174
  %222 = load i32, i32* %19, align 4
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %253

224:                                              ; preds = %221
  %225 = load i8**, i8*** %16, align 8
  %226 = icmp ne i8** %225, null
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load i8**, i8*** %16, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 0
  %230 = load i8*, i8** %229, align 8
  %231 = ptrtoint i8* %230 to i32
  store i32 %231, i32* %19, align 4
  br label %233

232:                                              ; preds = %224
  store i32 0, i32* %19, align 4
  br label %233

233:                                              ; preds = %232, %227
  store i32 2, i32* %20, align 4
  br label %234

234:                                              ; preds = %244, %233
  %235 = load i32, i32* %20, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %20, align 4
  %237 = icmp sgt i32 %235, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = load i32, i32* %21, align 4
  %240 = load i32, i32* %12, align 4
  %241 = icmp slt i32 %239, %240
  br label %242

242:                                              ; preds = %238, %234
  %243 = phi i1 [ false, %234 ], [ %241, %238 ]
  br i1 %243, label %244, label %252

244:                                              ; preds = %242
  %245 = load i32, i32* %19, align 4
  %246 = sext i32 %245 to i64
  %247 = inttoptr i64 %246 to i8*
  %248 = load i8**, i8*** %11, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i32 1
  store i8** %249, i8*** %11, align 8
  store i8* %247, i8** %248, align 8
  %250 = load i32, i32* %21, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %21, align 4
  br label %234

252:                                              ; preds = %242
  br label %262

253:                                              ; preds = %221
  %254 = call i32 @get_bits_count(i32* %18)
  %255 = add nsw i32 %254, 7
  %256 = ashr i32 %255, 3
  %257 = load i8***, i8**** %13, align 8
  %258 = load i8**, i8*** %257, align 8
  %259 = sext i32 %256 to i64
  %260 = getelementptr inbounds i8*, i8** %258, i64 %259
  store i8** %260, i8*** %257, align 8
  %261 = load i32, i32* %21, align 4
  store i32 %261, i32* %9, align 4
  br label %301

262:                                              ; preds = %252
  br label %263

263:                                              ; preds = %262, %220
  br label %264

264:                                              ; preds = %263, %173
  br label %282

265:                                              ; preds = %122
  %266 = load i8**, i8*** %16, align 8
  %267 = icmp ne i8** %266, null
  br i1 %267, label %268, label %273

268:                                              ; preds = %265
  %269 = load i8**, i8*** %16, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 0
  %271 = load i8*, i8** %270, align 8
  %272 = ptrtoint i8* %271 to i32
  store i32 %272, i32* %19, align 4
  br label %274

273:                                              ; preds = %265
  store i32 0, i32* %19, align 4
  br label %274

274:                                              ; preds = %273, %268
  %275 = load i32, i32* %19, align 4
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to i8*
  %278 = load i8**, i8*** %11, align 8
  %279 = getelementptr inbounds i8*, i8** %278, i32 1
  store i8** %279, i8*** %11, align 8
  store i8* %277, i8** %278, align 8
  %280 = load i32, i32* %21, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %21, align 4
  br label %282

282:                                              ; preds = %274, %264
  br label %283

283:                                              ; preds = %282, %121
  br label %284

284:                                              ; preds = %283, %71
  br label %32

285:                                              ; preds = %41
  %286 = call i32 @get_bits(i32* %18, i32 6)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = load i32*, i32** %10, align 8
  %290 = load i32, i32* @AV_LOG_ERROR, align 4
  %291 = call i32 @av_log(i32* %289, i32 %290, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %292

292:                                              ; preds = %288, %285
  %293 = call i32 @get_bits_count(i32* %18)
  %294 = add nsw i32 %293, 7
  %295 = ashr i32 %294, 3
  %296 = load i8***, i8**** %13, align 8
  %297 = load i8**, i8*** %296, align 8
  %298 = sext i32 %295 to i64
  %299 = getelementptr inbounds i8*, i8** %297, i64 %298
  store i8** %299, i8*** %296, align 8
  %300 = load i32, i32* %21, align 4
  store i32 %300, i32* %9, align 4
  br label %301

301:                                              ; preds = %292, %253
  %302 = load i32, i32* %9, align 4
  ret i32 %302
}

declare dso_local i32 @init_get_bits(i32*, i8**, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
