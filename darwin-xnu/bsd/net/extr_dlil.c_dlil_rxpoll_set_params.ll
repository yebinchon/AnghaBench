; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_rxpoll_set_params.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_rxpoll_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }
%struct.ifnet = type { i32, i64, %struct.dlil_threading_info* }
%struct.dlil_threading_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet_poll_params = type { i64, i64, i64, i64, i64, i64 }

@IFEF_RXPOLL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IF_RXPOLL_INTERVALTIME_MIN = common dso_local global i64 0, align 8
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@rxpoll_tbl = common dso_local global %struct.TYPE_2__* null, align 8
@if_rxpoll_max = common dso_local global i64 0, align 8
@if_rxpoll_interval_time = common dso_local global i64 0, align 8
@if_rxpoll_sample_holdtime = common dso_local global i64 0, align 8
@if_rxpoll_wlowat = common dso_local global i32 0, align 4
@if_rxpoll_whiwat = common dso_local global i32 0, align 4
@if_rxpoll_mode_holdtime = common dso_local global i64 0, align 8
@dlil_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [148 x i8] c"%s: speed %llu bps, sample per %llu nsec, poll interval %llu nsec, pkts per poll %u, pkt limits [%u/%u], wreq limits [%u/%u], bytes limits [%u/%u]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlil_rxpoll_set_params(%struct.ifnet* %0, %struct.ifnet_poll_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.ifnet_poll_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlil_threading_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.ifnet_poll_params* %1, %struct.ifnet_poll_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %20 = icmp ne %struct.ifnet* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @VERIFY(i32 %21)
  %23 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IFEF_RXPOLL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 2
  %32 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %31, align 8
  store %struct.dlil_threading_info* %32, %struct.dlil_threading_info** %8, align 8
  %33 = icmp eq %struct.dlil_threading_info* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %3
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %4, align 4
  br label %416

36:                                               ; preds = %29
  %37 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %38 = icmp ne %struct.ifnet_poll_params* %37, null
  br i1 %38, label %39, label %129

39:                                               ; preds = %36
  %40 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %41 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %46 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %51 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %56 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54, %44
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %4, align 4
  br label %416

61:                                               ; preds = %54, %49
  %62 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %63 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %68 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %71 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %4, align 4
  br label %416

76:                                               ; preds = %66, %61
  %77 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %78 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %83 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %88 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %93 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %81
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %4, align 4
  br label %416

98:                                               ; preds = %91, %86
  %99 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %100 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %105 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %108 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %106, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %4, align 4
  br label %416

113:                                              ; preds = %103, %98
  %114 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %115 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %120 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @IF_RXPOLL_INTERVALTIME_MIN, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i64, i64* @IF_RXPOLL_INTERVALTIME_MIN, align 8
  %126 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %127 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %124, %118, %113
  br label %129

129:                                              ; preds = %128, %36
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %134 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %133, i32 0, i32 8
  %135 = call i32 @lck_mtx_lock(i32* %134)
  br label %136

136:                                              ; preds = %132, %129
  %137 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %138 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %137, i32 0, i32 8
  %139 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %140 = call i32 @LCK_MTX_ASSERT(i32* %138, i32 %139)
  %141 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %142 = icmp ne %struct.ifnet_poll_params* %141, null
  br i1 %142, label %143, label %154

143:                                              ; preds = %136
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %143
  %147 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %148 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 1
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %151, %146, %143, %136
  %155 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %156 = call i64 @ifnet_input_linkrate(%struct.ifnet* %155)
  store i64 %156, i64* %10, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %154
  %159 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %160 = icmp eq %struct.ifnet_poll_params* %159, null
  br i1 %160, label %161, label %180

161:                                              ; preds = %158
  store i64 0, i64* %9, align 8
  %162 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %163 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %162, i32 0, i32 2
  store i32 0, i32* %163, align 4
  %164 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %165 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %164, i32 0, i32 1
  store i32 0, i32* %165, align 4
  %166 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %167 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %166, i32 0, i32 0
  store i32 0, i32* %167, align 4
  %168 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %169 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %168, i32 0, i32 5
  store i32 -1, i32* %169, align 4
  %170 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %171 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %170, i32 0, i32 4
  store i32 -1, i32* %171, align 4
  %172 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %173 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %172, i32 0, i32 3
  store i32 -1, i32* %173, align 4
  %174 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %175 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %174, i32 0, i32 6
  store i32 0, i32* %175, align 4
  %176 = load i64, i64* @IF_RXPOLL_INTERVALTIME_MIN, align 8
  %177 = trunc i64 %176 to i32
  %178 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %179 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 4
  br label %369

180:                                              ; preds = %158, %154
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %181

181:                                              ; preds = %201, %180
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxpoll_tbl, align 8
  %183 = load i32, i32* %18, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %204

189:                                              ; preds = %181
  %190 = load i64, i64* %10, align 8
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxpoll_tbl, align 8
  %192 = load i32, i32* %18, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp slt i64 %190, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %189
  br label %204

199:                                              ; preds = %189
  %200 = load i32, i32* %18, align 4
  store i32 %200, i32* %17, align 4
  br label %201

201:                                              ; preds = %199
  %202 = load i32, i32* %18, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %18, align 4
  br label %181

204:                                              ; preds = %198, %181
  %205 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %206 = icmp eq %struct.ifnet_poll_params* %205, null
  br i1 %206, label %212, label %207

207:                                              ; preds = %204
  %208 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %209 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %207, %204
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxpoll_tbl, align 8
  %214 = load i32, i32* %17, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  br label %223

219:                                              ; preds = %207
  %220 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %221 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  br label %223

223:                                              ; preds = %219, %212
  %224 = phi i64 [ %218, %212 ], [ %222, %219 ]
  store i64 %224, i64* %11, align 8
  %225 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %226 = icmp eq %struct.ifnet_poll_params* %225, null
  br i1 %226, label %232, label %227

227:                                              ; preds = %223
  %228 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %229 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %227, %223
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxpoll_tbl, align 8
  %234 = load i32, i32* %17, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  br label %243

239:                                              ; preds = %227
  %240 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %241 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  br label %243

243:                                              ; preds = %239, %232
  %244 = phi i64 [ %238, %232 ], [ %242, %239 ]
  store i64 %244, i64* %12, align 8
  %245 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %246 = icmp eq %struct.ifnet_poll_params* %245, null
  br i1 %246, label %252, label %247

247:                                              ; preds = %243
  %248 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %249 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %247, %243
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxpoll_tbl, align 8
  %254 = load i32, i32* %17, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  br label %263

259:                                              ; preds = %247
  %260 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %261 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  br label %263

263:                                              ; preds = %259, %252
  %264 = phi i64 [ %258, %252 ], [ %262, %259 ]
  store i64 %264, i64* %13, align 8
  %265 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %266 = icmp eq %struct.ifnet_poll_params* %265, null
  br i1 %266, label %272, label %267

267:                                              ; preds = %263
  %268 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %269 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %267, %263
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxpoll_tbl, align 8
  %274 = load i32, i32* %17, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 4
  %278 = load i64, i64* %277, align 8
  br label %283

279:                                              ; preds = %267
  %280 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %281 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  br label %283

283:                                              ; preds = %279, %272
  %284 = phi i64 [ %278, %272 ], [ %282, %279 ]
  store i64 %284, i64* %14, align 8
  %285 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %286 = icmp eq %struct.ifnet_poll_params* %285, null
  br i1 %286, label %292, label %287

287:                                              ; preds = %283
  %288 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %289 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %288, i32 0, i32 5
  %290 = load i64, i64* %289, align 8
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %287, %283
  %293 = load i64, i64* @if_rxpoll_max, align 8
  br label %298

294:                                              ; preds = %287
  %295 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %296 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %295, i32 0, i32 5
  %297 = load i64, i64* %296, align 8
  br label %298

298:                                              ; preds = %294, %292
  %299 = phi i64 [ %293, %292 ], [ %297, %294 ]
  store i64 %299, i64* %15, align 8
  %300 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %301 = icmp eq %struct.ifnet_poll_params* %300, null
  br i1 %301, label %307, label %302

302:                                              ; preds = %298
  %303 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %304 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %303, i32 0, i32 4
  %305 = load i64, i64* %304, align 8
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %302, %298
  %308 = load i64, i64* @if_rxpoll_interval_time, align 8
  br label %313

309:                                              ; preds = %302
  %310 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %6, align 8
  %311 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %310, i32 0, i32 4
  %312 = load i64, i64* %311, align 8
  br label %313

313:                                              ; preds = %309, %307
  %314 = phi i64 [ %308, %307 ], [ %312, %309 ]
  store i64 %314, i64* %16, align 8
  %315 = load i64, i64* %11, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %313
  %318 = load i64, i64* %12, align 8
  %319 = icmp ne i64 %318, 0
  br label %320

320:                                              ; preds = %317, %313
  %321 = phi i1 [ false, %313 ], [ %319, %317 ]
  %322 = zext i1 %321 to i32
  %323 = call i32 @VERIFY(i32 %322)
  %324 = load i64, i64* %13, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %320
  %327 = load i64, i64* %14, align 8
  %328 = icmp ne i64 %327, 0
  br label %329

329:                                              ; preds = %326, %320
  %330 = phi i1 [ false, %320 ], [ %328, %326 ]
  %331 = zext i1 %330 to i32
  %332 = call i32 @VERIFY(i32 %331)
  %333 = load i64, i64* %16, align 8
  %334 = load i64, i64* @IF_RXPOLL_INTERVALTIME_MIN, align 8
  %335 = icmp sge i64 %333, %334
  %336 = zext i1 %335 to i32
  %337 = call i32 @VERIFY(i32 %336)
  %338 = load i64, i64* @if_rxpoll_sample_holdtime, align 8
  store i64 %338, i64* %9, align 8
  %339 = load i32, i32* @if_rxpoll_wlowat, align 4
  %340 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %341 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %340, i32 0, i32 0
  store i32 %339, i32* %341, align 4
  %342 = load i32, i32* @if_rxpoll_whiwat, align 4
  %343 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %344 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %343, i32 0, i32 3
  store i32 %342, i32* %344, align 4
  %345 = load i64, i64* %11, align 8
  %346 = trunc i64 %345 to i32
  %347 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %348 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %347, i32 0, i32 1
  store i32 %346, i32* %348, align 4
  %349 = load i64, i64* %12, align 8
  %350 = trunc i64 %349 to i32
  %351 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %352 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %351, i32 0, i32 4
  store i32 %350, i32* %352, align 4
  %353 = load i64, i64* %13, align 8
  %354 = trunc i64 %353 to i32
  %355 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %356 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %355, i32 0, i32 2
  store i32 %354, i32* %356, align 4
  %357 = load i64, i64* %14, align 8
  %358 = trunc i64 %357 to i32
  %359 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %360 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %359, i32 0, i32 5
  store i32 %358, i32* %360, align 4
  %361 = load i64, i64* %15, align 8
  %362 = trunc i64 %361 to i32
  %363 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %364 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %363, i32 0, i32 6
  store i32 %362, i32* %364, align 4
  %365 = load i64, i64* %16, align 8
  %366 = trunc i64 %365 to i32
  %367 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %368 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %367, i32 0, i32 7
  store i32 %366, i32* %368, align 4
  br label %369

369:                                              ; preds = %329, %161
  %370 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %371 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %370, i32 0, i32 10
  %372 = call i32 @net_nsectimer(i64* @if_rxpoll_mode_holdtime, i32* %371)
  %373 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %374 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %373, i32 0, i32 9
  %375 = call i32 @net_nsectimer(i64* %9, i32* %374)
  %376 = load i64, i64* @dlil_verbose, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %408

378:                                              ; preds = %369
  %379 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %380 = call i8* @if_name(%struct.ifnet* %379)
  %381 = load i64, i64* %10, align 8
  %382 = load i64, i64* %9, align 8
  %383 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %384 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %383, i32 0, i32 7
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %387 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %386, i32 0, i32 6
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %390 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %393 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %396 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %399 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %402 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %405 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @printf(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str, i64 0, i64 0), i8* %380, i64 %381, i64 %382, i32 %385, i32 %388, i32 %391, i32 %394, i32 %397, i32 %400, i32 %403, i32 %406)
  br label %408

408:                                              ; preds = %378, %369
  %409 = load i32, i32* %7, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %415, label %411

411:                                              ; preds = %408
  %412 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %8, align 8
  %413 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %412, i32 0, i32 8
  %414 = call i32 @lck_mtx_unlock(i32* %413)
  br label %415

415:                                              ; preds = %411, %408
  store i32 0, i32* %4, align 4
  br label %416

416:                                              ; preds = %415, %111, %96, %74, %59, %34
  %417 = load i32, i32* %4, align 4
  ret i32 %417
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i64 @ifnet_input_linkrate(%struct.ifnet*) #1

declare dso_local i32 @net_nsectimer(i64*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @if_name(%struct.ifnet*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
