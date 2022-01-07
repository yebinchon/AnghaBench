; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlNdisReceiveNetBufferListsProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlNdisReceiveNetBufferListsProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32*, %struct.TYPE_10__*, i32*, i32* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_11__*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@NDIS_RETURN_FLAGS_DISPATCH_LEVEL = common dso_local global i32 0, align 4
@Ieee8021QNetBufferListInfo = common dso_local global i32 0, align 4
@SL_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@SL_MAX_PACKET_QUEUED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SlNdisReceiveNetBufferListsProc(i64 %0, i32* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca %struct.TYPE_14__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_12__*, align 8
  %26 = alloca %struct.TYPE_11__*, align 8
  %27 = alloca %struct.TYPE_12__*, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %28 = load i64, i64* %6, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %11, align 8
  store i64 0, i64* %13, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %5
  br label %355

36:                                               ; preds = %32
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i64, i64* %10, align 8
  %49 = call i64 @NDIS_TEST_RECEIVE_AT_DISPATCH_LEVEL(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i64, i64* %13, align 8
  %53 = load i32, i32* @NDIS_RETURN_FLAGS_DISPATCH_LEVEL, align 4
  %54 = call i32 @NDIS_SET_RETURN_FLAG(i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = icmp eq %struct.TYPE_10__* %63, null
  br i1 %64, label %82, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %72, %65, %60, %55
  br label %344

83:                                               ; preds = %77
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %15, align 8
  store i64 8, i64* %16, align 8
  %87 = load i32*, i32** %7, align 8
  store i32* %87, i32** %14, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @SlLockList(i32 %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %337

98:                                               ; preds = %83
  store i64 0, i64* %12, align 8
  br label %99

99:                                               ; preds = %120, %98
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @SL_LIST_NUM(i32 %105)
  %107 = icmp slt i64 %100, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %99
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call %struct.TYPE_12__* @SL_LIST_DATA(i32 %113, i64 %114)
  store %struct.TYPE_12__* %115, %struct.TYPE_12__** %17, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @SlLock(i32 %118)
  br label %120

120:                                              ; preds = %108
  %121 = load i64, i64* %12, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %12, align 8
  br label %99

123:                                              ; preds = %99
  br label %124

124:                                              ; preds = %304, %123
  %125 = load i32*, i32** %14, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %307

127:                                              ; preds = %124
  %128 = load i32*, i32** %14, align 8
  %129 = call i32* @NET_BUFFER_LIST_FIRST_NB(i32* %128)
  store i32* %129, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %130 = load i32*, i32** %14, align 8
  %131 = load i32, i32* @Ieee8021QNetBufferListInfo, align 4
  %132 = call i64 @NET_BUFFER_LIST_INFO(i32* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %167

134:                                              ; preds = %127
  %135 = load i32*, i32** %14, align 8
  %136 = load i32, i32* @Ieee8021QNetBufferListInfo, align 4
  %137 = call i64 @NET_BUFFER_LIST_INFO(i32* %135, i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  store i64 %137, i64* %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %166

143:                                              ; preds = %134
  store i32 1, i32* %19, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  store i32 1, i32* %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 57344
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, 4096
  %154 = or i32 %149, %153
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, 4095
  %159 = or i32 %154, %158
  store i32 %159, i32* %22, align 4
  %160 = getelementptr inbounds i32, i32* %22, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 %161, i32* %162, align 4
  %163 = getelementptr inbounds i32, i32* %22, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %164, i32* %165, align 4
  br label %166

166:                                              ; preds = %143, %134
  br label %167

167:                                              ; preds = %166, %127
  br label %168

168:                                              ; preds = %301, %167
  %169 = load i32*, i32** %18, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %304

171:                                              ; preds = %168
  %172 = load i32*, i32** %18, align 8
  %173 = call i64 @NET_BUFFER_DATA_LENGTH(i32* %172)
  store i64 %173, i64* %23, align 8
  %174 = load i64, i64* %23, align 8
  %175 = icmp sge i64 %174, 14
  br i1 %175, label %176, label %301

176:                                              ; preds = %171
  %177 = load i64, i64* %23, align 8
  %178 = load i64, i64* %16, align 8
  %179 = icmp sle i64 %177, %178
  br i1 %179, label %180, label %301

180:                                              ; preds = %176
  %181 = load i64, i64* %23, align 8
  %182 = load i32, i32* %19, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load i32, i32* @SL_MAX_PACKET_SIZE, align 4
  br label %189

186:                                              ; preds = %180
  %187 = load i32, i32* @SL_MAX_PACKET_SIZE, align 4
  %188 = sub nsw i32 %187, 4
  br label %189

189:                                              ; preds = %186, %184
  %190 = phi i32 [ %185, %184 ], [ %188, %186 ]
  %191 = sext i32 %190 to i64
  %192 = icmp sle i64 %181, %191
  br i1 %192, label %193, label %301

193:                                              ; preds = %189
  %194 = load i32*, i32** %18, align 8
  %195 = load i64, i64* %23, align 8
  %196 = load i32*, i32** %15, align 8
  %197 = call i32* @NdisGetDataBuffer(i32* %194, i64 %195, i32* %196, i32 1, i32 0)
  store i32* %197, i32** %24, align 8
  %198 = load i32*, i32** %24, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %300

200:                                              ; preds = %193
  store i64 0, i64* %12, align 8
  br label %201

201:                                              ; preds = %296, %200
  %202 = load i64, i64* %12, align 8
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 4
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @SL_LIST_NUM(i32 %207)
  %209 = icmp slt i64 %202, %208
  br i1 %209, label %210, label %299

210:                                              ; preds = %201
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i64, i64* %12, align 8
  %217 = call %struct.TYPE_12__* @SL_LIST_DATA(i32 %215, i64 %216)
  store %struct.TYPE_12__* %217, %struct.TYPE_12__** %25, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @SL_MAX_PACKET_QUEUED, align 8
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %223, label %295

223:                                              ; preds = %210
  %224 = call %struct.TYPE_11__* @SlMalloc(i32 24)
  store %struct.TYPE_11__* %224, %struct.TYPE_11__** %26, align 8
  %225 = load i32, i32* %19, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %237

227:                                              ; preds = %223
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i32*, i32** %24, align 8
  %232 = load i64, i64* %23, align 8
  %233 = call i32 @SlCopy(i32* %230, i32* %231, i64 %232)
  %234 = load i64, i64* %23, align 8
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 2
  store i64 %234, i64* %236, align 8
  br label %270

237:                                              ; preds = %223
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i32*, i32** %24, align 8
  %242 = call i32 @SlCopy(i32* %240, i32* %241, i64 12)
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 12
  store i32 129, i32* %246, align 4
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 13
  store i32 0, i32* %250, align 4
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 14
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %256 = call i32 @SlCopy(i32* %254, i32* %255, i64 2)
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 16
  %261 = load i32*, i32** %24, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 12
  %263 = load i64, i64* %23, align 8
  %264 = sub nsw i64 %263, 12
  %265 = call i32 @SlCopy(i32* %260, i32* %262, i64 %264)
  %266 = load i64, i64* %23, align 8
  %267 = add nsw i64 %266, 4
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 2
  store i64 %267, i64* %269, align 8
  br label %270

270:                                              ; preds = %237, %227
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %272, align 8
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 4
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %274, align 8
  %276 = icmp eq %struct.TYPE_11__* %275, null
  br i1 %276, label %277, label %281

277:                                              ; preds = %270
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 4
  store %struct.TYPE_11__* %278, %struct.TYPE_11__** %280, align 8
  br label %287

281:                                              ; preds = %270
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 3
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 1
  store %struct.TYPE_11__* %282, %struct.TYPE_11__** %286, align 8
  br label %287

287:                                              ; preds = %281, %277
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 3
  store %struct.TYPE_11__* %288, %struct.TYPE_11__** %290, align 8
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = add nsw i64 %293, 1
  store i64 %294, i64* %292, align 8
  br label %295

295:                                              ; preds = %287, %210
  br label %296

296:                                              ; preds = %295
  %297 = load i64, i64* %12, align 8
  %298 = add nsw i64 %297, 1
  store i64 %298, i64* %12, align 8
  br label %201

299:                                              ; preds = %201
  br label %300

300:                                              ; preds = %299, %193
  br label %301

301:                                              ; preds = %300, %189, %176, %171
  %302 = load i32*, i32** %18, align 8
  %303 = call i32* @NET_BUFFER_NEXT_NB(i32* %302)
  store i32* %303, i32** %18, align 8
  br label %168

304:                                              ; preds = %168
  %305 = load i32*, i32** %14, align 8
  %306 = call i32* @NET_BUFFER_LIST_NEXT_NBL(i32* %305)
  store i32* %306, i32** %14, align 8
  br label %124

307:                                              ; preds = %124
  store i64 0, i64* %12, align 8
  br label %308

308:                                              ; preds = %333, %307
  %309 = load i64, i64* %12, align 8
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 4
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i64 @SL_LIST_NUM(i32 %314)
  %316 = icmp slt i64 %309, %315
  br i1 %316, label %317, label %336

317:                                              ; preds = %308
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 4
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i64, i64* %12, align 8
  %324 = call %struct.TYPE_12__* @SL_LIST_DATA(i32 %322, i64 %323)
  store %struct.TYPE_12__* %324, %struct.TYPE_12__** %27, align 8
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @SlUnlock(i32 %327)
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @SlSet(i32 %331)
  br label %333

333:                                              ; preds = %317
  %334 = load i64, i64* %12, align 8
  %335 = add nsw i64 %334, 1
  store i64 %335, i64* %12, align 8
  br label %308

336:                                              ; preds = %308
  br label %337

337:                                              ; preds = %336, %83
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 4
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @SlUnlockList(i32 %342)
  br label %344

344:                                              ; preds = %337, %82
  %345 = load i64, i64* %10, align 8
  %346 = call i64 @NDIS_TEST_RECEIVE_CAN_PEND(i64 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %344
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 3
  %351 = load i32*, i32** %350, align 8
  %352 = load i32*, i32** %7, align 8
  %353 = load i64, i64* %13, align 8
  %354 = call i32 @NdisReturnNetBufferLists(i32* %351, i32* %352, i64 %353)
  br label %355

355:                                              ; preds = %35, %348, %344
  ret void
}

declare dso_local i64 @NDIS_TEST_RECEIVE_AT_DISPATCH_LEVEL(i64) #1

declare dso_local i32 @NDIS_SET_RETURN_FLAG(i64, i32) #1

declare dso_local i32 @SlLockList(i32) #1

declare dso_local i64 @SL_LIST_NUM(i32) #1

declare dso_local %struct.TYPE_12__* @SL_LIST_DATA(i32, i64) #1

declare dso_local i32 @SlLock(i32) #1

declare dso_local i32* @NET_BUFFER_LIST_FIRST_NB(i32*) #1

declare dso_local i64 @NET_BUFFER_LIST_INFO(i32*, i32) #1

declare dso_local i64 @NET_BUFFER_DATA_LENGTH(i32*) #1

declare dso_local i32* @NdisGetDataBuffer(i32*, i64, i32*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @SlMalloc(i32) #1

declare dso_local i32 @SlCopy(i32*, i32*, i64) #1

declare dso_local i32* @NET_BUFFER_NEXT_NB(i32*) #1

declare dso_local i32* @NET_BUFFER_LIST_NEXT_NBL(i32*) #1

declare dso_local i32 @SlUnlock(i32) #1

declare dso_local i32 @SlSet(i32) #1

declare dso_local i32 @SlUnlockList(i32) #1

declare dso_local i64 @NDIS_TEST_RECEIVE_CAN_PEND(i64) #1

declare dso_local i32 @NdisReturnNetBufferLists(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
