; ModuleID = '/home/carl/AnghaBench/DOOM/sndserv/extr_soundsrv.c_main.c'
source_filename = "/home/carl/AnghaBench/DOOM/sndserv/extr_soundsrv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32, i32 }

@snd_verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ready\0A\00", align 1
@fdset = common dso_local global i32 0, align 4
@mytime = common dso_local global i32 0, align 4
@scratchset = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"cmd: %c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@steptable = common dso_local global i32* null, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@S_sfx = common dso_local global %struct.TYPE_2__* null, align 8
@lengths = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Did not recognize command\0A\00", align 1
@channels = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [10 x i8], align 1
  %12 = alloca %struct.timeval, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %19 = bitcast %struct.timeval* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @grabdata(i32 %20, i8** %21)
  %23 = call i32 (...) @initdata()
  %24 = call i32 @I_InitSound(i32 11025, i32 16)
  %25 = call i32 (...) @I_InitMusic()
  %26 = load i64, i64* @snd_verbose, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %2
  %32 = call i32 @FD_ZERO(i32* @fdset)
  %33 = call i32 @FD_SET(i32 0, i32* @fdset)
  br label %34

34:                                               ; preds = %310, %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %311

38:                                               ; preds = %34
  %39 = load i32, i32* @mytime, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @mytime, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %283, label %43

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %279, %43
  %45 = load i32, i32* @fdset, align 4
  store i32 %45, i32* @scratchset, align 4
  %46 = load i32, i32* @FD_SETSIZE, align 4
  %47 = call i32 @select(i32 %46, i32* @scratchset, i32 0, i32 0, %struct.timeval* %12)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %272

50:                                               ; preds = %44
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %52 = call i32 @read(i32 0, i8* %51, i32 1)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %271

56:                                               ; preds = %50
  %57 = load i64, i64* @snd_verbose, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %56
  %66 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  switch i32 %68, label %267 [
    i32 112, label %69
    i32 113, label %210
    i32 115, label %213
  ]

69:                                               ; preds = %65
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %71 = call i32 @read(i32 0, i8* %70, i32 9)
  %72 = load i64, i64* @snd_verbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 9
  store i8 0, i8* %75, align 1
  %76 = load i32, i32* @stderr, align 4
  %77 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp sge i32 %82, 97
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 87, i32 48
  %86 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = sub nsw i32 %88, %85
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %86, align 1
  %91 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp sge i32 %93, 97
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 87, i32 48
  %97 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = sub nsw i32 %99, %96
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %97, align 1
  %102 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp sge i32 %104, 97
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 87, i32 48
  %108 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 2
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = sub nsw i32 %110, %107
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %108, align 1
  %113 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 3
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp sge i32 %115, 97
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 87, i32 48
  %119 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 3
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = sub nsw i32 %121, %118
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %119, align 1
  %124 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 4
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp sge i32 %126, 97
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 87, i32 48
  %130 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 4
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = sub nsw i32 %132, %129
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %130, align 1
  %135 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 5
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp sge i32 %137, 97
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 87, i32 48
  %141 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 5
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = sub nsw i32 %143, %140
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %141, align 1
  %146 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 6
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp sge i32 %148, 97
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 87, i32 48
  %152 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 6
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = sub nsw i32 %154, %151
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %152, align 1
  %157 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 7
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp sge i32 %159, 97
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 87, i32 48
  %163 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 7
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = sub nsw i32 %165, %162
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %163, align 1
  %168 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = shl i32 %170, 4
  %172 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 1
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = add nsw i32 %171, %174
  store i32 %175, i32* %9, align 4
  %176 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 2
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = shl i32 %178, 4
  %180 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 3
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = add nsw i32 %179, %182
  store i32 %183, i32* %13, align 4
  %184 = load i32*, i32** @steptable, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %13, align 4
  %189 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 4
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = shl i32 %191, 4
  %193 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 5
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = add nsw i32 %192, %195
  store i32 %196, i32* %14, align 4
  %197 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 6
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = shl i32 %199, 4
  %201 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 7
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = add nsw i32 %200, %203
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* %15, align 4
  %209 = call i32 @addsfx(i32 %205, i32 %206, i32 %207, i32 %208)
  store i32 %209, i32* %10, align 4
  br label %270

210:                                              ; preds = %65
  %211 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %212 = call i32 @read(i32 0, i8* %211, i32 1)
  store i32 1, i32* %17, align 4
  store i32 0, i32* %7, align 4
  br label %270

213:                                              ; preds = %65
  %214 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %215 = call i32 @read(i32 0, i8* %214, i32 3)
  %216 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 2
  store i8 0, i8* %216, align 1
  %217 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %218 = load i32, i32* @O_CREAT, align 4
  %219 = load i32, i32* @O_WRONLY, align 4
  %220 = or i32 %218, %219
  %221 = call i32 @open(i8* %217, i32 %220, i32 420)
  store i32 %221, i32* %18, align 4
  %222 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = icmp sge i32 %224, 97
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 87, i32 48
  %228 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = sub nsw i32 %230, %227
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %228, align 1
  %233 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 1
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = icmp sge i32 %235, 97
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i32 87, i32 48
  %239 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 1
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = sub nsw i32 %241, %238
  %243 = trunc i32 %242 to i8
  store i8 %243, i8* %239, align 1
  %244 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = shl i32 %246, 4
  %248 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 1
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = add nsw i32 %247, %250
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %18, align 4
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** @lengths, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @write(i32 %252, i32 %258, i32 %263)
  %265 = load i32, i32* %18, align 4
  %266 = call i32 @close(i32 %265)
  br label %270

267:                                              ; preds = %65
  %268 = load i32, i32* @stderr, align 4
  %269 = call i32 (i32, i8*, ...) @fprintf(i32 %268, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %270

270:                                              ; preds = %267, %213, %210, %79
  br label %271

271:                                              ; preds = %270, %55
  br label %278

272:                                              ; preds = %44
  %273 = load i32, i32* %7, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = call i32 (...) @quit()
  br label %277

277:                                              ; preds = %275, %272
  br label %278

278:                                              ; preds = %277, %271
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %7, align 4
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %44, label %282

282:                                              ; preds = %279
  br label %283

283:                                              ; preds = %282, %38
  %284 = call i32 (...) @updatesounds()
  %285 = load i32, i32* %17, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %310

287:                                              ; preds = %283
  store i32 0, i32* %16, align 4
  br label %288

288:                                              ; preds = %302, %287
  %289 = load i32, i32* %16, align 4
  %290 = icmp slt i32 %289, 8
  br i1 %290, label %291, label %299

291:                                              ; preds = %288
  %292 = load i32*, i32** @channels, align 8
  %293 = load i32, i32* %16, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, 0
  %298 = xor i1 %297, true
  br label %299

299:                                              ; preds = %291, %288
  %300 = phi i1 [ false, %288 ], [ %298, %291 ]
  br i1 %300, label %301, label %305

301:                                              ; preds = %299
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %16, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %16, align 4
  br label %288

305:                                              ; preds = %299
  %306 = load i32, i32* %16, align 4
  %307 = icmp eq i32 %306, 8
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  store i32 1, i32* %6, align 4
  br label %309

309:                                              ; preds = %308, %305
  br label %310

310:                                              ; preds = %309, %283
  br label %34

311:                                              ; preds = %34
  %312 = call i32 (...) @quit()
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @grabdata(i32, i8**) #2

declare dso_local i32 @initdata(...) #2

declare dso_local i32 @I_InitSound(i32, i32) #2

declare dso_local i32 @I_InitMusic(...) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @select(i32, i32*, i32, i32, %struct.timeval*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @addsfx(i32, i32, i32, i32) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @write(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @quit(...) #2

declare dso_local i32 @updatesounds(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
