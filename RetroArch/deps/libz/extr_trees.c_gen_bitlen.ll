; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_trees.c_gen_bitlen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_trees.c_gen_bitlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i64*, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32*, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i8* }

@MAX_BITS = common dso_local global i32 0, align 4
@HEAP_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\0Abit length overflow\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"code %d bits %d->%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*)* @gen_bitlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_bitlen(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %5, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %8, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %55, %2
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @MAX_BITS, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %44

58:                                               ; preds = %44
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %176, %58
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @HEAP_SIZE, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %179

79:                                               ; preds = %75
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %12, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %79
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %17, align 4
  br label %106

106:                                              ; preds = %102, %79
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i32 %110, i32* %115, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %106
  br label %176

120:                                              ; preds = %106
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  store i32 0, i32* %15, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %120
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %9, align 4
  %136 = sub nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %15, align 4
  br label %140

140:                                              ; preds = %132, %120
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  store i8* %146, i8** %16, align 8
  %147 = load i8*, i8** %16, align 8
  %148 = ptrtoint i8* %147 to i32
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %149, %150
  %152 = mul nsw i32 %148, %151
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %158 = icmp ne %struct.TYPE_10__* %157, null
  br i1 %158, label %159, label %175

159:                                              ; preds = %140
  %160 = load i8*, i8** %16, align 8
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %167, %168
  %170 = mul nsw i32 %161, %169
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %159, %140
  br label %176

176:                                              ; preds = %175, %119
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %75

179:                                              ; preds = %75
  %180 = load i32, i32* %17, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  br label %322

183:                                              ; preds = %179
  %184 = load i32, i32* @stderr, align 4
  %185 = call i32 @Trace(i32 ptrtoint ([22 x i8]* @.str to i32))
  br label %186

186:                                              ; preds = %229, %183
  %187 = load i32, i32* %10, align 4
  %188 = sub nsw i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %189

189:                                              ; preds = %198, %186
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %189
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %14, align 4
  br label %189

201:                                              ; preds = %189
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %207, align 4
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 2
  store i32 %218, i32* %216, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %224, align 4
  %227 = load i32, i32* %17, align 4
  %228 = sub nsw i32 %227, 2
  store i32 %228, i32* %17, align 4
  br label %229

229:                                              ; preds = %201
  %230 = load i32, i32* %17, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %186, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %10, align 4
  store i32 %233, i32* %14, align 4
  br label %234

234:                                              ; preds = %319, %232
  %235 = load i32, i32* %14, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %322

237:                                              ; preds = %234
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %14, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %12, align 4
  br label %245

245:                                              ; preds = %315, %261, %237
  %246 = load i32, i32* %12, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %318

248:                                              ; preds = %245
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  %251 = load i64*, i64** %250, align 8
  %252 = load i32, i32* %11, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %251, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %13, align 4
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* %6, align 4
  %260 = icmp sgt i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %248
  br label %245

262:                                              ; preds = %248
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %264 = load i32, i32* %13, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %14, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %315

271:                                              ; preds = %262
  %272 = load i32, i32* @stderr, align 4
  %273 = load i32, i32* %13, align 4
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* %14, align 4
  %281 = call i32 @Trace(i32 %280)
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %285 = load i32, i32* %13, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = sext i32 %289 to i64
  %291 = sub nsw i64 %283, %290
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %293 = load i32, i32* %13, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 2
  %297 = load i8*, i8** %296, align 8
  %298 = ptrtoint i8* %297 to i64
  %299 = mul nsw i64 %291, %298
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = add nsw i64 %303, %299
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %301, align 8
  %306 = load i32, i32* %14, align 4
  %307 = sext i32 %306 to i64
  %308 = inttoptr i64 %307 to i8*
  %309 = ptrtoint i8* %308 to i32
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %311 = load i32, i32* %13, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 0
  store i32 %309, i32* %314, align 8
  br label %315

315:                                              ; preds = %271, %262
  %316 = load i32, i32* %12, align 4
  %317 = add nsw i32 %316, -1
  store i32 %317, i32* %12, align 4
  br label %245

318:                                              ; preds = %245
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %14, align 4
  %321 = add nsw i32 %320, -1
  store i32 %321, i32* %14, align 4
  br label %234

322:                                              ; preds = %182, %234
  ret void
}

declare dso_local i32 @Trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
