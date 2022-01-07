; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetFarmInfo.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetFarmInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i32, i32, i8*, i8*, i8*, i32*, i32, i32, i32, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i64 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i64 0, align 8
@ERR_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StGetFarmInfo(%struct.TYPE_21__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %6, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = call i32 @FreeRpcFarmInfo(%struct.TYPE_17__* %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = call i32 @Zero(%struct.TYPE_17__* %26, i32 88)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i64, i64* @ERR_NOT_FARM_CONTROLLER, align 8
  store i64 %34, i64* %3, align 8
  br label %327

35:                                               ; preds = %2
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @LockList(i32 %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @IsInListKey(i32 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %319

46:                                               ; preds = %35
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call %struct.TYPE_20__* @ListKeyToPointer(i32 %49, i64 %50)
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @LockList(i32 %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @LIST_NUM(i32 %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = mul i64 8, %77
  %79 = trunc i64 %78 to i32
  %80 = call i8* @ZeroMalloc(i32 %79)
  %81 = bitcast i8* %80 to %struct.TYPE_18__*
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 12
  store %struct.TYPE_18__* %81, %struct.TYPE_18__** %83, align 8
  store i64 0, i64* %8, align 8
  br label %84

84:                                               ; preds = %114, %46
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %84
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 12
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i64 %94
  store %struct.TYPE_18__* %95, %struct.TYPE_18__** %11, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %8, align 8
  %100 = call i8* @LIST_DATA(i32 %98, i64 %99)
  %101 = bitcast i8* %100 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %101, %struct.TYPE_19__** %12, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @StrCpy(i32 %109, i32 4, i32 %112)
  br label %114

114:                                              ; preds = %90
  %115 = load i64, i64* %8, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %8, align 8
  br label %84

117:                                              ; preds = %84
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @UnlockList(i32 %120)
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 11
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %251

126:                                              ; preds = %117
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @TickToTime(i32 %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 10
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 2
  store i32 16777343, i32* %136, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @GetMachineName(i32 %139, i32 4)
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 8
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @LockList(i32 %148)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 3
  store i32 0, i32* %151, align 4
  store i64 0, i64* %13, align 8
  br label %152

152:                                              ; preds = %176, %126
  %153 = load i64, i64* %13, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @LIST_NUM(i32 %156)
  %158 = icmp ult i64 %153, %157
  br i1 %158, label %159, label %179

159:                                              ; preds = %152
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i64, i64* %13, align 8
  %164 = call i8* @LIST_DATA(i32 %162, i64 %163)
  %165 = bitcast i8* %164 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %165, %struct.TYPE_15__** %15, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %159
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %170, %159
  br label %176

176:                                              ; preds = %175
  %177 = load i64, i64* %13, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %13, align 8
  br label %152

179:                                              ; preds = %152
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = mul i64 8, %183
  %185 = trunc i64 %184 to i32
  %186 = call i8* @ZeroMalloc(i32 %185)
  %187 = bitcast i8* %186 to i32*
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 7
  store i32* %187, i32** %189, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %190

190:                                              ; preds = %219, %179
  %191 = load i64, i64* %13, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @LIST_NUM(i32 %194)
  %196 = icmp ult i64 %191, %195
  br i1 %196, label %197, label %222

197:                                              ; preds = %190
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load i64, i64* %13, align 8
  %202 = call i8* @LIST_DATA(i32 %200, i64 %201)
  %203 = bitcast i8* %202 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %203, %struct.TYPE_15__** %16, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %197
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 7
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* %14, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %14, align 8
  %217 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32 %211, i32* %217, align 4
  br label %218

218:                                              ; preds = %208, %197
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %13, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %13, align 8
  br label %190

222:                                              ; preds = %190
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @UnlockList(i32 %225)
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @CloneX(i32 %231)
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 6
  store i8* %232, i8** %234, align 8
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i8* @Count(i32 %239)
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 5
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i8* @Count(i32 %247)
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 4
  store i8* %248, i8** %250, align 8
  br label %318

251:                                              ; preds = %117
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 8
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 10
  store i32 %254, i32* %256, align 8
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 9
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 7
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @StrCpy(i32 %264, i32 4, i32 %267)
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 8
  store i32 %271, i32* %273, align 8
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 3
  store i32 %276, i32* %278, align 4
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = mul i64 8, %282
  %284 = trunc i64 %283 to i32
  %285 = call i8* @ZeroMalloc(i32 %284)
  %286 = bitcast i8* %285 to i32*
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 7
  store i32* %286, i32** %288, align 8
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 7
  %291 = load i32*, i32** %290, align 8
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  %299 = mul i64 8, %298
  %300 = trunc i64 %299 to i32
  %301 = call i32 @Copy(i32* %291, i32 %294, i32 %300)
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = call i8* @CloneX(i32 %304)
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 6
  store i8* %305, i8** %307, align 8
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 3
  %310 = load i8*, i8** %309, align 8
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 5
  store i8* %310, i8** %312, align 8
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 2
  %315 = load i8*, i8** %314, align 8
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 4
  store i8* %315, i8** %317, align 8
  br label %318

318:                                              ; preds = %251, %222
  br label %321

319:                                              ; preds = %35
  %320 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  store i64 %320, i64* %9, align 8
  br label %321

321:                                              ; preds = %319, %318
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @UnlockList(i32 %324)
  %326 = load i64, i64* %9, align 8
  store i64 %326, i64* %3, align 8
  br label %327

327:                                              ; preds = %321, %33
  %328 = load i64, i64* %3, align 8
  ret i64 %328
}

declare dso_local i32 @FreeRpcFarmInfo(%struct.TYPE_17__*) #1

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @IsInListKey(i32, i64) #1

declare dso_local %struct.TYPE_20__* @ListKeyToPointer(i32, i64) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @TickToTime(i32) #1

declare dso_local i32 @GetMachineName(i32, i32) #1

declare dso_local i8* @CloneX(i32) #1

declare dso_local i8* @Count(i32) #1

declare dso_local i32 @Copy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
