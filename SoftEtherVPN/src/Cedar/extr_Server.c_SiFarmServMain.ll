; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiFarmServMain.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiFarmServMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_23__*, i32, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_19__ = type { i32, i64, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i32, i32*, i32* }

@SERVER_CONTROL_TCP_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SiFarmServMain Failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"SiFarmServMain Started.\0A\00", align 1
@HUB_TYPE_FARM_STATIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"taskname\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"createhub\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"updatehub\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"SiFarmServMain: while (true)\0A\00", align 1
@FIRM_SERV_RECV_PACK_MAX_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"noop\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"SiFarmServMain: DISCONNECTED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiFarmServMain(%struct.TYPE_17__* %0, i32* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %22 = load i32, i32* @SERVER_CONTROL_TCP_TIMEOUT, align 4
  %23 = sdiv i32 %22, 2
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = icmp eq %struct.TYPE_17__* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = icmp eq %struct.TYPE_21__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %27, %3
  %34 = call i32 @Debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %279

35:                                               ; preds = %30
  %36 = call i32 @Debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %10, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @LockList(i32 %42)
  store i64 0, i64* %9, align 8
  br label %44

44:                                               ; preds = %126, %35
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @LIST_NUM(i32 %48)
  %50 = icmp slt i64 %45, %49
  br i1 %50, label %51, label %129

51:                                               ; preds = %44
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %9, align 8
  %56 = call %struct.TYPE_19__* @LIST_DATA(i32 %54, i64 %55)
  store %struct.TYPE_19__* %56, %struct.TYPE_19__** %11, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %125

61:                                               ; preds = %51
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HUB_TYPE_FARM_STATIC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %124

67:                                               ; preds = %61
  %68 = call i32* (...) @NewPack()
  store i32* %68, i32** %12, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %71 = call i32 @SiPackAddCreateHub(i32* %69, %struct.TYPE_19__* %70)
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @PackAddStr(i32* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @HttpServerSend(i32* %74, i32* %75)
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @FreePack(i32* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32* @HttpServerRecv(i32* %79)
  store i32* %80, i32** %12, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @FreePack(i32* %81)
  %83 = call i32* (...) @NewPack()
  store i32* %83, i32** %12, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %86 = call i32 @SiPackAddCreateHub(i32* %84, %struct.TYPE_19__* %85)
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @PackAddStr(i32* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @HttpServerSend(i32* %89, i32* %90)
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @FreePack(i32* %92)
  %94 = load i32*, i32** %5, align 8
  %95 = call i32* @HttpServerRecv(i32* %94)
  store i32* %95, i32** %12, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @FreePack(i32* %96)
  %98 = call %struct.TYPE_18__* @ZeroMalloc(i32 16)
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %13, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  store %struct.TYPE_21__* %101, %struct.TYPE_21__** %103, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @StrCpy(i32 %106, i32 4, i32 %109)
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @LockList(i32 %113)
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %119 = call i32 @Add(i32 %117, %struct.TYPE_18__* %118)
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @UnlockList(i32 %122)
  br label %124

124:                                              ; preds = %67, %61
  br label %125

125:                                              ; preds = %124, %51
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %9, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %9, align 8
  br label %44

129:                                              ; preds = %44
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @UnlockList(i32 %132)
  %134 = call i32 @Debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %135

135:                                              ; preds = %129, %254
  br label %136

136:                                              ; preds = %183, %135
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %138, align 8
  %140 = call i32 @LockQueue(%struct.TYPE_23__* %139)
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  %144 = call %struct.TYPE_20__* @GetNext(%struct.TYPE_23__* %143)
  store %struct.TYPE_20__* %144, %struct.TYPE_20__** %14, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %146, align 8
  %148 = call i32 @UnlockQueue(%struct.TYPE_23__* %147)
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %150 = icmp ne %struct.TYPE_20__* %149, null
  br i1 %150, label %151, label %182

151:                                              ; preds = %136
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %16, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = load i32*, i32** %16, align 8
  %157 = call i32 @HttpServerSend(i32* %155, i32* %156)
  store i32 %157, i32* %17, align 4
  store i32 0, i32* %8, align 4
  %158 = load i32, i32* %17, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %151
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @Set(i32 %163)
  br label %255

165:                                              ; preds = %151
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* @FIRM_SERV_RECV_PACK_MAX_SIZE, align 4
  %168 = call i32* @HttpServerRecvEx(i32* %166, i32 %167)
  store i32* %168, i32** %16, align 8
  %169 = load i32*, i32** %16, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  store i32* %169, i32** %171, align 8
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @Set(i32 %174)
  %176 = load i32*, i32** %16, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %165
  %179 = load i32*, i32** %5, align 8
  %180 = call i32 @Disconnect(i32* %179)
  br label %255

181:                                              ; preds = %165
  br label %182

182:                                              ; preds = %181, %136
  br label %183

183:                                              ; preds = %182
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %185 = icmp ne %struct.TYPE_20__* %184, null
  br i1 %185, label %136, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %210

189:                                              ; preds = %186
  %190 = call i32* (...) @NewPack()
  store i32* %190, i32** %18, align 8
  %191 = load i32*, i32** %18, align 8
  %192 = call i32 @PackAddStr(i32* %191, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %193 = load i32*, i32** %5, align 8
  %194 = load i32*, i32** %18, align 8
  %195 = call i32 @HttpServerSend(i32* %193, i32* %194)
  store i32 %195, i32* %19, align 4
  %196 = load i32*, i32** %18, align 8
  %197 = call i32 @FreePack(i32* %196)
  %198 = load i32, i32* %19, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %189
  br label %255

201:                                              ; preds = %189
  %202 = load i32*, i32** %5, align 8
  %203 = call i32* @HttpServerRecv(i32* %202)
  store i32* %203, i32** %18, align 8
  %204 = load i32*, i32** %18, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %255

207:                                              ; preds = %201
  %208 = load i32*, i32** %18, align 8
  %209 = call i32 @FreePack(i32* %208)
  br label %210

210:                                              ; preds = %207, %186
  %211 = call i64 (...) @Tick64()
  store i64 %211, i64* %15, align 8
  br label %212

212:                                              ; preds = %210, %253
  %213 = load i64, i64* %15, align 8
  %214 = load i64, i64* %7, align 8
  %215 = add nsw i64 %213, %214
  %216 = call i64 (...) @Tick64()
  %217 = icmp sle i64 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  br label %254

219:                                              ; preds = %212
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @Wait(i32 %222, i32 250)
  store i32 0, i32* %20, align 4
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %225, align 8
  %227 = call i32 @LockQueue(%struct.TYPE_23__* %226)
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %219
  store i32 1, i32* %20, align 4
  br label %235

235:                                              ; preds = %234, %219
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %237, align 8
  %239 = call i32 @UnlockQueue(%struct.TYPE_23__* %238)
  %240 = load i32, i32* %20, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %252, label %242

242:                                              ; preds = %235
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %242
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %247, %242, %235
  br label %254

253:                                              ; preds = %247
  br label %212

254:                                              ; preds = %252, %218
  store i32 1, i32* %8, align 4
  br label %135

255:                                              ; preds = %206, %200, %178, %160
  %256 = call i32 @Debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 0
  store i32 1, i32* %258, align 8
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %260, align 8
  %262 = call i32 @LockQueue(%struct.TYPE_23__* %261)
  br label %263

263:                                              ; preds = %269, %255
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %265, align 8
  %267 = call %struct.TYPE_20__* @GetNext(%struct.TYPE_23__* %266)
  store %struct.TYPE_20__* %267, %struct.TYPE_20__** %21, align 8
  %268 = icmp ne %struct.TYPE_20__* %267, null
  br i1 %268, label %269, label %274

269:                                              ; preds = %263
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @Set(i32 %272)
  br label %263

274:                                              ; preds = %263
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %276, align 8
  %278 = call i32 @UnlockQueue(%struct.TYPE_23__* %277)
  br label %279

279:                                              ; preds = %274, %33
  ret void
}

declare dso_local i32 @Debug(i8*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_19__* @LIST_DATA(i32, i64) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @SiPackAddCreateHub(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i32 @HttpServerSend(i32*, i32*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32* @HttpServerRecv(i32*) #1

declare dso_local %struct.TYPE_18__* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @Add(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @LockQueue(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_20__* @GetNext(%struct.TYPE_23__*) #1

declare dso_local i32 @UnlockQueue(%struct.TYPE_23__*) #1

declare dso_local i32 @Set(i32) #1

declare dso_local i32* @HttpServerRecvEx(i32*, i32) #1

declare dso_local i32 @Disconnect(i32*) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @Wait(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
