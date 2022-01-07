; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_StorePacketToHubPa.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_StorePacketToHubPa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_33__*, %struct.TYPE_29__*, %struct.TYPE_28__ }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_26__*, i64, i64, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32, i64 }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_30__ = type { i32*, i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }

@LIMITER_SAMPLING_SPAN = common dso_local global i64 0, align 8
@MD5_SIZE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@MAX_STORED_QUEUE_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StorePacketToHubPa(%struct.TYPE_31__* %0, %struct.TYPE_29__* %1, i8* %2, i32 %3, %struct.TYPE_30__* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %8, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_30__* %4, %struct.TYPE_30__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %24 = icmp eq %struct.TYPE_31__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i8*, i8** %10, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %7
  br label %491

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 14
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @Free(i8* %33)
  br label %491

35:                                               ; preds = %29
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %40 = icmp ne %struct.TYPE_29__* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %43, align 8
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %47, align 8
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %50 = call i32 @ApplyAccessListToForwardPacket(%struct.TYPE_26__* %44, %struct.TYPE_29__* %45, %struct.TYPE_29__* %48, %struct.TYPE_30__* %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @Free(i8* %53)
  br label %491

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %35
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %59 = icmp ne %struct.TYPE_29__* %58, null
  br i1 %59, label %60, label %106

60:                                               ; preds = %57
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 11
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %60
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %71 = icmp ne %struct.TYPE_30__* %70, null
  br i1 %71, label %72, label %104

72:                                               ; preds = %69
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %74, align 8
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %77 = call i32 @IsMostHighestPriorityPacket(%struct.TYPE_29__* %75, %struct.TYPE_30__* %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %72
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 3
  store %struct.TYPE_28__* %81, %struct.TYPE_28__** %16, align 8
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %84 = call i32 @IntoTrafficLimiter(%struct.TYPE_28__* %82, %struct.TYPE_30__* %83)
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %87, 1000
  %89 = load i64, i64* @LIMITER_SAMPLING_SPAN, align 8
  %90 = trunc i64 %89 to i32
  %91 = sdiv i32 %88, %90
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 11
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %91, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %79
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @Free(i8* %101)
  br label %491

103:                                              ; preds = %79
  br label %104

104:                                              ; preds = %103, %72, %69
  br label %105

105:                                              ; preds = %104, %60
  br label %106

106:                                              ; preds = %105, %57
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %108 = icmp ne %struct.TYPE_30__* %107, null
  br i1 %108, label %109, label %238

109:                                              ; preds = %106
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %111 = icmp ne %struct.TYPE_29__* %110, null
  br i1 %111, label %112, label %238

112:                                              ; preds = %109
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 6
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %114, align 8
  %116 = icmp ne %struct.TYPE_26__* %115, null
  br i1 %116, label %117, label %238

117:                                              ; preds = %112
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %121, align 8
  %123 = icmp ne %struct.TYPE_27__* %122, null
  br i1 %123, label %124, label %238

124:                                              ; preds = %117
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %238

133:                                              ; preds = %124
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %17, align 8
  %137 = load i32*, i32** %17, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %166

141:                                              ; preds = %133
  %142 = load i32*, i32** %17, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 128
  br i1 %145, label %146, label %166

146:                                              ; preds = %141
  %147 = load i32*, i32** %17, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 200
  br i1 %150, label %151, label %166

151:                                              ; preds = %146
  %152 = load i32*, i32** %17, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %151
  %157 = load i32*, i32** %17, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 4
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load i32*, i32** %17, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 5
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %196, label %166

166:                                              ; preds = %161, %156, %151, %146, %141, %133
  %167 = load i32*, i32** %17, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %237

171:                                              ; preds = %166
  %172 = load i32*, i32** %17, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 13
  br i1 %175, label %176, label %237

176:                                              ; preds = %171
  %177 = load i32*, i32** %17, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 136
  br i1 %180, label %181, label %237

181:                                              ; preds = %176
  %182 = load i32*, i32** %17, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %237

186:                                              ; preds = %181
  %187 = load i32*, i32** %17, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 4
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %237

191:                                              ; preds = %186
  %192 = load i32*, i32** %17, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 5
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %237

196:                                              ; preds = %191, %161
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %198, align 8
  store %struct.TYPE_29__* %199, %struct.TYPE_29__** %18, align 8
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %201 = icmp ne %struct.TYPE_29__* %200, null
  br i1 %201, label %202, label %236

202:                                              ; preds = %196
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 11
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %204, align 8
  %206 = icmp ne %struct.TYPE_25__* %205, null
  br i1 %206, label %207, label %235

207:                                              ; preds = %202
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 11
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %235

214:                                              ; preds = %207
  %215 = load i32, i32* @MD5_SIZE, align 4
  %216 = zext i32 %215 to i64
  %217 = call i8* @llvm.stacksave()
  store i8* %217, i8** %19, align 8
  %218 = alloca i32, i64 %216, align 16
  store i64 %216, i64* %20, align 8
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @Md5(i32* %218, i32 %221, i32 %224)
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 10
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @MD5_SIZE, align 4
  %230 = call i32 @Copy(i32 %228, i32* %218, i32 %229)
  %231 = call i32 (...) @Tick64()
  %232 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %232, i32 0, i32 9
  store i32 %231, i32* %233, align 8
  %234 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %234)
  br label %235

235:                                              ; preds = %214, %207, %202
  br label %236

236:                                              ; preds = %235, %196
  br label %237

237:                                              ; preds = %236, %191, %186, %181, %176, %171, %166
  br label %238

238:                                              ; preds = %237, %124, %117, %112, %109, %106
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %240, align 8
  %242 = icmp ne %struct.TYPE_29__* %241, null
  br i1 %242, label %243, label %286

243:                                              ; preds = %238
  %244 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %286

250:                                              ; preds = %243
  store i32 0, i32* %21, align 4
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %252 = icmp ne %struct.TYPE_29__* %251, null
  br i1 %252, label %253, label %273

253:                                              ; preds = %250
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 6
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %255, align 8
  %257 = icmp ne %struct.TYPE_26__* %256, null
  br i1 %257, label %258, label %273

258:                                              ; preds = %253
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i32 0, i32 6
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %262, align 8
  %264 = icmp ne %struct.TYPE_27__* %263, null
  br i1 %264, label %265, label %273

265:                                              ; preds = %258
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %266, i32 0, i32 6
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  store i32 %272, i32* %21, align 4
  br label %273

273:                                              ; preds = %265, %258, %253, %250
  %274 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_29__*, %struct.TYPE_29__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i32, i32* %21, align 4
  %280 = call i32 @VLanRemoveTag(i8** %10, i32* %11, i64 %278, i32 %279)
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %273
  %283 = load i8*, i8** %10, align 8
  %284 = call i32 @Free(i8* %283)
  br label %491

285:                                              ; preds = %273
  br label %286

286:                                              ; preds = %285, %243, %238
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %288 = icmp ne %struct.TYPE_29__* %287, null
  br i1 %288, label %289, label %430

289:                                              ; preds = %286
  %290 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %291, align 8
  %293 = icmp ne %struct.TYPE_29__* %292, null
  br i1 %293, label %294, label %430

294:                                              ; preds = %289
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 6
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %296, align 8
  %298 = icmp ne %struct.TYPE_26__* %297, null
  br i1 %298, label %299, label %430

299:                                              ; preds = %294
  %300 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %300, i32 0, i32 6
  %302 = load %struct.TYPE_26__*, %struct.TYPE_26__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %303, align 8
  %305 = icmp ne %struct.TYPE_27__* %304, null
  br i1 %305, label %306, label %430

306:                                              ; preds = %299
  %307 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_29__*, %struct.TYPE_29__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %341, label %313

313:                                              ; preds = %306
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %314, i32 0, i32 2
  %316 = load %struct.TYPE_29__*, %struct.TYPE_29__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %316, i32 0, i32 8
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %327

320:                                              ; preds = %313
  %321 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_29__*, %struct.TYPE_29__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %341, label %327

327:                                              ; preds = %320, %313
  %328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_29__*, %struct.TYPE_29__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %330, i32 0, i32 7
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %429

334:                                              ; preds = %327
  %335 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %335, i32 0, i32 2
  %337 = load %struct.TYPE_29__*, %struct.TYPE_29__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %337, i32 0, i32 3
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %429

341:                                              ; preds = %334, %320, %306
  %342 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %342, i32 0, i32 6
  %344 = load %struct.TYPE_26__*, %struct.TYPE_26__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %428

350:                                              ; preds = %341
  %351 = load i32, i32* @INFINITE, align 4
  store i32 %351, i32* %22, align 4
  %352 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %352, i32 0, i32 2
  %354 = load %struct.TYPE_29__*, %struct.TYPE_29__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %350
  %359 = load i32, i32* %22, align 4
  %360 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %360, i32 0, i32 2
  %362 = load %struct.TYPE_29__*, %struct.TYPE_29__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = call i32 @MIN(i32 %359, i64 %364)
  store i32 %365, i32* %22, align 4
  br label %366

366:                                              ; preds = %358, %350
  %367 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %367, i32 0, i32 2
  %369 = load %struct.TYPE_29__*, %struct.TYPE_29__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %369, i32 0, i32 8
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %388

373:                                              ; preds = %366
  %374 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %374, i32 0, i32 2
  %376 = load %struct.TYPE_29__*, %struct.TYPE_29__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %376, i32 0, i32 2
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %373
  %381 = load i32, i32* %22, align 4
  %382 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %382, i32 0, i32 2
  %384 = load %struct.TYPE_29__*, %struct.TYPE_29__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = call i32 @MIN(i32 %381, i64 %386)
  store i32 %387, i32* %22, align 4
  br label %411

388:                                              ; preds = %373, %366
  %389 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %390 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %389, i32 0, i32 2
  %391 = load %struct.TYPE_29__*, %struct.TYPE_29__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %391, i32 0, i32 7
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %410

395:                                              ; preds = %388
  %396 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %397 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %396, i32 0, i32 2
  %398 = load %struct.TYPE_29__*, %struct.TYPE_29__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %398, i32 0, i32 3
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %410

402:                                              ; preds = %395
  %403 = load i32, i32* %22, align 4
  %404 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %405 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %404, i32 0, i32 2
  %406 = load %struct.TYPE_29__*, %struct.TYPE_29__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %406, i32 0, i32 3
  %408 = load i64, i64* %407, align 8
  %409 = call i32 @MIN(i32 %403, i64 %408)
  store i32 %409, i32* %22, align 4
  br label %410

410:                                              ; preds = %402, %395, %388
  br label %411

411:                                              ; preds = %410, %380
  %412 = load i32, i32* %22, align 4
  %413 = load i32, i32* @INFINITE, align 4
  %414 = icmp ne i32 %412, %413
  br i1 %414, label %415, label %427

415:                                              ; preds = %411
  %416 = load i8*, i8** %10, align 8
  %417 = load i32, i32* %11, align 4
  %418 = load i32, i32* %22, align 4
  %419 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %419, i32 0, i32 6
  %421 = load %struct.TYPE_26__*, %struct.TYPE_26__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_27__*, %struct.TYPE_27__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @AdjustTcpMssL2(i8* %416, i32 %417, i32 %418, i32 %425)
  br label %427

427:                                              ; preds = %415, %411
  br label %428

428:                                              ; preds = %427, %341
  br label %429

429:                                              ; preds = %428, %334, %327
  br label %430

430:                                              ; preds = %429, %299, %294, %289, %286
  %431 = load i8*, i8** %10, align 8
  %432 = load i32, i32* %11, align 4
  %433 = call %struct.TYPE_32__* @NewBlock(i8* %431, i32 %432, i32 0)
  store %struct.TYPE_32__* %433, %struct.TYPE_32__** %15, align 8
  %434 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %434, i32 0, i32 1
  %436 = load %struct.TYPE_33__*, %struct.TYPE_33__** %435, align 8
  %437 = call i32 @LockQueue(%struct.TYPE_33__* %436)
  %438 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %438, i32 0, i32 1
  %440 = load %struct.TYPE_33__*, %struct.TYPE_33__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @MAX_STORED_QUEUE_NUM, align 8
  %444 = icmp slt i64 %442, %443
  br i1 %444, label %445, label %468

445:                                              ; preds = %430
  %446 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %447 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %446, i32 0, i32 1
  %448 = load %struct.TYPE_33__*, %struct.TYPE_33__** %447, align 8
  %449 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %450 = call i32 @InsertQueue(%struct.TYPE_33__* %448, %struct.TYPE_32__* %449)
  %451 = load i32, i32* %13, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %467

453:                                              ; preds = %445
  %454 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %455 = icmp ne %struct.TYPE_29__* %454, null
  br i1 %455, label %456, label %466

456:                                              ; preds = %453
  %457 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %458 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %457, i32 0, i32 0
  store i32 1, i32* %458, align 4
  %459 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %460 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %459, i32 0, i32 5
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %463 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @CedarAddCurrentTcpQueueSize(i32 %461, i32 %464)
  br label %466

466:                                              ; preds = %456, %453
  br label %467

467:                                              ; preds = %466, %445
  br label %471

468:                                              ; preds = %430
  %469 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %470 = call i32 @FreeBlock(%struct.TYPE_32__* %469)
  br label %471

471:                                              ; preds = %468, %467
  %472 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %473 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %472, i32 0, i32 1
  %474 = load %struct.TYPE_33__*, %struct.TYPE_33__** %473, align 8
  %475 = call i32 @UnlockQueue(%struct.TYPE_33__* %474)
  %476 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %477 = icmp ne %struct.TYPE_29__* %476, null
  br i1 %477, label %478, label %486

478:                                              ; preds = %471
  %479 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %480 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %479, i32 0, i32 4
  %481 = load i32, i32* %480, align 8
  %482 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %483 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = call i32 @AddCancelList(i32 %481, i32 %484)
  br label %491

486:                                              ; preds = %471
  %487 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %488 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = call i32 @Cancel(i32 %489)
  br label %491

491:                                              ; preds = %28, %32, %52, %100, %282, %486, %478
  ret void
}

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @ApplyAccessListToForwardPacket(%struct.TYPE_26__*, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @IsMostHighestPriorityPacket(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @IntoTrafficLimiter(%struct.TYPE_28__*, %struct.TYPE_30__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Md5(i32*, i32, i32) #1

declare dso_local i32 @Copy(i32, i32*, i32) #1

declare dso_local i32 @Tick64(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @VLanRemoveTag(i8**, i32*, i64, i32) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @AdjustTcpMssL2(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_32__* @NewBlock(i8*, i32, i32) #1

declare dso_local i32 @LockQueue(%struct.TYPE_33__*) #1

declare dso_local i32 @InsertQueue(%struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local i32 @CedarAddCurrentTcpQueueSize(i32, i32) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_32__*) #1

declare dso_local i32 @UnlockQueue(%struct.TYPE_33__*) #1

declare dso_local i32 @AddCancelList(i32, i32) #1

declare dso_local i32 @Cancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
