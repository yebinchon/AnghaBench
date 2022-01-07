; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, i64, i64, i32, i32, i32, i64, i64, i64, i64*, %struct.netplay_connection*, i64, i64, i64, i64, i32 }
%struct.netplay_connection = type { i32, i64, i64, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@NETPLAY_CONNECTION_NONE = common dso_local global i64 0, align 8
@NETPLAY_MAX_STALL_FRAMES = common dso_local global i64 0, align 8
@NETPLAY_STALL_NONE = common dso_local global i8* null, align 8
@NETPLAY_CONNECTION_PLAYING = common dso_local global i64 0, align 8
@MAX_CLIENTS = common dso_local global i32 0, align 4
@NETPLAY_CONNECTION_SPECTATING = common dso_local global i64 0, align 8
@NETPLAY_CONNECTION_SLAVE = common dso_local global i64 0, align 8
@MAX_SERVER_STALL_TIME_USEC = common dso_local global i64 0, align 8
@MAX_CLIENT_STALL_TIME_USEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @netplay_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netplay_poll(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.netplay_connection*, align 8
  %13 = alloca %struct.netplay_connection*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = call i32 @get_self_input_state(%struct.TYPE_16__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %603

23:                                               ; preds = %1
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NETPLAY_CONNECTION_NONE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %622

30:                                               ; preds = %23
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = call i32 @netplay_update_unread_ptr(%struct.TYPE_16__* %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 15
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = call i32 @netplay_poll_net_input(%struct.TYPE_16__* %51, i32 1)
  store i32 %52, i32* %4, align 4
  br label %56

53:                                               ; preds = %42, %37, %30
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = call i32 @netplay_poll_net_input(%struct.TYPE_16__* %54, i32 0)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %603

60:                                               ; preds = %56
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 17
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @netplay_resolve_input(%struct.TYPE_16__* %61, i32 %64, i32 0)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 13
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %60
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 16
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %77 = call i32 @netplay_handle_slaves(%struct.TYPE_16__* %76)
  br label %78

78:                                               ; preds = %75, %70, %60
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = call i32 @netplay_update_unread_ptr(%struct.TYPE_16__* %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 15
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %258

90:                                               ; preds = %85, %78
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = sdiv i32 16666, %98
  br label %101

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %95
  %102 = phi i32 [ %99, %95 ], [ 0, %100 ]
  store i32 %102, i32* %7, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %105, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %101
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  br label %119

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118, %110
  %120 = phi i64 [ %117, %110 ], [ 0, %118 ]
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %8, align 4
  %122 = call %struct.TYPE_15__* (...) @config_get_ptr()
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %9, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %119
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  br label %138

137:                                              ; preds = %119
  br label %138

138:                                              ; preds = %137, %132
  %139 = phi i32 [ %136, %132 ], [ 0, %137 ]
  %140 = sub nsw i32 %126, %139
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %141, %145
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ugt i32 %147, 2
  br i1 %148, label %149, label %152

149:                                              ; preds = %138
  %150 = load i32, i32* %7, align 4
  %151 = sub i32 %150, 2
  store i32 %151, i32* %7, align 4
  br label %153

152:                                              ; preds = %138
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %152, %149
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 15
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %212

158:                                              ; preds = %153
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %179, label %164

164:                                              ; preds = %158
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  %172 = icmp eq i64 %167, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %164
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %173, %158
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %211

184:                                              ; preds = %173, %164
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %205, label %190

190:                                              ; preds = %184
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, 2
  %198 = icmp sgt i64 %193, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %190
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %10, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %199, %184
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %205, %199, %190
  br label %211

211:                                              ; preds = %210, %179
  br label %257

212:                                              ; preds = %153
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %228, label %218

218:                                              ; preds = %212
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp ult i32 %219, %220
  br i1 %221, label %222, label %233

222:                                              ; preds = %218
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %222, %212
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 4
  br label %256

233:                                              ; preds = %222, %218
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %11, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %250, label %239

239:                                              ; preds = %233
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* %8, align 4
  %242 = add i32 %241, 2
  %243 = icmp ugt i32 %240, %242
  br i1 %243, label %244, label %255

244:                                              ; preds = %239
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp sgt i32 %247, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %244, %233
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %250, %244, %239
  br label %256

256:                                              ; preds = %255, %228
  br label %257

257:                                              ; preds = %256, %211
  br label %258

258:                                              ; preds = %257, %85
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 8
  switch i32 %261, label %365 [
    i32 130, label %262
    i32 128, label %310
    i32 132, label %330
    i32 129, label %335
    i32 131, label %364
  ]

262:                                              ; preds = %258
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @NETPLAY_MAX_STALL_FRAMES, align 8
  %267 = add nsw i64 %265, %266
  %268 = sub nsw i64 %267, 2
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 8
  %271 = load i64, i64* %270, align 8
  %272 = icmp sgt i64 %268, %271
  br i1 %272, label %273, label %309

273:                                              ; preds = %262
  %274 = load i8*, i8** @NETPLAY_STALL_NONE, align 8
  %275 = ptrtoint i8* %274 to i32
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 7
  store i32 %275, i32* %277, align 8
  store i64 0, i64* %6, align 8
  br label %278

278:                                              ; preds = %305, %273
  %279 = load i64, i64* %6, align 8
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 9
  %282 = load i64, i64* %281, align 8
  %283 = icmp ult i64 %279, %282
  br i1 %283, label %284, label %308

284:                                              ; preds = %278
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 12
  %287 = load %struct.netplay_connection*, %struct.netplay_connection** %286, align 8
  %288 = load i64, i64* %6, align 8
  %289 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %287, i64 %288
  store %struct.netplay_connection* %289, %struct.netplay_connection** %12, align 8
  %290 = load %struct.netplay_connection*, %struct.netplay_connection** %12, align 8
  %291 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %304

294:                                              ; preds = %284
  %295 = load %struct.netplay_connection*, %struct.netplay_connection** %12, align 8
  %296 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %294
  %300 = load i8*, i8** @NETPLAY_STALL_NONE, align 8
  %301 = ptrtoint i8* %300 to i32
  %302 = load %struct.netplay_connection*, %struct.netplay_connection** %12, align 8
  %303 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 8
  br label %304

304:                                              ; preds = %299, %294, %284
  br label %305

305:                                              ; preds = %304
  %306 = load i64, i64* %6, align 8
  %307 = add i64 %306, 1
  store i64 %307, i64* %6, align 8
  br label %278

308:                                              ; preds = %278
  br label %309

309:                                              ; preds = %308, %262
  br label %366

310:                                              ; preds = %258
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @NETPLAY_CONNECTION_PLAYING, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %324, label %316

316:                                              ; preds = %310
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 3
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 8
  %322 = load i64, i64* %321, align 8
  %323 = icmp sgt i64 %319, %322
  br i1 %323, label %324, label %329

324:                                              ; preds = %316, %310
  %325 = load i8*, i8** @NETPLAY_STALL_NONE, align 8
  %326 = ptrtoint i8* %325 to i32
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 7
  store i32 %326, i32* %328, align 8
  br label %329

329:                                              ; preds = %324, %316
  br label %366

330:                                              ; preds = %258
  %331 = load i8*, i8** @NETPLAY_STALL_NONE, align 8
  %332 = ptrtoint i8* %331 to i32
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 7
  store i32 %332, i32* %334, align 8
  br label %366

335:                                              ; preds = %258
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 12
  %338 = load %struct.netplay_connection*, %struct.netplay_connection** %337, align 8
  %339 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %338, i64 0
  %340 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %355

343:                                              ; preds = %335
  %344 = load i8*, i8** @NETPLAY_STALL_NONE, align 8
  %345 = ptrtoint i8* %344 to i32
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 12
  %348 = load %struct.netplay_connection*, %struct.netplay_connection** %347, align 8
  %349 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %348, i64 0
  %350 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %349, i32 0, i32 0
  store i32 %345, i32* %350, align 8
  %351 = load i8*, i8** @NETPLAY_STALL_NONE, align 8
  %352 = ptrtoint i8* %351 to i32
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 7
  store i32 %352, i32* %354, align 8
  br label %363

355:                                              ; preds = %335
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 12
  %358 = load %struct.netplay_connection*, %struct.netplay_connection** %357, align 8
  %359 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %358, i64 0
  %360 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 8
  %362 = add nsw i32 %361, -1
  store i32 %362, i32* %360, align 8
  br label %363

363:                                              ; preds = %355, %343
  br label %366

364:                                              ; preds = %258
  br label %366

365:                                              ; preds = %258
  br label %366

366:                                              ; preds = %365, %364, %363, %330, %329, %309
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 7
  %369 = load i32, i32* %368, align 8
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %511, label %371

371:                                              ; preds = %366
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @NETPLAY_CONNECTION_PLAYING, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %400

377:                                              ; preds = %371
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %400

382:                                              ; preds = %377
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 4
  %385 = load i64, i64* %384, align 8
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 6
  %388 = load i32, i32* %387, align 4
  %389 = sext i32 %388 to i64
  %390 = add nsw i64 %385, %389
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 8
  %393 = load i64, i64* %392, align 8
  %394 = icmp sgt i64 %390, %393
  br i1 %394, label %395, label %400

395:                                              ; preds = %382
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 7
  store i32 132, i32* %397, align 8
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 10
  store i64 0, i64* %399, align 8
  br label %400

400:                                              ; preds = %395, %382, %377, %371
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 3
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @NETPLAY_MAX_STALL_FRAMES, align 8
  %405 = add nsw i64 %403, %404
  %406 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 8
  %408 = load i64, i64* %407, align 8
  %409 = icmp sle i64 %405, %408
  br i1 %409, label %410, label %479

410:                                              ; preds = %400
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 7
  store i32 130, i32* %412, align 8
  %413 = call i64 (...) @cpu_features_get_time_usec()
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 10
  store i64 %413, i64* %415, align 8
  %416 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %416, i32 0, i32 13
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %478

420:                                              ; preds = %410
  store i32 1, i32* %5, align 4
  br label %421

421:                                              ; preds = %474, %420
  %422 = load i32, i32* %5, align 4
  %423 = load i32, i32* @MAX_CLIENTS, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %477

425:                                              ; preds = %421
  %426 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* %5, align 4
  %430 = shl i32 1, %429
  %431 = and i32 %428, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %434, label %433

433:                                              ; preds = %425
  br label %474

434:                                              ; preds = %425
  %435 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %435, i32 0, i32 11
  %437 = load i64*, i64** %436, align 8
  %438 = load i32, i32* %5, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i64, i64* %437, i64 %439
  %441 = load i64, i64* %440, align 8
  %442 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %442, i32 0, i32 3
  %444 = load i64, i64* %443, align 8
  %445 = icmp sgt i64 %441, %444
  br i1 %445, label %446, label %447

446:                                              ; preds = %434
  br label %474

447:                                              ; preds = %434
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i32 0, i32 12
  %450 = load %struct.netplay_connection*, %struct.netplay_connection** %449, align 8
  %451 = load i32, i32* %5, align 4
  %452 = sub nsw i32 %451, 1
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %450, i64 %453
  store %struct.netplay_connection* %454, %struct.netplay_connection** %13, align 8
  %455 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %456 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %455, i32 0, i32 3
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %473

459:                                              ; preds = %447
  %460 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %461 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %460, i32 0, i32 1
  %462 = load i64, i64* %461, align 8
  %463 = load i64, i64* @NETPLAY_CONNECTION_PLAYING, align 8
  %464 = icmp eq i64 %462, %463
  br i1 %464, label %465, label %473

465:                                              ; preds = %459
  %466 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %467 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %466, i32 0, i32 0
  store i32 130, i32* %467, align 8
  %468 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %468, i32 0, i32 10
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %472 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %471, i32 0, i32 2
  store i64 %470, i64* %472, align 8
  br label %473

473:                                              ; preds = %465, %459, %447
  br label %474

474:                                              ; preds = %473, %446, %433
  %475 = load i32, i32* %5, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %5, align 4
  br label %421

477:                                              ; preds = %421
  br label %478

478:                                              ; preds = %477, %410
  br label %479

479:                                              ; preds = %478, %400
  %480 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %480, i32 0, i32 13
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %510, label %484

484:                                              ; preds = %479
  %485 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %485, i32 0, i32 1
  %487 = load i64, i64* %486, align 8
  %488 = load i64, i64* @NETPLAY_CONNECTION_SPECTATING, align 8
  %489 = icmp eq i64 %487, %488
  br i1 %489, label %496, label %490

490:                                              ; preds = %484
  %491 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %492 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %491, i32 0, i32 1
  %493 = load i64, i64* %492, align 8
  %494 = load i64, i64* @NETPLAY_CONNECTION_SLAVE, align 8
  %495 = icmp eq i64 %493, %494
  br i1 %495, label %496, label %510

496:                                              ; preds = %490, %484
  %497 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %498 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %497, i32 0, i32 3
  %499 = load i64, i64* %498, align 8
  %500 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %500, i32 0, i32 8
  %502 = load i64, i64* %501, align 8
  %503 = icmp sle i64 %499, %502
  br i1 %503, label %504, label %510

504:                                              ; preds = %496
  %505 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %506 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %505, i32 0, i32 7
  store i32 128, i32* %506, align 8
  %507 = call i64 (...) @cpu_features_get_time_usec()
  %508 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %509 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %508, i32 0, i32 10
  store i64 %507, i64* %509, align 8
  br label %510

510:                                              ; preds = %504, %496, %490, %479
  br label %511

511:                                              ; preds = %510, %366
  %512 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %513 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %512, i32 0, i32 7
  %514 = load i32, i32* %513, align 8
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %602

516:                                              ; preds = %511
  %517 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %518 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %517, i32 0, i32 10
  %519 = load i64, i64* %518, align 8
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %602

521:                                              ; preds = %516
  %522 = call i64 (...) @cpu_features_get_time_usec()
  store i64 %522, i64* %14, align 8
  %523 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %524 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %523, i32 0, i32 14
  %525 = load i64, i64* %524, align 8
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %527, label %531

527:                                              ; preds = %521
  %528 = load i64, i64* %14, align 8
  %529 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %530 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %529, i32 0, i32 10
  store i64 %528, i64* %530, align 8
  br label %601

531:                                              ; preds = %521
  %532 = load i64, i64* %14, align 8
  %533 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %534 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %533, i32 0, i32 10
  %535 = load i64, i64* %534, align 8
  %536 = sub nsw i64 %532, %535
  %537 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %537, i32 0, i32 13
  %539 = load i64, i64* %538, align 8
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %543

541:                                              ; preds = %531
  %542 = load i64, i64* @MAX_SERVER_STALL_TIME_USEC, align 8
  br label %545

543:                                              ; preds = %531
  %544 = load i64, i64* @MAX_CLIENT_STALL_TIME_USEC, align 8
  br label %545

545:                                              ; preds = %543, %541
  %546 = phi i64 [ %542, %541 ], [ %544, %543 ]
  %547 = icmp sge i64 %536, %546
  br i1 %547, label %548, label %600

548:                                              ; preds = %545
  %549 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %550 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %549, i32 0, i32 13
  %551 = load i64, i64* %550, align 8
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %598

553:                                              ; preds = %548
  store i32 0, i32* %15, align 4
  store i64 0, i64* %6, align 8
  br label %554

554:                                              ; preds = %586, %553
  %555 = load i64, i64* %6, align 8
  %556 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %557 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %556, i32 0, i32 9
  %558 = load i64, i64* %557, align 8
  %559 = icmp ult i64 %555, %558
  br i1 %559, label %560, label %589

560:                                              ; preds = %554
  %561 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %562 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %561, i32 0, i32 12
  %563 = load %struct.netplay_connection*, %struct.netplay_connection** %562, align 8
  %564 = load i64, i64* %6, align 8
  %565 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %563, i64 %564
  store %struct.netplay_connection* %565, %struct.netplay_connection** %16, align 8
  %566 = load %struct.netplay_connection*, %struct.netplay_connection** %16, align 8
  %567 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %566, i32 0, i32 3
  %568 = load i64, i64* %567, align 8
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %570, label %585

570:                                              ; preds = %560
  %571 = load %struct.netplay_connection*, %struct.netplay_connection** %16, align 8
  %572 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %571, i32 0, i32 1
  %573 = load i64, i64* %572, align 8
  %574 = load i64, i64* @NETPLAY_CONNECTION_PLAYING, align 8
  %575 = icmp eq i64 %573, %574
  br i1 %575, label %576, label %585

576:                                              ; preds = %570
  %577 = load %struct.netplay_connection*, %struct.netplay_connection** %16, align 8
  %578 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %585

581:                                              ; preds = %576
  %582 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %583 = load %struct.netplay_connection*, %struct.netplay_connection** %16, align 8
  %584 = call i32 @netplay_hangup(%struct.TYPE_16__* %582, %struct.netplay_connection* %583)
  store i32 1, i32* %15, align 4
  br label %585

585:                                              ; preds = %581, %576, %570, %560
  br label %586

586:                                              ; preds = %585
  %587 = load i64, i64* %6, align 8
  %588 = add i64 %587, 1
  store i64 %588, i64* %6, align 8
  br label %554

589:                                              ; preds = %554
  %590 = load i32, i32* %15, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %597

592:                                              ; preds = %589
  %593 = load i8*, i8** @NETPLAY_STALL_NONE, align 8
  %594 = ptrtoint i8* %593 to i32
  %595 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %596 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %595, i32 0, i32 7
  store i32 %594, i32* %596, align 8
  store i32 1, i32* %2, align 4
  br label %622

597:                                              ; preds = %589
  br label %599

598:                                              ; preds = %548
  br label %603

599:                                              ; preds = %597
  store i32 0, i32* %2, align 4
  br label %622

600:                                              ; preds = %545
  br label %601

601:                                              ; preds = %600, %527
  br label %602

602:                                              ; preds = %601, %516, %511
  store i32 1, i32* %2, align 4
  br label %622

603:                                              ; preds = %598, %59, %22
  store i64 0, i64* %6, align 8
  br label %604

604:                                              ; preds = %618, %603
  %605 = load i64, i64* %6, align 8
  %606 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %607 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %606, i32 0, i32 9
  %608 = load i64, i64* %607, align 8
  %609 = icmp ult i64 %605, %608
  br i1 %609, label %610, label %621

610:                                              ; preds = %604
  %611 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %612 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %613 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %612, i32 0, i32 12
  %614 = load %struct.netplay_connection*, %struct.netplay_connection** %613, align 8
  %615 = load i64, i64* %6, align 8
  %616 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %614, i64 %615
  %617 = call i32 @netplay_hangup(%struct.TYPE_16__* %611, %struct.netplay_connection* %616)
  br label %618

618:                                              ; preds = %610
  %619 = load i64, i64* %6, align 8
  %620 = add i64 %619, 1
  store i64 %620, i64* %6, align 8
  br label %604

621:                                              ; preds = %604
  store i32 0, i32* %2, align 4
  br label %622

622:                                              ; preds = %621, %602, %599, %592, %29
  %623 = load i32, i32* %2, align 4
  ret i32 %623
}

declare dso_local i32 @get_self_input_state(%struct.TYPE_16__*) #1

declare dso_local i32 @netplay_update_unread_ptr(%struct.TYPE_16__*) #1

declare dso_local i32 @netplay_poll_net_input(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @netplay_resolve_input(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @netplay_handle_slaves(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @config_get_ptr(...) #1

declare dso_local i64 @cpu_features_get_time_usec(...) #1

declare dso_local i32 @netplay_hangup(%struct.TYPE_16__*, %struct.netplay_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
