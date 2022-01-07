; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_LogThreadWriteGeneral.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_LogThreadWriteGeneral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@LOG_ENGINE_BUFFER_CACHE_SIZE_MAX = common dso_local global i64 0, align 8
@SEEK_END = common dso_local global i32 0, align 4
@LOG_ENGINE_SAVE_START_CACHE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, i32**, i32*, i8*, i8*)* @LogThreadWriteGeneral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LogThreadWriteGeneral(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32** %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %22 = load i32, i32* @MAX_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = call i32 @LockQueue(%struct.TYPE_20__* %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 7
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %33 = call %struct.TYPE_17__* @GetNext(%struct.TYPE_20__* %32)
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %14, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 7
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %17, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 7
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = call i32 @UnlockQueue(%struct.TYPE_20__* %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 (...) @GetMaxLogSize()
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %6
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %50 = call i32 @ClearBuf(%struct.TYPE_19__* %49)
  br label %51

51:                                               ; preds = %48, %6
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LOG_ENGINE_BUFFER_CACHE_SIZE_MAX, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %115

57:                                               ; preds = %51
  %58 = load i32**, i32*** %10, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %114

61:                                               ; preds = %57
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = call i64 (...) @GetMaxLogSize()
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %61
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %76, %71
  br label %113

84:                                               ; preds = %61
  %85 = load i32**, i32*** %10, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @FileWrite(i32* %86, i32 %89, i64 %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %84
  %96 = load i32**, i32*** %10, align 8
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @FileCloseEx(i32* %97, i32 1)
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %100 = call i32 @ClearBuf(%struct.TYPE_19__* %99)
  %101 = load i32**, i32*** %10, align 8
  store i32* null, i32** %101, align 8
  br label %112

102:                                              ; preds = %84
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %111 = call i32 @ClearBuf(%struct.TYPE_19__* %110)
  br label %112

112:                                              ; preds = %102, %95
  br label %113

113:                                              ; preds = %112, %83
  br label %114

114:                                              ; preds = %113, %57
  br label %115

115:                                              ; preds = %114, %51
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %117 = icmp eq %struct.TYPE_17__* %116, null
  br i1 %117, label %118, label %186

118:                                              ; preds = %115
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %181

123:                                              ; preds = %118
  %124 = load i32**, i32*** %10, align 8
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %180

127:                                              ; preds = %123
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = call i64 (...) @GetMaxLogSize()
  %136 = icmp sgt i64 %134, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %127
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  store i32 1, i32* %148, align 8
  br label %149

149:                                              ; preds = %142, %137
  br label %179

150:                                              ; preds = %127
  %151 = load i32**, i32*** %10, align 8
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @FileWrite(i32* %152, i32 %155, i64 %158)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %150
  %162 = load i32**, i32*** %10, align 8
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @FileCloseEx(i32* %163, i32 1)
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %166 = call i32 @ClearBuf(%struct.TYPE_19__* %165)
  %167 = load i32**, i32*** %10, align 8
  store i32* null, i32** %167, align 8
  br label %178

168:                                              ; preds = %150
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, %171
  store i64 %175, i64* %173, align 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %177 = call i32 @ClearBuf(%struct.TYPE_19__* %176)
  br label %178

178:                                              ; preds = %168, %161
  br label %179

179:                                              ; preds = %178, %149
  br label %180

180:                                              ; preds = %179, %123
  br label %181

181:                                              ; preds = %180, %118
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @Set(i32 %184)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %419

186:                                              ; preds = %115
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %188 = call i32 @LockLog(%struct.TYPE_18__* %187)
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %190 = trunc i64 %23 to i32
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load i8*, i8** %12, align 8
  %207 = call i32 @MakeLogFileName(%struct.TYPE_18__* %189, i8* %25, i32 %190, i32 %193, i32 %196, i32 %199, i32 %202, i32 %205, i8* %206)
  %208 = load i32*, i32** %11, align 8
  store i32 %207, i32* %208, align 4
  %209 = load i32*, i32** %11, align 8
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %270

212:                                              ; preds = %186
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 2
  store i32 0, i32* %214, align 4
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %216 = trunc i64 %23 to i32
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = load i8*, i8** %12, align 8
  %230 = call i32 @MakeLogFileName(%struct.TYPE_18__* %215, i8* %25, i32 %216, i32 %219, i32 %222, i32 %225, i32 %228, i32 0, i8* %229)
  store i32 0, i32* %19, align 4
  br label %231

231:                                              ; preds = %266, %212
  %232 = load i32, i32* @MAX_SIZE, align 4
  %233 = zext i32 %232 to i64
  %234 = call i8* @llvm.stacksave()
  store i8* %234, i8** %20, align 8
  %235 = alloca i8, i64 %233, align 16
  store i64 %233, i64* %21, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %237 = trunc i64 %233 to i32
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %19, align 4
  %251 = load i8*, i8** %12, align 8
  %252 = call i32 @MakeLogFileName(%struct.TYPE_18__* %236, i8* %235, i32 %237, i32 %240, i32 %243, i32 %246, i32 %249, i32 %250, i8* %251)
  %253 = call i32 @IsFileExists(i8* %235)
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %231
  store i32 2, i32* %18, align 4
  br label %262

256:                                              ; preds = %231
  %257 = trunc i64 %23 to i32
  %258 = call i32 @StrCpy(i8* %25, i32 %257, i8* %235)
  %259 = load i32, i32* %19, align 4
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 4
  store i32 0, i32* %18, align 4
  br label %262

262:                                              ; preds = %256, %255
  %263 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %263)
  %264 = load i32, i32* %18, align 4
  switch i32 %264, label %422 [
    i32 0, label %265
    i32 2, label %269
  ]

265:                                              ; preds = %262
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %19, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %19, align 4
  br label %231

269:                                              ; preds = %262
  br label %270

270:                                              ; preds = %269, %186
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %272 = call i32 @UnlockLog(%struct.TYPE_18__* %271)
  %273 = load i32**, i32*** %10, align 8
  %274 = load i32*, i32** %273, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %368

276:                                              ; preds = %270
  %277 = load i8*, i8** %13, align 8
  %278 = call i64 @StrCmp(i8* %277, i8* %25)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %367

280:                                              ; preds = %276
  %281 = load i32**, i32*** %10, align 8
  %282 = load i32*, i32** %281, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %332

284:                                              ; preds = %280
  %285 = load i32*, i32** %11, align 8
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %328

288:                                              ; preds = %284
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %291, %294
  %296 = call i64 (...) @GetMaxLogSize()
  %297 = icmp sle i64 %295, %296
  br i1 %297, label %298, label %327

298:                                              ; preds = %288
  %299 = load i32**, i32*** %10, align 8
  %300 = load i32*, i32** %299, align 8
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = call i32 @FileWrite(i32* %300, i32 %303, i64 %306)
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %298
  %310 = load i32**, i32*** %10, align 8
  %311 = load i32*, i32** %310, align 8
  %312 = call i32 @FileCloseEx(i32* %311, i32 1)
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %314 = call i32 @ClearBuf(%struct.TYPE_19__* %313)
  %315 = load i32**, i32*** %10, align 8
  store i32* null, i32** %315, align 8
  br label %326

316:                                              ; preds = %298
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = add nsw i64 %322, %319
  store i64 %323, i64* %321, align 8
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %325 = call i32 @ClearBuf(%struct.TYPE_19__* %324)
  br label %326

326:                                              ; preds = %316, %309
  br label %327

327:                                              ; preds = %326, %288
  br label %328

328:                                              ; preds = %327, %284
  %329 = load i32**, i32*** %10, align 8
  %330 = load i32*, i32** %329, align 8
  %331 = call i32 @FileCloseEx(i32* %330, i32 1)
  br label %332

332:                                              ; preds = %328, %280
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  store i32 0, i32* %334, align 8
  %335 = load i8*, i8** %13, align 8
  %336 = call i32 @StrCpy(i8* %335, i32 8, i8* %25)
  %337 = call i32* @FileOpen(i8* %25, i32 1)
  %338 = load i32**, i32*** %10, align 8
  store i32* %337, i32** %338, align 8
  %339 = load i32**, i32*** %10, align 8
  %340 = load i32*, i32** %339, align 8
  %341 = icmp eq i32* %340, null
  br i1 %341, label %342, label %355

342:                                              ; preds = %332
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %344 = call i32 @LockLog(%struct.TYPE_18__* %343)
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @MakeDir(i32 %347)
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %350 = call i32 @UnlockLog(%struct.TYPE_18__* %349)
  %351 = call i32* @FileCreate(i8* %25)
  %352 = load i32**, i32*** %10, align 8
  store i32* %351, i32** %352, align 8
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 0
  store i64 0, i64* %354, align 8
  br label %366

355:                                              ; preds = %332
  %356 = load i32**, i32*** %10, align 8
  %357 = load i32*, i32** %356, align 8
  %358 = call i8* @FileSize64(i32* %357)
  %359 = ptrtoint i8* %358 to i64
  %360 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %360, i32 0, i32 0
  store i64 %359, i64* %361, align 8
  %362 = load i32**, i32*** %10, align 8
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* @SEEK_END, align 4
  %365 = call i32 @FileSeek(i32* %363, i32 %364, i32 0)
  br label %366

366:                                              ; preds = %355, %342
  br label %367

367:                                              ; preds = %366, %276
  br label %409

368:                                              ; preds = %270
  %369 = load i8*, i8** %13, align 8
  %370 = call i32 @StrCpy(i8* %369, i32 8, i8* %25)
  %371 = call i32* @FileOpen(i8* %25, i32 1)
  %372 = load i32**, i32*** %10, align 8
  store i32* %371, i32** %372, align 8
  %373 = load i32**, i32*** %10, align 8
  %374 = load i32*, i32** %373, align 8
  %375 = icmp eq i32* %374, null
  br i1 %375, label %376, label %395

376:                                              ; preds = %368
  %377 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %378 = call i32 @LockLog(%struct.TYPE_18__* %377)
  %379 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %380 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 8
  %382 = call i32 @MakeDir(i32 %381)
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %384 = call i32 @UnlockLog(%struct.TYPE_18__* %383)
  %385 = call i32* @FileCreate(i8* %25)
  %386 = load i32**, i32*** %10, align 8
  store i32* %385, i32** %386, align 8
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 0
  store i64 0, i64* %388, align 8
  %389 = load i32**, i32*** %10, align 8
  %390 = load i32*, i32** %389, align 8
  %391 = icmp eq i32* %390, null
  br i1 %391, label %392, label %394

392:                                              ; preds = %376
  %393 = call i32 @SleepThread(i32 30)
  br label %394

394:                                              ; preds = %392, %376
  br label %406

395:                                              ; preds = %368
  %396 = load i32**, i32*** %10, align 8
  %397 = load i32*, i32** %396, align 8
  %398 = call i8* @FileSize64(i32* %397)
  %399 = ptrtoint i8* %398 to i64
  %400 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %400, i32 0, i32 0
  store i64 %399, i64* %401, align 8
  %402 = load i32**, i32*** %10, align 8
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* @SEEK_END, align 4
  %405 = call i32 @FileSeek(i32* %403, i32 %404, i32 0)
  br label %406

406:                                              ; preds = %395, %394
  %407 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %407, i32 0, i32 1
  store i32 0, i32* %408, align 8
  br label %409

409:                                              ; preds = %406, %367
  %410 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %411 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %412 = call i32 @WriteRecordToBuffer(%struct.TYPE_19__* %410, %struct.TYPE_17__* %411)
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %414 = call i32 @Free(%struct.TYPE_17__* %413)
  %415 = load i32**, i32*** %10, align 8
  %416 = load i32*, i32** %415, align 8
  %417 = icmp ne i32* %416, null
  %418 = zext i1 %417 to i32
  store i32 %418, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %419

419:                                              ; preds = %409, %181
  %420 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %420)
  %421 = load i32, i32* %7, align 4
  ret i32 %421

422:                                              ; preds = %262
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LockQueue(%struct.TYPE_20__*) #2

declare dso_local %struct.TYPE_17__* @GetNext(%struct.TYPE_20__*) #2

declare dso_local i32 @UnlockQueue(%struct.TYPE_20__*) #2

declare dso_local i64 @GetMaxLogSize(...) #2

declare dso_local i32 @ClearBuf(%struct.TYPE_19__*) #2

declare dso_local i32 @FileWrite(i32*, i32, i64) #2

declare dso_local i32 @FileCloseEx(i32*, i32) #2

declare dso_local i32 @Set(i32) #2

declare dso_local i32 @LockLog(%struct.TYPE_18__*) #2

declare dso_local i32 @MakeLogFileName(%struct.TYPE_18__*, i8*, i32, i32, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @IsFileExists(i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @UnlockLog(%struct.TYPE_18__*) #2

declare dso_local i64 @StrCmp(i8*, i8*) #2

declare dso_local i32* @FileOpen(i8*, i32) #2

declare dso_local i32 @MakeDir(i32) #2

declare dso_local i32* @FileCreate(i8*) #2

declare dso_local i8* @FileSize64(i32*) #2

declare dso_local i32 @FileSeek(i32*, i32, i32) #2

declare dso_local i32 @SleepThread(i32) #2

declare dso_local i32 @WriteRecordToBuffer(%struct.TYPE_19__*, %struct.TYPE_17__*) #2

declare dso_local i32 @Free(%struct.TYPE_17__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
