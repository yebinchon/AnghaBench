; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_tick.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*)* @channel_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_tick(%struct.channel* %0) #0 {
  %2 = alloca %struct.channel*, align 8
  store %struct.channel* %0, %struct.channel** %2, align 8
  %3 = load %struct.channel*, %struct.channel** %2, align 8
  %4 = getelementptr inbounds %struct.channel, %struct.channel* %3, i32 0, i32 18
  store i64 0, i64* %4, align 8
  %5 = load %struct.channel*, %struct.channel** %2, align 8
  %6 = getelementptr inbounds %struct.channel, %struct.channel* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %6, align 8
  %9 = load %struct.channel*, %struct.channel** %2, align 8
  %10 = getelementptr inbounds %struct.channel, %struct.channel* %9, i32 0, i32 17
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.channel*, %struct.channel** %2, align 8
  %14 = getelementptr inbounds %struct.channel, %struct.channel* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 125
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.channel*, %struct.channel** %2, align 8
  %20 = getelementptr inbounds %struct.channel, %struct.channel* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.channel*, %struct.channel** %2, align 8
  %23 = getelementptr inbounds %struct.channel, %struct.channel* %22, i32 0, i32 9
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %21, %25
  br i1 %26, label %119, label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.channel*, %struct.channel** %2, align 8
  %29 = getelementptr inbounds %struct.channel, %struct.channel* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 240
  switch i32 %32, label %118 [
    i32 96, label %33
    i32 112, label %51
    i32 176, label %69
    i32 208, label %79
    i32 224, label %97
    i32 240, label %115
  ]

33:                                               ; preds = %27
  %34 = load %struct.channel*, %struct.channel** %2, align 8
  %35 = getelementptr inbounds %struct.channel, %struct.channel* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 15
  %39 = load %struct.channel*, %struct.channel** %2, align 8
  %40 = getelementptr inbounds %struct.channel, %struct.channel* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.channel*, %struct.channel** %2, align 8
  %44 = getelementptr inbounds %struct.channel, %struct.channel* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load %struct.channel*, %struct.channel** %2, align 8
  %49 = getelementptr inbounds %struct.channel, %struct.channel* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %33
  br label %118

51:                                               ; preds = %27
  %52 = load %struct.channel*, %struct.channel** %2, align 8
  %53 = getelementptr inbounds %struct.channel, %struct.channel* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 15
  %57 = load %struct.channel*, %struct.channel** %2, align 8
  %58 = getelementptr inbounds %struct.channel, %struct.channel* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.channel*, %struct.channel** %2, align 8
  %62 = getelementptr inbounds %struct.channel, %struct.channel* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 64
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load %struct.channel*, %struct.channel** %2, align 8
  %67 = getelementptr inbounds %struct.channel, %struct.channel* %66, i32 0, i32 1
  store i32 64, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %51
  br label %118

69:                                               ; preds = %27
  %70 = load %struct.channel*, %struct.channel** %2, align 8
  %71 = getelementptr inbounds %struct.channel, %struct.channel* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.channel*, %struct.channel** %2, align 8
  %74 = getelementptr inbounds %struct.channel, %struct.channel* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.channel*, %struct.channel** %2, align 8
  %78 = call i32 @channel_vibrato(%struct.channel* %77, i32 0)
  br label %118

79:                                               ; preds = %27
  %80 = load %struct.channel*, %struct.channel** %2, align 8
  %81 = getelementptr inbounds %struct.channel, %struct.channel* %80, i32 0, i32 9
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 15
  %85 = load %struct.channel*, %struct.channel** %2, align 8
  %86 = getelementptr inbounds %struct.channel, %struct.channel* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.channel*, %struct.channel** %2, align 8
  %90 = getelementptr inbounds %struct.channel, %struct.channel* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load %struct.channel*, %struct.channel** %2, align 8
  %95 = getelementptr inbounds %struct.channel, %struct.channel* %94, i32 0, i32 2
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %79
  br label %118

97:                                               ; preds = %27
  %98 = load %struct.channel*, %struct.channel** %2, align 8
  %99 = getelementptr inbounds %struct.channel, %struct.channel* %98, i32 0, i32 9
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, 15
  %103 = load %struct.channel*, %struct.channel** %2, align 8
  %104 = getelementptr inbounds %struct.channel, %struct.channel* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.channel*, %struct.channel** %2, align 8
  %108 = getelementptr inbounds %struct.channel, %struct.channel* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 255
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  %112 = load %struct.channel*, %struct.channel** %2, align 8
  %113 = getelementptr inbounds %struct.channel, %struct.channel* %112, i32 0, i32 2
  store i32 255, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %97
  br label %118

115:                                              ; preds = %27
  %116 = load %struct.channel*, %struct.channel** %2, align 8
  %117 = call i32 @channel_tone_porta(%struct.channel* %116)
  br label %118

118:                                              ; preds = %27, %115, %114, %96, %69, %68, %50
  br label %119

119:                                              ; preds = %118, %18
  %120 = load %struct.channel*, %struct.channel** %2, align 8
  %121 = getelementptr inbounds %struct.channel, %struct.channel* %120, i32 0, i32 9
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  switch i32 %123, label %345 [
    i32 1, label %124
    i32 134, label %124
    i32 2, label %130
    i32 133, label %130
    i32 3, label %136
    i32 135, label %136
    i32 4, label %139
    i32 136, label %139
    i32 5, label %149
    i32 140, label %149
    i32 6, label %154
    i32 139, label %154
    i32 7, label %166
    i32 146, label %166
    i32 10, label %176
    i32 132, label %176
    i32 17, label %179
    i32 25, label %223
    i32 27, label %255
    i32 145, label %255
    i32 29, label %258
    i32 137, label %258
    i32 121, label %261
    i32 124, label %278
    i32 252, label %278
    i32 125, label %291
    i32 253, label %291
    i32 138, label %304
    i32 149, label %335
  ]

124:                                              ; preds = %119, %119
  %125 = load %struct.channel*, %struct.channel** %2, align 8
  %126 = load %struct.channel*, %struct.channel** %2, align 8
  %127 = getelementptr inbounds %struct.channel, %struct.channel* %126, i32 0, i32 16
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @channel_porta_up(%struct.channel* %125, i32 %128)
  br label %345

130:                                              ; preds = %119, %119
  %131 = load %struct.channel*, %struct.channel** %2, align 8
  %132 = load %struct.channel*, %struct.channel** %2, align 8
  %133 = getelementptr inbounds %struct.channel, %struct.channel* %132, i32 0, i32 15
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @channel_porta_down(%struct.channel* %131, i32 %134)
  br label %345

136:                                              ; preds = %119, %119
  %137 = load %struct.channel*, %struct.channel** %2, align 8
  %138 = call i32 @channel_tone_porta(%struct.channel* %137)
  br label %345

139:                                              ; preds = %119, %119
  %140 = load %struct.channel*, %struct.channel** %2, align 8
  %141 = getelementptr inbounds %struct.channel, %struct.channel* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.channel*, %struct.channel** %2, align 8
  %144 = getelementptr inbounds %struct.channel, %struct.channel* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load %struct.channel*, %struct.channel** %2, align 8
  %148 = call i32 @channel_vibrato(%struct.channel* %147, i32 0)
  br label %345

149:                                              ; preds = %119, %119
  %150 = load %struct.channel*, %struct.channel** %2, align 8
  %151 = call i32 @channel_tone_porta(%struct.channel* %150)
  %152 = load %struct.channel*, %struct.channel** %2, align 8
  %153 = call i32 @channel_volume_slide(%struct.channel* %152)
  br label %345

154:                                              ; preds = %119, %119
  %155 = load %struct.channel*, %struct.channel** %2, align 8
  %156 = getelementptr inbounds %struct.channel, %struct.channel* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.channel*, %struct.channel** %2, align 8
  %159 = getelementptr inbounds %struct.channel, %struct.channel* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load %struct.channel*, %struct.channel** %2, align 8
  %163 = call i32 @channel_vibrato(%struct.channel* %162, i32 0)
  %164 = load %struct.channel*, %struct.channel** %2, align 8
  %165 = call i32 @channel_volume_slide(%struct.channel* %164)
  br label %345

166:                                              ; preds = %119, %119
  %167 = load %struct.channel*, %struct.channel** %2, align 8
  %168 = getelementptr inbounds %struct.channel, %struct.channel* %167, i32 0, i32 13
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.channel*, %struct.channel** %2, align 8
  %171 = getelementptr inbounds %struct.channel, %struct.channel* %170, i32 0, i32 14
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.channel*, %struct.channel** %2, align 8
  %175 = call i32 @channel_tremolo(%struct.channel* %174)
  br label %345

176:                                              ; preds = %119, %119
  %177 = load %struct.channel*, %struct.channel** %2, align 8
  %178 = call i32 @channel_volume_slide(%struct.channel* %177)
  br label %345

179:                                              ; preds = %119
  %180 = load %struct.channel*, %struct.channel** %2, align 8
  %181 = getelementptr inbounds %struct.channel, %struct.channel* %180, i32 0, i32 12
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.channel*, %struct.channel** %2, align 8
  %186 = getelementptr inbounds %struct.channel, %struct.channel* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = ashr i32 %187, 4
  %189 = add nsw i32 %184, %188
  %190 = load %struct.channel*, %struct.channel** %2, align 8
  %191 = getelementptr inbounds %struct.channel, %struct.channel* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, 15
  %194 = sub nsw i32 %189, %193
  %195 = load %struct.channel*, %struct.channel** %2, align 8
  %196 = getelementptr inbounds %struct.channel, %struct.channel* %195, i32 0, i32 12
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  store i32 %194, i32* %198, align 4
  %199 = load %struct.channel*, %struct.channel** %2, align 8
  %200 = getelementptr inbounds %struct.channel, %struct.channel* %199, i32 0, i32 12
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %179
  %206 = load %struct.channel*, %struct.channel** %2, align 8
  %207 = getelementptr inbounds %struct.channel, %struct.channel* %206, i32 0, i32 12
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  store i32 0, i32* %209, align 4
  br label %210

210:                                              ; preds = %205, %179
  %211 = load %struct.channel*, %struct.channel** %2, align 8
  %212 = getelementptr inbounds %struct.channel, %struct.channel* %211, i32 0, i32 12
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp sgt i32 %215, 64
  br i1 %216, label %217, label %222

217:                                              ; preds = %210
  %218 = load %struct.channel*, %struct.channel** %2, align 8
  %219 = getelementptr inbounds %struct.channel, %struct.channel* %218, i32 0, i32 12
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  store i32 64, i32* %221, align 4
  br label %222

222:                                              ; preds = %217, %210
  br label %345

223:                                              ; preds = %119
  %224 = load %struct.channel*, %struct.channel** %2, align 8
  %225 = getelementptr inbounds %struct.channel, %struct.channel* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.channel*, %struct.channel** %2, align 8
  %228 = getelementptr inbounds %struct.channel, %struct.channel* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = ashr i32 %229, 4
  %231 = add nsw i32 %226, %230
  %232 = load %struct.channel*, %struct.channel** %2, align 8
  %233 = getelementptr inbounds %struct.channel, %struct.channel* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = and i32 %234, 15
  %236 = sub nsw i32 %231, %235
  %237 = load %struct.channel*, %struct.channel** %2, align 8
  %238 = getelementptr inbounds %struct.channel, %struct.channel* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 4
  %239 = load %struct.channel*, %struct.channel** %2, align 8
  %240 = getelementptr inbounds %struct.channel, %struct.channel* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %223
  %244 = load %struct.channel*, %struct.channel** %2, align 8
  %245 = getelementptr inbounds %struct.channel, %struct.channel* %244, i32 0, i32 2
  store i32 0, i32* %245, align 4
  br label %246

246:                                              ; preds = %243, %223
  %247 = load %struct.channel*, %struct.channel** %2, align 8
  %248 = getelementptr inbounds %struct.channel, %struct.channel* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = icmp sgt i32 %249, 255
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  %252 = load %struct.channel*, %struct.channel** %2, align 8
  %253 = getelementptr inbounds %struct.channel, %struct.channel* %252, i32 0, i32 2
  store i32 255, i32* %253, align 4
  br label %254

254:                                              ; preds = %251, %246
  br label %345

255:                                              ; preds = %119, %119
  %256 = load %struct.channel*, %struct.channel** %2, align 8
  %257 = call i32 @channel_retrig_vol_slide(%struct.channel* %256)
  br label %345

258:                                              ; preds = %119, %119
  %259 = load %struct.channel*, %struct.channel** %2, align 8
  %260 = call i32 @channel_tremor(%struct.channel* %259)
  br label %345

261:                                              ; preds = %119
  %262 = load %struct.channel*, %struct.channel** %2, align 8
  %263 = getelementptr inbounds %struct.channel, %struct.channel* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.channel*, %struct.channel** %2, align 8
  %266 = getelementptr inbounds %struct.channel, %struct.channel* %265, i32 0, i32 9
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp sge i64 %264, %268
  br i1 %269, label %270, label %277

270:                                              ; preds = %261
  %271 = load %struct.channel*, %struct.channel** %2, align 8
  %272 = getelementptr inbounds %struct.channel, %struct.channel* %271, i32 0, i32 0
  store i64 0, i64* %272, align 8
  %273 = load %struct.channel*, %struct.channel** %2, align 8
  %274 = getelementptr inbounds %struct.channel, %struct.channel* %273, i32 0, i32 10
  store i32 0, i32* %274, align 8
  %275 = load %struct.channel*, %struct.channel** %2, align 8
  %276 = getelementptr inbounds %struct.channel, %struct.channel* %275, i32 0, i32 11
  store i32 0, i32* %276, align 4
  br label %277

277:                                              ; preds = %270, %261
  br label %345

278:                                              ; preds = %119, %119
  %279 = load %struct.channel*, %struct.channel** %2, align 8
  %280 = getelementptr inbounds %struct.channel, %struct.channel* %279, i32 0, i32 9
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.channel*, %struct.channel** %2, align 8
  %284 = getelementptr inbounds %struct.channel, %struct.channel* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp eq i64 %282, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %278
  %288 = load %struct.channel*, %struct.channel** %2, align 8
  %289 = getelementptr inbounds %struct.channel, %struct.channel* %288, i32 0, i32 1
  store i32 0, i32* %289, align 8
  br label %290

290:                                              ; preds = %287, %278
  br label %345

291:                                              ; preds = %119, %119
  %292 = load %struct.channel*, %struct.channel** %2, align 8
  %293 = getelementptr inbounds %struct.channel, %struct.channel* %292, i32 0, i32 9
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.channel*, %struct.channel** %2, align 8
  %297 = getelementptr inbounds %struct.channel, %struct.channel* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp eq i64 %295, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %291
  %301 = load %struct.channel*, %struct.channel** %2, align 8
  %302 = call i32 @channel_trigger(%struct.channel* %301)
  br label %303

303:                                              ; preds = %300, %291
  br label %345

304:                                              ; preds = %119
  %305 = load %struct.channel*, %struct.channel** %2, align 8
  %306 = getelementptr inbounds %struct.channel, %struct.channel* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp eq i64 %307, 1
  br i1 %308, label %309, label %316

309:                                              ; preds = %304
  %310 = load %struct.channel*, %struct.channel** %2, align 8
  %311 = getelementptr inbounds %struct.channel, %struct.channel* %310, i32 0, i32 6
  %312 = load i32, i32* %311, align 4
  %313 = ashr i32 %312, 4
  %314 = load %struct.channel*, %struct.channel** %2, align 8
  %315 = getelementptr inbounds %struct.channel, %struct.channel* %314, i32 0, i32 5
  store i32 %313, i32* %315, align 8
  br label %334

316:                                              ; preds = %304
  %317 = load %struct.channel*, %struct.channel** %2, align 8
  %318 = getelementptr inbounds %struct.channel, %struct.channel* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = icmp eq i64 %319, 2
  br i1 %320, label %321, label %328

321:                                              ; preds = %316
  %322 = load %struct.channel*, %struct.channel** %2, align 8
  %323 = getelementptr inbounds %struct.channel, %struct.channel* %322, i32 0, i32 6
  %324 = load i32, i32* %323, align 4
  %325 = and i32 %324, 15
  %326 = load %struct.channel*, %struct.channel** %2, align 8
  %327 = getelementptr inbounds %struct.channel, %struct.channel* %326, i32 0, i32 5
  store i32 %325, i32* %327, align 8
  br label %333

328:                                              ; preds = %316
  %329 = load %struct.channel*, %struct.channel** %2, align 8
  %330 = getelementptr inbounds %struct.channel, %struct.channel* %329, i32 0, i32 0
  store i64 0, i64* %330, align 8
  %331 = load %struct.channel*, %struct.channel** %2, align 8
  %332 = getelementptr inbounds %struct.channel, %struct.channel* %331, i32 0, i32 5
  store i32 0, i32* %332, align 8
  br label %333

333:                                              ; preds = %328, %321
  br label %334

334:                                              ; preds = %333, %309
  br label %345

335:                                              ; preds = %119
  %336 = load %struct.channel*, %struct.channel** %2, align 8
  %337 = getelementptr inbounds %struct.channel, %struct.channel* %336, i32 0, i32 7
  %338 = load i32, i32* %337, align 8
  %339 = load %struct.channel*, %struct.channel** %2, align 8
  %340 = getelementptr inbounds %struct.channel, %struct.channel* %339, i32 0, i32 8
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %341, %338
  store i32 %342, i32* %340, align 4
  %343 = load %struct.channel*, %struct.channel** %2, align 8
  %344 = call i32 @channel_vibrato(%struct.channel* %343, i32 1)
  br label %345

345:                                              ; preds = %119, %335, %334, %303, %290, %277, %258, %255, %254, %222, %176, %166, %154, %149, %139, %136, %130, %124
  %346 = load %struct.channel*, %struct.channel** %2, align 8
  %347 = call i32 @channel_auto_vibrato(%struct.channel* %346)
  %348 = load %struct.channel*, %struct.channel** %2, align 8
  %349 = call i32 @channel_calculate_freq(%struct.channel* %348)
  %350 = load %struct.channel*, %struct.channel** %2, align 8
  %351 = call i32 @channel_calculate_ampl(%struct.channel* %350)
  %352 = load %struct.channel*, %struct.channel** %2, align 8
  %353 = call i32 @channel_update_envelopes(%struct.channel* %352)
  ret void
}

declare dso_local i32 @channel_vibrato(%struct.channel*, i32) #1

declare dso_local i32 @channel_tone_porta(%struct.channel*) #1

declare dso_local i32 @channel_porta_up(%struct.channel*, i32) #1

declare dso_local i32 @channel_porta_down(%struct.channel*, i32) #1

declare dso_local i32 @channel_volume_slide(%struct.channel*) #1

declare dso_local i32 @channel_tremolo(%struct.channel*) #1

declare dso_local i32 @channel_retrig_vol_slide(%struct.channel*) #1

declare dso_local i32 @channel_tremor(%struct.channel*) #1

declare dso_local i32 @channel_trigger(%struct.channel*) #1

declare dso_local i32 @channel_auto_vibrato(%struct.channel*) #1

declare dso_local i32 @channel_calculate_freq(%struct.channel*) #1

declare dso_local i32 @channel_calculate_ampl(%struct.channel*) #1

declare dso_local i32 @channel_update_envelopes(%struct.channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
