; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_TtcWorkerThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_TtcWorkerThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i64, i64, i64*, i64, i32, i32, i8*, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, double, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"TTC_COMM_USER_CANCEL\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"TTC_COMM_END\00", align 1
@ERR_PROTOCOL_ERROR = common dso_local global i8* null, align 8
@SOCK_LATER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"TTC_COMM_DISCONNECTED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TtcWorkerThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_6__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca [17 x i64], align 16
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %29 = load i32, i32* @MAX_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %11, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i8*, i8** %4, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %2
  store i32 1, i32* %17, align 4
  br label %502

39:                                               ; preds = %35
  %40 = load i8*, i8** %4, align 8
  %41 = bitcast i8* %40 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %5, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %6, align 8
  %45 = call i32 @TtGenerateRandomData(i64** %13, i64* %15)
  %46 = call i32 @TtGenerateRandomData(i64** %14, i64* %15)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @NoticeThreadInit(i32* %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @INFINITE, align 4
  %53 = call i32 @Wait(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %496, %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @WaitSockEvent(i32 %61, i32 50)
  br label %63

63:                                               ; preds = %58, %55
  store i32 0, i32* %7, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %497

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 (...) @Tick64()
  %79 = icmp sle i64 %77, %78
  br i1 %79, label %91, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  %83 = load i64*, i64** %82, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %167

85:                                               ; preds = %80
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 4
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %167

91:                                               ; preds = %85, %74, %69
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %166

94:                                               ; preds = %91
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %102 = load i64*, i64** %101, align 8
  %103 = icmp ne i64* %102, null
  br i1 %103, label %104, label %126

104:                                              ; preds = %99
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %104, %94
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 12
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %124 = call i32 @TtPrint(i32 %119, i32 %122, i32* %123)
  br label %125

125:                                              ; preds = %116, %110
  br label %150

126:                                              ; preds = %104, %99
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 11
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = icmp eq i32 %129, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %126
  %133 = mul nuw i64 4, %30
  %134 = trunc i64 %133 to i32
  %135 = call i32* @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 9
  %138 = load i64, i64* %137, align 8
  %139 = sitofp i64 %138 to double
  %140 = fdiv double %139, 1.000000e+03
  %141 = call i32 @UniFormat(i32* %32, i32 %134, i32* %135, double %140)
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @TtPrint(i32 %144, i32 %147, i32* %32)
  br label %149

149:                                              ; preds = %132, %126
  br label %150

150:                                              ; preds = %149, %125
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = call i64 (...) @Tick64()
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %156, %159
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %155, %150
  store i32 1, i32* %8, align 4
  %164 = call i64 (...) @Tick64()
  %165 = add i64 %164, 60000
  store i64 %165, i64* %9, align 8
  br label %166

166:                                              ; preds = %163, %91
  br label %167

167:                                              ; preds = %166, %85, %80
  %168 = load i64, i64* %9, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %217

170:                                              ; preds = %167
  store i32 1, i32* %19, align 4
  store i64 0, i64* %18, align 8
  br label %171

171:                                              ; preds = %196, %170
  %172 = load i64, i64* %18, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @LIST_NUM(i32 %175)
  %177 = icmp slt i64 %172, %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %171
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i64, i64* %18, align 8
  %183 = call %struct.TYPE_6__* @LIST_DATA(i32 %181, i64 %182)
  store %struct.TYPE_6__* %183, %struct.TYPE_6__** %20, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %178
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store i32 0, i32* %19, align 4
  br label %194

194:                                              ; preds = %193, %188
  br label %195

195:                                              ; preds = %194, %178
  br label %196

196:                                              ; preds = %195
  %197 = load i64, i64* %18, align 8
  %198 = add nsw i64 %197, 1
  store i64 %198, i64* %18, align 8
  br label %171

199:                                              ; preds = %171
  %200 = load i32, i32* %19, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  br label %497

205:                                              ; preds = %199
  %206 = load i64, i64* %9, align 8
  %207 = call i64 (...) @Tick64()
  %208 = icmp sle i64 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  store i32 1, i32* %211, align 8
  %212 = load i8*, i8** @ERR_PROTOCOL_ERROR, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 8
  store i8* %212, i8** %214, align 8
  br label %497

215:                                              ; preds = %205
  br label %216

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %216, %167
  store i32 0, i32* %10, align 4
  br label %218

218:                                              ; preds = %495, %217
  %219 = load i32, i32* %10, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %496

221:                                              ; preds = %218
  store i32 1, i32* %10, align 4
  store i64 0, i64* %18, align 8
  br label %222

222:                                              ; preds = %468, %221
  %223 = load i64, i64* %18, align 8
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i64 @LIST_NUM(i32 %226)
  %228 = icmp slt i64 %223, %227
  br i1 %228, label %229, label %471

229:                                              ; preds = %222
  %230 = load i64, i64* @SOCK_LATER, align 8
  store i64 %230, i64* %21, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i64, i64* %18, align 8
  %235 = call %struct.TYPE_6__* @LIST_DATA(i32 %233, i64 %234)
  store %struct.TYPE_6__* %235, %struct.TYPE_6__** %22, align 8
  store i32 0, i32* %23, align 4
  store i64 0, i64* %24, align 8
  %236 = load i64, i64* %9, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %272

238:                                              ; preds = %229
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 3
  br i1 %242, label %243, label %271

243:                                              ; preds = %238
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 4
  br i1 %247, label %248, label %271

248:                                              ; preds = %243
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %267

253:                                              ; preds = %248
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 2
  store i32 3, i32* %260, align 8
  br label %266

261:                                              ; preds = %253
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  store i32 1, i32* %263, align 4
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 2
  store i32 4, i32* %265, align 8
  br label %266

266:                                              ; preds = %261, %258
  br label %270

267:                                              ; preds = %248
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 2
  store i32 4, i32* %269, align 8
  br label %270

270:                                              ; preds = %267, %266
  br label %271

271:                                              ; preds = %270, %243, %238
  br label %272

272:                                              ; preds = %271, %229
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  switch i32 %275, label %412 [
    i32 0, label %276
    i32 1, label %323
    i32 2, label %330
    i32 3, label %338
    i32 4, label %400
  ]

276:                                              ; preds = %272
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  store i64 1, i64* %24, align 8
  br label %283

282:                                              ; preds = %276
  store i64 0, i64* %24, align 8
  br label %283

283:                                              ; preds = %282, %281
  %284 = load i64, i64* %24, align 8
  %285 = getelementptr inbounds [17 x i64], [17 x i64]* %25, i64 0, i64 0
  store i64 %284, i64* %285, align 16
  %286 = getelementptr inbounds [17 x i64], [17 x i64]* %25, i64 0, i64 0
  %287 = getelementptr inbounds i64, i64* %286, i64 1
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 10
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @WRITE_UINT64(i64* %287, i64 %290)
  %292 = getelementptr inbounds [17 x i64], [17 x i64]* %25, i64 0, i64 0
  %293 = getelementptr inbounds i64, i64* %292, i64 8
  %294 = getelementptr inbounds i64, i64* %293, i64 1
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 9
  %297 = load i64, i64* %296, align 8
  %298 = call i32 @WRITE_UINT64(i64* %294, i64 %297)
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 7
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds [17 x i64], [17 x i64]* %25, i64 0, i64 0
  %303 = call i64 @Send(i32 %301, i64* %302, i32 17, i32 0)
  store i64 %303, i64* %21, align 8
  %304 = load i64, i64* %21, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %322

306:                                              ; preds = %283
  %307 = load i64, i64* %21, align 8
  %308 = load i64, i64* @SOCK_LATER, align 8
  %309 = icmp ne i64 %307, %308
  br i1 %309, label %310, label %322

310:                                              ; preds = %306
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 2
  store i32 1, i32* %317, align 8
  br label %321

318:                                              ; preds = %310
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 2
  store i32 2, i32* %320, align 8
  br label %321

321:                                              ; preds = %318, %315
  br label %322

322:                                              ; preds = %321, %306, %283
  br label %412

323:                                              ; preds = %272
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 4
  %327 = load i64*, i64** %14, align 8
  %328 = load i64, i64* %15, align 8
  %329 = call i64 @Recv(i32 %326, i64* %327, i64 %328, i32 0)
  store i64 %329, i64* %21, align 8
  br label %412

330:                                              ; preds = %272
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 7
  %333 = load i32, i32* %332, align 4
  %334 = load i64*, i64** %13, align 8
  %335 = load i64, i64* %15, align 8
  %336 = trunc i64 %335 to i32
  %337 = call i64 @Send(i32 %333, i64* %334, i32 %336, i32 0)
  store i64 %337, i64* %21, align 8
  br label %412

338:                                              ; preds = %272
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 3
  %341 = load i64, i64* %340, align 8
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %349, label %343

343:                                              ; preds = %338
  %344 = call i64 (...) @Tick64()
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 3
  %347 = load i64, i64* %346, align 8
  %348 = icmp sge i64 %344, %347
  br i1 %348, label %349, label %376

349:                                              ; preds = %343, %338
  %350 = load i32, i32* @MAX_SIZE, align 4
  %351 = zext i32 %350 to i64
  %352 = call i8* @llvm.stacksave()
  store i8* %352, i8** %26, align 8
  %353 = alloca i64, i64 %351, align 16
  store i64 %351, i64* %27, align 8
  %354 = call i64 (...) @Tick64()
  %355 = add i64 %354, 200
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 3
  store i64 %355, i64* %357, align 8
  store i64 0, i64* %28, align 8
  br label %358

358:                                              ; preds = %365, %349
  %359 = load i64, i64* %28, align 8
  %360 = mul nuw i64 8, %351
  %361 = icmp ult i64 %359, %360
  br i1 %361, label %362, label %368

362:                                              ; preds = %358
  %363 = load i64, i64* %28, align 8
  %364 = getelementptr inbounds i64, i64* %353, i64 %363
  store i64 33, i64* %364, align 8
  br label %365

365:                                              ; preds = %362
  %366 = load i64, i64* %28, align 8
  %367 = add nsw i64 %366, 1
  store i64 %367, i64* %28, align 8
  br label %358

368:                                              ; preds = %358
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 7
  %371 = load i32, i32* %370, align 4
  %372 = mul nuw i64 8, %351
  %373 = trunc i64 %372 to i32
  %374 = call i64 @Send(i32 %371, i64* %353, i32 %373, i32 0)
  %375 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %375)
  br label %376

376:                                              ; preds = %368, %343
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 7
  %379 = load i32, i32* %378, align 4
  %380 = call i64 @Recv(i32 %379, i64* %16, i64 8, i32 0)
  store i64 %380, i64* %21, align 8
  %381 = load i64, i64* %21, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %399

383:                                              ; preds = %376
  %384 = load i64, i64* %21, align 8
  %385 = load i64, i64* @SOCK_LATER, align 8
  %386 = icmp ne i64 %384, %385
  br i1 %386, label %387, label %399

387:                                              ; preds = %383
  %388 = load i64, i64* %21, align 8
  %389 = icmp eq i64 %388, 8
  br i1 %389, label %390, label %399

390:                                              ; preds = %387
  %391 = load i64, i64* %16, align 8
  %392 = call i32 @Endian64(i64 %391)
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 6
  store i32 %392, i32* %394, align 8
  %395 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 1
  store i32 1, i32* %396, align 4
  %397 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 2
  store i32 4, i32* %398, align 8
  br label %399

399:                                              ; preds = %390, %387, %383, %376
  br label %412

400:                                              ; preds = %272
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 7
  %403 = load i32, i32* %402, align 4
  %404 = load i64*, i64** %14, align 8
  %405 = load i64, i64* %15, align 8
  %406 = call i64 @Recv(i32 %403, i64* %404, i64 %405, i32 0)
  %407 = load i64, i64* @SOCK_LATER, align 8
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %411

409:                                              ; preds = %400
  %410 = load i64, i64* @SOCK_LATER, align 8
  store i64 %410, i64* %21, align 8
  br label %411

411:                                              ; preds = %409, %400
  br label %412

412:                                              ; preds = %272, %411, %399, %330, %323, %322
  %413 = load i64, i64* %21, align 8
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %443

415:                                              ; preds = %412
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 0
  store i32 1, i32* %417, align 8
  %418 = load i8*, i8** @ERR_PROTOCOL_ERROR, align 8
  %419 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i32 0, i32 8
  store i8* %418, i8** %420, align 8
  store i32 1, i32* %23, align 4
  store i32 0, i32* %7, align 4
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 8
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %442

425:                                              ; preds = %415
  %426 = mul nuw i64 4, %30
  %427 = trunc i64 %426 to i32
  %428 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %429 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %429, i32 0, i32 5
  %431 = load double, double* %430, align 8
  %432 = call i32 @UniFormat(i32* %32, i32 %427, i32* %428, double %431)
  %433 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 7
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %436, i32 0, i32 6
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @TtPrint(i32 %435, i32 %438, i32* %32)
  %440 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 4
  store i32 1, i32* %441, align 8
  br label %442

442:                                              ; preds = %425, %415
  br label %463

443:                                              ; preds = %412
  %444 = load i64, i64* %21, align 8
  %445 = load i64, i64* @SOCK_LATER, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %448

447:                                              ; preds = %443
  store i32 1, i32* %23, align 4
  store i32 0, i32* %7, align 4
  br label %462

448:                                              ; preds = %443
  %449 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %461

453:                                              ; preds = %448
  %454 = load i64, i64* %21, align 8
  %455 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 6
  %457 = load i32, i32* %456, align 8
  %458 = sext i32 %457 to i64
  %459 = add nsw i64 %458, %454
  %460 = trunc i64 %459 to i32
  store i32 %460, i32* %456, align 8
  br label %461

461:                                              ; preds = %453, %448
  br label %462

462:                                              ; preds = %461, %447
  br label %463

463:                                              ; preds = %462, %442
  %464 = load i32, i32* %23, align 4
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %463
  store i32 0, i32* %10, align 4
  br label %467

467:                                              ; preds = %466, %463
  br label %468

468:                                              ; preds = %467
  %469 = load i64, i64* %18, align 8
  %470 = add nsw i64 %469, 1
  store i64 %470, i64* %18, align 8
  br label %222

471:                                              ; preds = %222
  %472 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %473 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %472, i32 0, i32 5
  %474 = load i64, i64* %473, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %487, label %476

476:                                              ; preds = %471
  %477 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %478 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %477, i32 0, i32 4
  %479 = load i64*, i64** %478, align 8
  %480 = icmp ne i64* %479, null
  br i1 %480, label %481, label %488

481:                                              ; preds = %476
  %482 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %483 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %482, i32 0, i32 4
  %484 = load i64*, i64** %483, align 8
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %481, %471
  store i32 1, i32* %10, align 4
  store i32 1, i32* %7, align 4
  br label %488

488:                                              ; preds = %487, %481, %476
  %489 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %489, i32 0, i32 1
  %491 = load i64, i64* %490, align 8
  %492 = call i64 (...) @Tick64()
  %493 = icmp sle i64 %491, %492
  br i1 %493, label %494, label %495

494:                                              ; preds = %488
  store i32 1, i32* %10, align 4
  store i32 1, i32* %7, align 4
  br label %495

495:                                              ; preds = %494, %488
  br label %218

496:                                              ; preds = %218
  br label %54

497:                                              ; preds = %209, %202, %68
  %498 = load i64*, i64** %13, align 8
  %499 = call i32 @Free(i64* %498)
  %500 = load i64*, i64** %14, align 8
  %501 = call i32 @Free(i64* %500)
  store i32 0, i32* %17, align 4
  br label %502

502:                                              ; preds = %497, %38
  %503 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %503)
  %504 = load i32, i32* %17, align 4
  switch i32 %504, label %506 [
    i32 0, label %505
    i32 1, label %505
  ]

505:                                              ; preds = %502, %502
  ret void

506:                                              ; preds = %502
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TtGenerateRandomData(i64**, i64*) #2

declare dso_local i32 @NoticeThreadInit(i32*) #2

declare dso_local i32 @Wait(i32, i32) #2

declare dso_local i32 @WaitSockEvent(i32, i32) #2

declare dso_local i64 @Tick64(...) #2

declare dso_local i32 @TtPrint(i32, i32, i32*) #2

declare dso_local i32* @_UU(i8*) #2

declare dso_local i32 @UniFormat(i32*, i32, i32*, double) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_6__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @WRITE_UINT64(i64*, i64) #2

declare dso_local i64 @Send(i32, i64*, i32, i32) #2

declare dso_local i64 @Recv(i32, i64*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @Endian64(i64) #2

declare dso_local i32 @Free(i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
