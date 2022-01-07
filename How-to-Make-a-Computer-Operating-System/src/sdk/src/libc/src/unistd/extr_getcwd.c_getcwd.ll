; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/unistd/extr_getcwd.c_getcwd.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/unistd/extr_getcwd.c_getcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }
%struct.dirent = type { i8*, i64 }

@getcwd.dots = internal constant [241 x i8] c"../../../../../../../../../../../../../../../../../../../../../../../        ../../../../../../../../../../../../../../../../../../../../../../../../../../        ../../../../../../../../../../../../../../../../../../../../../../../../../..\00", align 16
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getcwd(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.stat, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.dirent*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* getelementptr inbounds ([241 x i8], [241 x i8]* @getcwd.dots, i64 1, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([241 x i8], [241 x i8]* @getcwd.dots, i64 0, i64 0), i8** %7, align 8
  store i64 240, i64* %8, align 8
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i8* null, i8** %3, align 8
  br label %393

36:                                               ; preds = %32
  %37 = load i32, i32* @PATH_MAX, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %16, align 8
  br label %40

40:                                               ; preds = %36, %2
  %41 = load i8*, i8** %4, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8*, i8** %4, align 8
  store i8* %44, i8** %13, align 8
  br label %52

45:                                               ; preds = %40
  %46 = load i64, i64* %16, align 8
  %47 = call i8* @malloc(i64 %46)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i8* null, i8** %3, align 8
  br label %393

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i8*, i8** %13, align 8
  %54 = load i64, i64* %16, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %14, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %57, i8** %14, align 8
  store i8 0, i8* %57, align 1
  %58 = call i64 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.stat* %15)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %386

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %12, align 8
  %66 = call i64 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %15)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %386

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %9, align 8
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %11, align 8
  br label %74

74:                                               ; preds = %347, %69
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp eq i64 %79, %80
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i1 [ false, %74 ], [ %81, %78 ]
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %350

85:                                               ; preds = %82
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = icmp eq i8* %86, %87
  br i1 %88, label %89, label %131

89:                                               ; preds = %85
  %90 = load i8*, i8** %7, align 8
  %91 = icmp eq i8* %90, getelementptr inbounds ([241 x i8], [241 x i8]* @getcwd.dots, i64 0, i64 0)
  br i1 %91, label %92, label %107

92:                                               ; preds = %89
  %93 = load i64, i64* %8, align 8
  %94 = mul i64 %93, 2
  %95 = add i64 %94, 1
  %96 = call i8* @malloc(i64 %95)
  store i8* %96, i8** %22, align 8
  %97 = load i8*, i8** %22, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %379

100:                                              ; preds = %92
  %101 = load i8*, i8** %22, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i8* @memcpy(i8* %101, i8* getelementptr inbounds ([241 x i8], [241 x i8]* @getcwd.dots, i64 0, i64 0), i64 %102)
  %104 = load i8*, i8** %22, align 8
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %6, align 8
  br label %120

107:                                              ; preds = %89
  %108 = load i8*, i8** %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = mul i64 %109, 2
  %111 = add i64 %110, 1
  %112 = call i8* @realloc(i8* %108, i64 %111)
  store i8* %112, i8** %22, align 8
  %113 = load i8*, i8** %22, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %379

116:                                              ; preds = %107
  %117 = load i8*, i8** %22, align 8
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %6, align 8
  br label %120

120:                                              ; preds = %116, %100
  %121 = load i8*, i8** %6, align 8
  %122 = load i8*, i8** %22, align 8
  %123 = load i64, i64* %8, align 8
  %124 = call i8* @memcpy(i8* %121, i8* %122, i64 %123)
  %125 = load i64, i64* %8, align 8
  %126 = mul i64 %125, 2
  store i64 %126, i64* %8, align 8
  %127 = load i8*, i8** %22, align 8
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i8*, i8** %22, align 8
  store i8* %130, i8** %7, align 8
  br label %131

131:                                              ; preds = %120, %85
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 -3
  store i8* %133, i8** %6, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = call i64 @stat(i8* %134, %struct.stat* %15)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %379

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %19, align 8
  %141 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %20, align 8
  %143 = load i64, i64* %19, align 8
  %144 = load i64, i64* %10, align 8
  %145 = icmp ne i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %21, align 1
  %148 = load i8*, i8** %6, align 8
  %149 = call i32* @opendir(i8* %148)
  store i32* %149, i32** %17, align 8
  %150 = load i32*, i32** %17, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %138
  br label %379

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %264, %190, %153
  %155 = load i32*, i32** %17, align 8
  %156 = call %struct.dirent* @readdir(i32* %155)
  store %struct.dirent* %156, %struct.dirent** %18, align 8
  %157 = icmp ne %struct.dirent* %156, null
  br i1 %157, label %158, label %265

158:                                              ; preds = %154
  %159 = load %struct.dirent*, %struct.dirent** %18, align 8
  %160 = getelementptr inbounds %struct.dirent, %struct.dirent* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 46
  br i1 %165, label %166, label %191

166:                                              ; preds = %158
  %167 = load %struct.dirent*, %struct.dirent** %18, align 8
  %168 = getelementptr inbounds %struct.dirent, %struct.dirent* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %190, label %174

174:                                              ; preds = %166
  %175 = load %struct.dirent*, %struct.dirent** %18, align 8
  %176 = getelementptr inbounds %struct.dirent, %struct.dirent* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 46
  br i1 %181, label %182, label %191

182:                                              ; preds = %174
  %183 = load %struct.dirent*, %struct.dirent** %18, align 8
  %184 = getelementptr inbounds %struct.dirent, %struct.dirent* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 2
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182, %166
  br label %154

191:                                              ; preds = %182, %174, %158
  %192 = load i8, i8* %21, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %191
  %196 = load %struct.dirent*, %struct.dirent** %18, align 8
  %197 = getelementptr inbounds %struct.dirent, %struct.dirent* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %12, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %264

201:                                              ; preds = %195, %191
  %202 = load i8*, i8** %7, align 8
  %203 = load i64, i64* %8, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = load i8*, i8** %6, align 8
  %206 = ptrtoint i8* %204 to i64
  %207 = ptrtoint i8* %205 to i64
  %208 = sub i64 %206, %207
  %209 = add nsw i64 %208, 1
  %210 = load %struct.dirent*, %struct.dirent** %18, align 8
  %211 = call i32 @_D_ALLOC_NAMLEN(%struct.dirent* %210)
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %209, %212
  %214 = call i8* @llvm.stacksave()
  store i8* %214, i8** %23, align 8
  %215 = alloca i8, i64 %213, align 16
  store i64 %213, i64* %24, align 8
  %216 = load i8*, i8** %6, align 8
  %217 = load i8*, i8** %7, align 8
  %218 = load i64, i64* %8, align 8
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  %220 = load i8*, i8** %6, align 8
  %221 = ptrtoint i8* %219 to i64
  %222 = ptrtoint i8* %220 to i64
  %223 = sub i64 %221, %222
  %224 = call i8* @memcpy(i8* %215, i8* %216, i64 %223)
  %225 = load i8*, i8** %7, align 8
  %226 = load i64, i64* %8, align 8
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  %228 = load i8*, i8** %6, align 8
  %229 = ptrtoint i8* %227 to i64
  %230 = ptrtoint i8* %228 to i64
  %231 = sub i64 %229, %230
  %232 = getelementptr inbounds i8, i8* %215, i64 %231
  store i8 47, i8* %232, align 1
  %233 = load i8*, i8** %7, align 8
  %234 = load i64, i64* %8, align 8
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  %236 = load i8*, i8** %6, align 8
  %237 = ptrtoint i8* %235 to i64
  %238 = ptrtoint i8* %236 to i64
  %239 = sub i64 %237, %238
  %240 = add nsw i64 %239, 1
  %241 = getelementptr inbounds i8, i8* %215, i64 %240
  %242 = load %struct.dirent*, %struct.dirent** %18, align 8
  %243 = getelementptr inbounds %struct.dirent, %struct.dirent* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @strcpy(i8* %241, i8* %244)
  %246 = call i64 @stat(i8* %215, %struct.stat* %15)
  %247 = icmp sge i64 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %201
  %249 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* %10, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %259

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %12, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  store i32 7, i32* %25, align 4
  br label %260

259:                                              ; preds = %253, %248, %201
  store i32 0, i32* %25, align 4
  br label %260

260:                                              ; preds = %259, %258
  %261 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %261)
  %262 = load i32, i32* %25, align 4
  switch i32 %262, label %395 [
    i32 0, label %263
    i32 7, label %265
  ]

263:                                              ; preds = %260
  br label %264

264:                                              ; preds = %263, %195
  br label %154

265:                                              ; preds = %260, %154
  %266 = load %struct.dirent*, %struct.dirent** %18, align 8
  %267 = icmp eq %struct.dirent* %266, null
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load i32*, i32** %17, align 8
  %270 = call i32 @closedir(i32* %269)
  br label %379

271:                                              ; preds = %265
  %272 = load %struct.dirent*, %struct.dirent** %18, align 8
  %273 = call i64 @_D_EXACT_NAMLEN(%struct.dirent* %272)
  store i64 %273, i64* %26, align 8
  %274 = load i8*, i8** %14, align 8
  %275 = load i8*, i8** %13, align 8
  %276 = ptrtoint i8* %274 to i64
  %277 = ptrtoint i8* %275 to i64
  %278 = sub i64 %276, %277
  %279 = load i64, i64* %26, align 8
  %280 = icmp ule i64 %278, %279
  br i1 %280, label %281, label %332

281:                                              ; preds = %271
  %282 = load i64, i64* %5, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load i32*, i32** %17, align 8
  %286 = call i32 @closedir(i32* %285)
  br label %379

287:                                              ; preds = %281
  %288 = load i64, i64* %16, align 8
  store i64 %288, i64* %28, align 8
  %289 = load i64, i64* %16, align 8
  %290 = load i64, i64* %26, align 8
  %291 = call i32 @MAX(i64 %289, i64 %290)
  %292 = mul nsw i32 2, %291
  %293 = sext i32 %292 to i64
  store i64 %293, i64* %16, align 8
  %294 = load i8*, i8** %13, align 8
  %295 = load i64, i64* %16, align 8
  %296 = call i8* @realloc(i8* %294, i64 %295)
  store i8* %296, i8** %27, align 8
  %297 = load i8*, i8** %27, align 8
  %298 = icmp eq i8* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %287
  %300 = load i32*, i32** %17, align 8
  %301 = call i32 @closedir(i32* %300)
  br label %379

302:                                              ; preds = %287
  %303 = load i8*, i8** %27, align 8
  %304 = load i64, i64* %16, align 8
  %305 = getelementptr inbounds i8, i8* %303, i64 %304
  %306 = load i8*, i8** %13, align 8
  %307 = load i64, i64* %28, align 8
  %308 = getelementptr inbounds i8, i8* %306, i64 %307
  %309 = load i8*, i8** %14, align 8
  %310 = ptrtoint i8* %308 to i64
  %311 = ptrtoint i8* %309 to i64
  %312 = sub i64 %310, %311
  %313 = sub i64 0, %312
  %314 = getelementptr inbounds i8, i8* %305, i64 %313
  %315 = load i8*, i8** %27, align 8
  %316 = load i8*, i8** %14, align 8
  %317 = load i8*, i8** %13, align 8
  %318 = ptrtoint i8* %316 to i64
  %319 = ptrtoint i8* %317 to i64
  %320 = sub i64 %318, %319
  %321 = getelementptr inbounds i8, i8* %315, i64 %320
  %322 = load i8*, i8** %13, align 8
  %323 = load i64, i64* %28, align 8
  %324 = getelementptr inbounds i8, i8* %322, i64 %323
  %325 = load i8*, i8** %14, align 8
  %326 = ptrtoint i8* %324 to i64
  %327 = ptrtoint i8* %325 to i64
  %328 = sub i64 %326, %327
  %329 = call i8* @memcpy(i8* %314, i8* %321, i64 %328)
  store i8* %329, i8** %14, align 8
  %330 = load i8*, i8** %27, align 8
  store i8* %330, i8** %13, align 8
  br label %331

331:                                              ; preds = %302
  br label %332

332:                                              ; preds = %331, %271
  %333 = load i64, i64* %26, align 8
  %334 = load i8*, i8** %14, align 8
  %335 = sub i64 0, %333
  %336 = getelementptr inbounds i8, i8* %334, i64 %335
  store i8* %336, i8** %14, align 8
  %337 = load i8*, i8** %14, align 8
  %338 = load %struct.dirent*, %struct.dirent** %18, align 8
  %339 = getelementptr inbounds %struct.dirent, %struct.dirent* %338, i32 0, i32 0
  %340 = load i8*, i8** %339, align 8
  %341 = load i64, i64* %26, align 8
  %342 = call i8* @memcpy(i8* %337, i8* %340, i64 %341)
  %343 = load i8*, i8** %14, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 -1
  store i8* %344, i8** %14, align 8
  store i8 47, i8* %344, align 1
  %345 = load i32*, i32** %17, align 8
  %346 = call i32 @closedir(i32* %345)
  br label %347

347:                                              ; preds = %332
  %348 = load i64, i64* %19, align 8
  store i64 %348, i64* %10, align 8
  %349 = load i64, i64* %20, align 8
  store i64 %349, i64* %12, align 8
  br label %74

350:                                              ; preds = %82
  %351 = load i8*, i8** %14, align 8
  %352 = load i8*, i8** %13, align 8
  %353 = load i64, i64* %16, align 8
  %354 = sub i64 %353, 1
  %355 = getelementptr inbounds i8, i8* %352, i64 %354
  %356 = icmp eq i8* %351, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %350
  %358 = load i8*, i8** %14, align 8
  %359 = getelementptr inbounds i8, i8* %358, i32 -1
  store i8* %359, i8** %14, align 8
  store i8 47, i8* %359, align 1
  br label %360

360:                                              ; preds = %357, %350
  %361 = load i8*, i8** %7, align 8
  %362 = icmp ne i8* %361, getelementptr inbounds ([241 x i8], [241 x i8]* @getcwd.dots, i64 0, i64 0)
  br i1 %362, label %363, label %366

363:                                              ; preds = %360
  %364 = load i8*, i8** %7, align 8
  %365 = call i32 @free(i8* %364)
  br label %366

366:                                              ; preds = %363, %360
  %367 = load i8*, i8** %13, align 8
  %368 = load i8*, i8** %14, align 8
  %369 = load i8*, i8** %13, align 8
  %370 = load i64, i64* %16, align 8
  %371 = getelementptr inbounds i8, i8* %369, i64 %370
  %372 = load i8*, i8** %14, align 8
  %373 = ptrtoint i8* %371 to i64
  %374 = ptrtoint i8* %372 to i64
  %375 = sub i64 %373, %374
  %376 = trunc i64 %375 to i32
  %377 = call i32 @memmove(i8* %367, i8* %368, i32 %376)
  %378 = load i8*, i8** %13, align 8
  store i8* %378, i8** %3, align 8
  br label %393

379:                                              ; preds = %299, %284, %268, %152, %137, %115, %99
  %380 = load i8*, i8** %7, align 8
  %381 = icmp ne i8* %380, getelementptr inbounds ([241 x i8], [241 x i8]* @getcwd.dots, i64 0, i64 0)
  br i1 %381, label %382, label %385

382:                                              ; preds = %379
  %383 = load i8*, i8** %7, align 8
  %384 = call i32 @free(i8* %383)
  br label %385

385:                                              ; preds = %382, %379
  br label %386

386:                                              ; preds = %385, %68, %60
  %387 = load i8*, i8** %4, align 8
  %388 = icmp eq i8* %387, null
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = load i8*, i8** %13, align 8
  %391 = call i32 @free(i8* %390)
  br label %392

392:                                              ; preds = %389, %386
  store i8* null, i8** %3, align 8
  br label %393

393:                                              ; preds = %392, %366, %50, %35
  %394 = load i8*, i8** %3, align 8
  ret i8* %394

395:                                              ; preds = %260
  unreachable
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @_D_ALLOC_NAMLEN(%struct.dirent*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @closedir(i32*) #1

declare dso_local i64 @_D_EXACT_NAMLEN(%struct.dirent*) #1

declare dso_local i32 @MAX(i64, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
