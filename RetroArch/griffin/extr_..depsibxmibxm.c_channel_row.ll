; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_row.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.note, i32, %struct.TYPE_2__*, i64, i64, i64, i64, i32 }
%struct.note = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*, %struct.note*)* @channel_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_row(%struct.channel* %0, %struct.note* %1) #0 {
  %3 = alloca %struct.channel*, align 8
  %4 = alloca %struct.note*, align 8
  store %struct.channel* %0, %struct.channel** %3, align 8
  store %struct.note* %1, %struct.note** %4, align 8
  %5 = load %struct.channel*, %struct.channel** %3, align 8
  %6 = getelementptr inbounds %struct.channel, %struct.channel* %5, i32 0, i32 26
  %7 = load %struct.note*, %struct.note** %4, align 8
  %8 = bitcast %struct.note* %6 to i8*
  %9 = bitcast %struct.note* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load %struct.channel*, %struct.channel** %3, align 8
  %11 = getelementptr inbounds %struct.channel, %struct.channel* %10, i32 0, i32 33
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.channel*, %struct.channel** %3, align 8
  %15 = getelementptr inbounds %struct.channel, %struct.channel* %14, i32 0, i32 29
  store i64 0, i64* %15, align 8
  %16 = load %struct.channel*, %struct.channel** %3, align 8
  %17 = getelementptr inbounds %struct.channel, %struct.channel* %16, i32 0, i32 30
  store i64 0, i64* %17, align 8
  %18 = load %struct.channel*, %struct.channel** %3, align 8
  %19 = getelementptr inbounds %struct.channel, %struct.channel* %18, i32 0, i32 31
  store i64 0, i64* %19, align 8
  %20 = load %struct.channel*, %struct.channel** %3, align 8
  %21 = getelementptr inbounds %struct.channel, %struct.channel* %20, i32 0, i32 32
  store i64 0, i64* %21, align 8
  %22 = load %struct.note*, %struct.note** %4, align 8
  %23 = getelementptr inbounds %struct.note, %struct.note* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 125
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.note*, %struct.note** %4, align 8
  %28 = getelementptr inbounds %struct.note, %struct.note* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 253
  br i1 %30, label %31, label %36

31:                                               ; preds = %26, %2
  %32 = load %struct.note*, %struct.note** %4, align 8
  %33 = getelementptr inbounds %struct.note, %struct.note* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.channel*, %struct.channel** %3, align 8
  %38 = call i32 @channel_trigger(%struct.channel* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.channel*, %struct.channel** %3, align 8
  %41 = getelementptr inbounds %struct.channel, %struct.channel* %40, i32 0, i32 26
  %42 = getelementptr inbounds %struct.note, %struct.note* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %631 [
    i32 1, label %44
    i32 134, label %44
    i32 2, label %64
    i32 133, label %64
    i32 3, label %84
    i32 135, label %84
    i32 4, label %99
    i32 136, label %99
    i32 5, label %134
    i32 140, label %134
    i32 6, label %151
    i32 139, label %151
    i32 7, label %170
    i32 146, label %170
    i32 8, label %205
    i32 10, label %223
    i32 132, label %223
    i32 12, label %240
    i32 16, label %258
    i32 150, label %258
    i32 17, label %278
    i32 20, label %293
    i32 21, label %296
    i32 25, label %307
    i32 27, label %322
    i32 145, label %322
    i32 29, label %357
    i32 137, label %357
    i32 33, label %392
    i32 113, label %428
    i32 114, label %450
    i32 116, label %472
    i32 243, label %472
    i32 119, label %487
    i32 244, label %487
    i32 122, label %502
    i32 123, label %532
    i32 124, label %562
    i32 252, label %562
    i32 138, label %572
    i32 149, label %587
    i32 248, label %622
  ]

44:                                               ; preds = %39, %39
  %45 = load %struct.channel*, %struct.channel** %3, align 8
  %46 = getelementptr inbounds %struct.channel, %struct.channel* %45, i32 0, i32 26
  %47 = getelementptr inbounds %struct.note, %struct.note* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.channel*, %struct.channel** %3, align 8
  %52 = getelementptr inbounds %struct.channel, %struct.channel* %51, i32 0, i32 26
  %53 = getelementptr inbounds %struct.note, %struct.note* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.channel*, %struct.channel** %3, align 8
  %57 = getelementptr inbounds %struct.channel, %struct.channel* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %50, %44
  %59 = load %struct.channel*, %struct.channel** %3, align 8
  %60 = load %struct.channel*, %struct.channel** %3, align 8
  %61 = getelementptr inbounds %struct.channel, %struct.channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @channel_porta_up(%struct.channel* %59, i32 %62)
  br label %631

64:                                               ; preds = %39, %39
  %65 = load %struct.channel*, %struct.channel** %3, align 8
  %66 = getelementptr inbounds %struct.channel, %struct.channel* %65, i32 0, i32 26
  %67 = getelementptr inbounds %struct.note, %struct.note* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.channel*, %struct.channel** %3, align 8
  %72 = getelementptr inbounds %struct.channel, %struct.channel* %71, i32 0, i32 26
  %73 = getelementptr inbounds %struct.note, %struct.note* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.channel*, %struct.channel** %3, align 8
  %77 = getelementptr inbounds %struct.channel, %struct.channel* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %70, %64
  %79 = load %struct.channel*, %struct.channel** %3, align 8
  %80 = load %struct.channel*, %struct.channel** %3, align 8
  %81 = getelementptr inbounds %struct.channel, %struct.channel* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @channel_porta_down(%struct.channel* %79, i32 %82)
  br label %631

84:                                               ; preds = %39, %39
  %85 = load %struct.channel*, %struct.channel** %3, align 8
  %86 = getelementptr inbounds %struct.channel, %struct.channel* %85, i32 0, i32 26
  %87 = getelementptr inbounds %struct.note, %struct.note* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load %struct.channel*, %struct.channel** %3, align 8
  %92 = getelementptr inbounds %struct.channel, %struct.channel* %91, i32 0, i32 26
  %93 = getelementptr inbounds %struct.note, %struct.note* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.channel*, %struct.channel** %3, align 8
  %97 = getelementptr inbounds %struct.channel, %struct.channel* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %90, %84
  br label %631

99:                                               ; preds = %39, %39
  %100 = load %struct.channel*, %struct.channel** %3, align 8
  %101 = getelementptr inbounds %struct.channel, %struct.channel* %100, i32 0, i32 26
  %102 = getelementptr inbounds %struct.note, %struct.note* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = ashr i64 %103, 4
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load %struct.channel*, %struct.channel** %3, align 8
  %108 = getelementptr inbounds %struct.channel, %struct.channel* %107, i32 0, i32 26
  %109 = getelementptr inbounds %struct.note, %struct.note* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = ashr i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = load %struct.channel*, %struct.channel** %3, align 8
  %114 = getelementptr inbounds %struct.channel, %struct.channel* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %106, %99
  %116 = load %struct.channel*, %struct.channel** %3, align 8
  %117 = getelementptr inbounds %struct.channel, %struct.channel* %116, i32 0, i32 26
  %118 = getelementptr inbounds %struct.note, %struct.note* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = and i64 %119, 15
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %115
  %123 = load %struct.channel*, %struct.channel** %3, align 8
  %124 = getelementptr inbounds %struct.channel, %struct.channel* %123, i32 0, i32 26
  %125 = getelementptr inbounds %struct.note, %struct.note* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = and i64 %126, 15
  %128 = trunc i64 %127 to i32
  %129 = load %struct.channel*, %struct.channel** %3, align 8
  %130 = getelementptr inbounds %struct.channel, %struct.channel* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %122, %115
  %132 = load %struct.channel*, %struct.channel** %3, align 8
  %133 = call i32 @channel_vibrato(%struct.channel* %132, i32 0)
  br label %631

134:                                              ; preds = %39, %39
  %135 = load %struct.channel*, %struct.channel** %3, align 8
  %136 = getelementptr inbounds %struct.channel, %struct.channel* %135, i32 0, i32 26
  %137 = getelementptr inbounds %struct.note, %struct.note* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %134
  %141 = load %struct.channel*, %struct.channel** %3, align 8
  %142 = getelementptr inbounds %struct.channel, %struct.channel* %141, i32 0, i32 26
  %143 = getelementptr inbounds %struct.note, %struct.note* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = load %struct.channel*, %struct.channel** %3, align 8
  %147 = getelementptr inbounds %struct.channel, %struct.channel* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %140, %134
  %149 = load %struct.channel*, %struct.channel** %3, align 8
  %150 = call i32 @channel_volume_slide(%struct.channel* %149)
  br label %631

151:                                              ; preds = %39, %39
  %152 = load %struct.channel*, %struct.channel** %3, align 8
  %153 = getelementptr inbounds %struct.channel, %struct.channel* %152, i32 0, i32 26
  %154 = getelementptr inbounds %struct.note, %struct.note* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %151
  %158 = load %struct.channel*, %struct.channel** %3, align 8
  %159 = getelementptr inbounds %struct.channel, %struct.channel* %158, i32 0, i32 26
  %160 = getelementptr inbounds %struct.note, %struct.note* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = load %struct.channel*, %struct.channel** %3, align 8
  %164 = getelementptr inbounds %struct.channel, %struct.channel* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %157, %151
  %166 = load %struct.channel*, %struct.channel** %3, align 8
  %167 = call i32 @channel_vibrato(%struct.channel* %166, i32 0)
  %168 = load %struct.channel*, %struct.channel** %3, align 8
  %169 = call i32 @channel_volume_slide(%struct.channel* %168)
  br label %631

170:                                              ; preds = %39, %39
  %171 = load %struct.channel*, %struct.channel** %3, align 8
  %172 = getelementptr inbounds %struct.channel, %struct.channel* %171, i32 0, i32 26
  %173 = getelementptr inbounds %struct.note, %struct.note* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = ashr i64 %174, 4
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %170
  %178 = load %struct.channel*, %struct.channel** %3, align 8
  %179 = getelementptr inbounds %struct.channel, %struct.channel* %178, i32 0, i32 26
  %180 = getelementptr inbounds %struct.note, %struct.note* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = ashr i64 %181, 4
  %183 = trunc i64 %182 to i32
  %184 = load %struct.channel*, %struct.channel** %3, align 8
  %185 = getelementptr inbounds %struct.channel, %struct.channel* %184, i32 0, i32 6
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %177, %170
  %187 = load %struct.channel*, %struct.channel** %3, align 8
  %188 = getelementptr inbounds %struct.channel, %struct.channel* %187, i32 0, i32 26
  %189 = getelementptr inbounds %struct.note, %struct.note* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = and i64 %190, 15
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %186
  %194 = load %struct.channel*, %struct.channel** %3, align 8
  %195 = getelementptr inbounds %struct.channel, %struct.channel* %194, i32 0, i32 26
  %196 = getelementptr inbounds %struct.note, %struct.note* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = and i64 %197, 15
  %199 = trunc i64 %198 to i32
  %200 = load %struct.channel*, %struct.channel** %3, align 8
  %201 = getelementptr inbounds %struct.channel, %struct.channel* %200, i32 0, i32 7
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %193, %186
  %203 = load %struct.channel*, %struct.channel** %3, align 8
  %204 = call i32 @channel_tremolo(%struct.channel* %203)
  br label %631

205:                                              ; preds = %39
  %206 = load %struct.channel*, %struct.channel** %3, align 8
  %207 = getelementptr inbounds %struct.channel, %struct.channel* %206, i32 0, i32 26
  %208 = getelementptr inbounds %struct.note, %struct.note* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp slt i64 %209, 128
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = load %struct.channel*, %struct.channel** %3, align 8
  %213 = getelementptr inbounds %struct.channel, %struct.channel* %212, i32 0, i32 26
  %214 = getelementptr inbounds %struct.note, %struct.note* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = shl i64 %215, 1
  br label %218

217:                                              ; preds = %205
  br label %218

218:                                              ; preds = %217, %211
  %219 = phi i64 [ %216, %211 ], [ 255, %217 ]
  %220 = trunc i64 %219 to i32
  %221 = load %struct.channel*, %struct.channel** %3, align 8
  %222 = getelementptr inbounds %struct.channel, %struct.channel* %221, i32 0, i32 8
  store i32 %220, i32* %222, align 8
  br label %631

223:                                              ; preds = %39, %39
  %224 = load %struct.channel*, %struct.channel** %3, align 8
  %225 = getelementptr inbounds %struct.channel, %struct.channel* %224, i32 0, i32 26
  %226 = getelementptr inbounds %struct.note, %struct.note* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %223
  %230 = load %struct.channel*, %struct.channel** %3, align 8
  %231 = getelementptr inbounds %struct.channel, %struct.channel* %230, i32 0, i32 26
  %232 = getelementptr inbounds %struct.note, %struct.note* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = trunc i64 %233 to i32
  %235 = load %struct.channel*, %struct.channel** %3, align 8
  %236 = getelementptr inbounds %struct.channel, %struct.channel* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 4
  br label %237

237:                                              ; preds = %229, %223
  %238 = load %struct.channel*, %struct.channel** %3, align 8
  %239 = call i32 @channel_volume_slide(%struct.channel* %238)
  br label %631

240:                                              ; preds = %39
  %241 = load %struct.channel*, %struct.channel** %3, align 8
  %242 = getelementptr inbounds %struct.channel, %struct.channel* %241, i32 0, i32 26
  %243 = getelementptr inbounds %struct.note, %struct.note* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = icmp sge i64 %244, 64
  br i1 %245, label %246, label %247

246:                                              ; preds = %240
  br label %253

247:                                              ; preds = %240
  %248 = load %struct.channel*, %struct.channel** %3, align 8
  %249 = getelementptr inbounds %struct.channel, %struct.channel* %248, i32 0, i32 26
  %250 = getelementptr inbounds %struct.note, %struct.note* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = and i64 %251, 63
  br label %253

253:                                              ; preds = %247, %246
  %254 = phi i64 [ 64, %246 ], [ %252, %247 ]
  %255 = trunc i64 %254 to i32
  %256 = load %struct.channel*, %struct.channel** %3, align 8
  %257 = getelementptr inbounds %struct.channel, %struct.channel* %256, i32 0, i32 9
  store i32 %255, i32* %257, align 4
  br label %631

258:                                              ; preds = %39, %39
  %259 = load %struct.channel*, %struct.channel** %3, align 8
  %260 = getelementptr inbounds %struct.channel, %struct.channel* %259, i32 0, i32 26
  %261 = getelementptr inbounds %struct.note, %struct.note* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = icmp sge i64 %262, 64
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  br label %271

265:                                              ; preds = %258
  %266 = load %struct.channel*, %struct.channel** %3, align 8
  %267 = getelementptr inbounds %struct.channel, %struct.channel* %266, i32 0, i32 26
  %268 = getelementptr inbounds %struct.note, %struct.note* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = and i64 %269, 63
  br label %271

271:                                              ; preds = %265, %264
  %272 = phi i64 [ 64, %264 ], [ %270, %265 ]
  %273 = trunc i64 %272 to i32
  %274 = load %struct.channel*, %struct.channel** %3, align 8
  %275 = getelementptr inbounds %struct.channel, %struct.channel* %274, i32 0, i32 28
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  store i32 %273, i32* %277, align 4
  br label %631

278:                                              ; preds = %39
  %279 = load %struct.channel*, %struct.channel** %3, align 8
  %280 = getelementptr inbounds %struct.channel, %struct.channel* %279, i32 0, i32 26
  %281 = getelementptr inbounds %struct.note, %struct.note* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp sgt i64 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %278
  %285 = load %struct.channel*, %struct.channel** %3, align 8
  %286 = getelementptr inbounds %struct.channel, %struct.channel* %285, i32 0, i32 26
  %287 = getelementptr inbounds %struct.note, %struct.note* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = trunc i64 %288 to i32
  %290 = load %struct.channel*, %struct.channel** %3, align 8
  %291 = getelementptr inbounds %struct.channel, %struct.channel* %290, i32 0, i32 10
  store i32 %289, i32* %291, align 8
  br label %292

292:                                              ; preds = %284, %278
  br label %631

293:                                              ; preds = %39
  %294 = load %struct.channel*, %struct.channel** %3, align 8
  %295 = getelementptr inbounds %struct.channel, %struct.channel* %294, i32 0, i32 27
  store i32 0, i32* %295, align 8
  br label %631

296:                                              ; preds = %39
  %297 = load %struct.channel*, %struct.channel** %3, align 8
  %298 = getelementptr inbounds %struct.channel, %struct.channel* %297, i32 0, i32 26
  %299 = getelementptr inbounds %struct.note, %struct.note* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = and i64 %300, 255
  %302 = trunc i64 %301 to i32
  %303 = load %struct.channel*, %struct.channel** %3, align 8
  %304 = getelementptr inbounds %struct.channel, %struct.channel* %303, i32 0, i32 12
  store i32 %302, i32* %304, align 8
  %305 = load %struct.channel*, %struct.channel** %3, align 8
  %306 = getelementptr inbounds %struct.channel, %struct.channel* %305, i32 0, i32 11
  store i32 %302, i32* %306, align 4
  br label %631

307:                                              ; preds = %39
  %308 = load %struct.channel*, %struct.channel** %3, align 8
  %309 = getelementptr inbounds %struct.channel, %struct.channel* %308, i32 0, i32 26
  %310 = getelementptr inbounds %struct.note, %struct.note* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = icmp sgt i64 %311, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %307
  %314 = load %struct.channel*, %struct.channel** %3, align 8
  %315 = getelementptr inbounds %struct.channel, %struct.channel* %314, i32 0, i32 26
  %316 = getelementptr inbounds %struct.note, %struct.note* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = trunc i64 %317 to i32
  %319 = load %struct.channel*, %struct.channel** %3, align 8
  %320 = getelementptr inbounds %struct.channel, %struct.channel* %319, i32 0, i32 13
  store i32 %318, i32* %320, align 4
  br label %321

321:                                              ; preds = %313, %307
  br label %631

322:                                              ; preds = %39, %39
  %323 = load %struct.channel*, %struct.channel** %3, align 8
  %324 = getelementptr inbounds %struct.channel, %struct.channel* %323, i32 0, i32 26
  %325 = getelementptr inbounds %struct.note, %struct.note* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = ashr i64 %326, 4
  %328 = icmp sgt i64 %327, 0
  br i1 %328, label %329, label %338

329:                                              ; preds = %322
  %330 = load %struct.channel*, %struct.channel** %3, align 8
  %331 = getelementptr inbounds %struct.channel, %struct.channel* %330, i32 0, i32 26
  %332 = getelementptr inbounds %struct.note, %struct.note* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = ashr i64 %333, 4
  %335 = trunc i64 %334 to i32
  %336 = load %struct.channel*, %struct.channel** %3, align 8
  %337 = getelementptr inbounds %struct.channel, %struct.channel* %336, i32 0, i32 14
  store i32 %335, i32* %337, align 8
  br label %338

338:                                              ; preds = %329, %322
  %339 = load %struct.channel*, %struct.channel** %3, align 8
  %340 = getelementptr inbounds %struct.channel, %struct.channel* %339, i32 0, i32 26
  %341 = getelementptr inbounds %struct.note, %struct.note* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = and i64 %342, 15
  %344 = icmp sgt i64 %343, 0
  br i1 %344, label %345, label %354

345:                                              ; preds = %338
  %346 = load %struct.channel*, %struct.channel** %3, align 8
  %347 = getelementptr inbounds %struct.channel, %struct.channel* %346, i32 0, i32 26
  %348 = getelementptr inbounds %struct.note, %struct.note* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = and i64 %349, 15
  %351 = trunc i64 %350 to i32
  %352 = load %struct.channel*, %struct.channel** %3, align 8
  %353 = getelementptr inbounds %struct.channel, %struct.channel* %352, i32 0, i32 15
  store i32 %351, i32* %353, align 4
  br label %354

354:                                              ; preds = %345, %338
  %355 = load %struct.channel*, %struct.channel** %3, align 8
  %356 = call i32 @channel_retrig_vol_slide(%struct.channel* %355)
  br label %631

357:                                              ; preds = %39, %39
  %358 = load %struct.channel*, %struct.channel** %3, align 8
  %359 = getelementptr inbounds %struct.channel, %struct.channel* %358, i32 0, i32 26
  %360 = getelementptr inbounds %struct.note, %struct.note* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = ashr i64 %361, 4
  %363 = icmp sgt i64 %362, 0
  br i1 %363, label %364, label %373

364:                                              ; preds = %357
  %365 = load %struct.channel*, %struct.channel** %3, align 8
  %366 = getelementptr inbounds %struct.channel, %struct.channel* %365, i32 0, i32 26
  %367 = getelementptr inbounds %struct.note, %struct.note* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = ashr i64 %368, 4
  %370 = trunc i64 %369 to i32
  %371 = load %struct.channel*, %struct.channel** %3, align 8
  %372 = getelementptr inbounds %struct.channel, %struct.channel* %371, i32 0, i32 16
  store i32 %370, i32* %372, align 8
  br label %373

373:                                              ; preds = %364, %357
  %374 = load %struct.channel*, %struct.channel** %3, align 8
  %375 = getelementptr inbounds %struct.channel, %struct.channel* %374, i32 0, i32 26
  %376 = getelementptr inbounds %struct.note, %struct.note* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = and i64 %377, 15
  %379 = icmp sgt i64 %378, 0
  br i1 %379, label %380, label %389

380:                                              ; preds = %373
  %381 = load %struct.channel*, %struct.channel** %3, align 8
  %382 = getelementptr inbounds %struct.channel, %struct.channel* %381, i32 0, i32 26
  %383 = getelementptr inbounds %struct.note, %struct.note* %382, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = and i64 %384, 15
  %386 = trunc i64 %385 to i32
  %387 = load %struct.channel*, %struct.channel** %3, align 8
  %388 = getelementptr inbounds %struct.channel, %struct.channel* %387, i32 0, i32 17
  store i32 %386, i32* %388, align 4
  br label %389

389:                                              ; preds = %380, %373
  %390 = load %struct.channel*, %struct.channel** %3, align 8
  %391 = call i32 @channel_tremor(%struct.channel* %390)
  br label %631

392:                                              ; preds = %39
  %393 = load %struct.channel*, %struct.channel** %3, align 8
  %394 = getelementptr inbounds %struct.channel, %struct.channel* %393, i32 0, i32 26
  %395 = getelementptr inbounds %struct.note, %struct.note* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = icmp sgt i64 %396, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %392
  %399 = load %struct.channel*, %struct.channel** %3, align 8
  %400 = getelementptr inbounds %struct.channel, %struct.channel* %399, i32 0, i32 26
  %401 = getelementptr inbounds %struct.note, %struct.note* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = trunc i64 %402 to i32
  %404 = load %struct.channel*, %struct.channel** %3, align 8
  %405 = getelementptr inbounds %struct.channel, %struct.channel* %404, i32 0, i32 18
  store i32 %403, i32* %405, align 8
  br label %406

406:                                              ; preds = %398, %392
  %407 = load %struct.channel*, %struct.channel** %3, align 8
  %408 = getelementptr inbounds %struct.channel, %struct.channel* %407, i32 0, i32 18
  %409 = load i32, i32* %408, align 8
  %410 = and i32 %409, 240
  switch i32 %410, label %427 [
    i32 16, label %411
    i32 32, label %419
  ]

411:                                              ; preds = %406
  %412 = load %struct.channel*, %struct.channel** %3, align 8
  %413 = load %struct.channel*, %struct.channel** %3, align 8
  %414 = getelementptr inbounds %struct.channel, %struct.channel* %413, i32 0, i32 18
  %415 = load i32, i32* %414, align 8
  %416 = and i32 %415, 15
  %417 = or i32 224, %416
  %418 = call i32 @channel_porta_up(%struct.channel* %412, i32 %417)
  br label %427

419:                                              ; preds = %406
  %420 = load %struct.channel*, %struct.channel** %3, align 8
  %421 = load %struct.channel*, %struct.channel** %3, align 8
  %422 = getelementptr inbounds %struct.channel, %struct.channel* %421, i32 0, i32 18
  %423 = load i32, i32* %422, align 8
  %424 = and i32 %423, 15
  %425 = or i32 224, %424
  %426 = call i32 @channel_porta_down(%struct.channel* %420, i32 %425)
  br label %427

427:                                              ; preds = %406, %419, %411
  br label %631

428:                                              ; preds = %39
  %429 = load %struct.channel*, %struct.channel** %3, align 8
  %430 = getelementptr inbounds %struct.channel, %struct.channel* %429, i32 0, i32 26
  %431 = getelementptr inbounds %struct.note, %struct.note* %430, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = icmp sgt i64 %432, 0
  br i1 %433, label %434, label %442

434:                                              ; preds = %428
  %435 = load %struct.channel*, %struct.channel** %3, align 8
  %436 = getelementptr inbounds %struct.channel, %struct.channel* %435, i32 0, i32 26
  %437 = getelementptr inbounds %struct.note, %struct.note* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = trunc i64 %438 to i32
  %440 = load %struct.channel*, %struct.channel** %3, align 8
  %441 = getelementptr inbounds %struct.channel, %struct.channel* %440, i32 0, i32 19
  store i32 %439, i32* %441, align 4
  br label %442

442:                                              ; preds = %434, %428
  %443 = load %struct.channel*, %struct.channel** %3, align 8
  %444 = load %struct.channel*, %struct.channel** %3, align 8
  %445 = getelementptr inbounds %struct.channel, %struct.channel* %444, i32 0, i32 19
  %446 = load i32, i32* %445, align 4
  %447 = and i32 %446, 15
  %448 = or i32 240, %447
  %449 = call i32 @channel_porta_up(%struct.channel* %443, i32 %448)
  br label %631

450:                                              ; preds = %39
  %451 = load %struct.channel*, %struct.channel** %3, align 8
  %452 = getelementptr inbounds %struct.channel, %struct.channel* %451, i32 0, i32 26
  %453 = getelementptr inbounds %struct.note, %struct.note* %452, i32 0, i32 1
  %454 = load i64, i64* %453, align 8
  %455 = icmp sgt i64 %454, 0
  br i1 %455, label %456, label %464

456:                                              ; preds = %450
  %457 = load %struct.channel*, %struct.channel** %3, align 8
  %458 = getelementptr inbounds %struct.channel, %struct.channel* %457, i32 0, i32 26
  %459 = getelementptr inbounds %struct.note, %struct.note* %458, i32 0, i32 1
  %460 = load i64, i64* %459, align 8
  %461 = trunc i64 %460 to i32
  %462 = load %struct.channel*, %struct.channel** %3, align 8
  %463 = getelementptr inbounds %struct.channel, %struct.channel* %462, i32 0, i32 20
  store i32 %461, i32* %463, align 8
  br label %464

464:                                              ; preds = %456, %450
  %465 = load %struct.channel*, %struct.channel** %3, align 8
  %466 = load %struct.channel*, %struct.channel** %3, align 8
  %467 = getelementptr inbounds %struct.channel, %struct.channel* %466, i32 0, i32 20
  %468 = load i32, i32* %467, align 8
  %469 = and i32 %468, 15
  %470 = or i32 240, %469
  %471 = call i32 @channel_porta_down(%struct.channel* %465, i32 %470)
  br label %631

472:                                              ; preds = %39, %39
  %473 = load %struct.channel*, %struct.channel** %3, align 8
  %474 = getelementptr inbounds %struct.channel, %struct.channel* %473, i32 0, i32 26
  %475 = getelementptr inbounds %struct.note, %struct.note* %474, i32 0, i32 1
  %476 = load i64, i64* %475, align 8
  %477 = icmp slt i64 %476, 8
  br i1 %477, label %478, label %486

478:                                              ; preds = %472
  %479 = load %struct.channel*, %struct.channel** %3, align 8
  %480 = getelementptr inbounds %struct.channel, %struct.channel* %479, i32 0, i32 26
  %481 = getelementptr inbounds %struct.note, %struct.note* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = trunc i64 %482 to i32
  %484 = load %struct.channel*, %struct.channel** %3, align 8
  %485 = getelementptr inbounds %struct.channel, %struct.channel* %484, i32 0, i32 21
  store i32 %483, i32* %485, align 4
  br label %486

486:                                              ; preds = %478, %472
  br label %631

487:                                              ; preds = %39, %39
  %488 = load %struct.channel*, %struct.channel** %3, align 8
  %489 = getelementptr inbounds %struct.channel, %struct.channel* %488, i32 0, i32 26
  %490 = getelementptr inbounds %struct.note, %struct.note* %489, i32 0, i32 1
  %491 = load i64, i64* %490, align 8
  %492 = icmp slt i64 %491, 8
  br i1 %492, label %493, label %501

493:                                              ; preds = %487
  %494 = load %struct.channel*, %struct.channel** %3, align 8
  %495 = getelementptr inbounds %struct.channel, %struct.channel* %494, i32 0, i32 26
  %496 = getelementptr inbounds %struct.note, %struct.note* %495, i32 0, i32 1
  %497 = load i64, i64* %496, align 8
  %498 = trunc i64 %497 to i32
  %499 = load %struct.channel*, %struct.channel** %3, align 8
  %500 = getelementptr inbounds %struct.channel, %struct.channel* %499, i32 0, i32 22
  store i32 %498, i32* %500, align 8
  br label %501

501:                                              ; preds = %493, %487
  br label %631

502:                                              ; preds = %39
  %503 = load %struct.channel*, %struct.channel** %3, align 8
  %504 = getelementptr inbounds %struct.channel, %struct.channel* %503, i32 0, i32 26
  %505 = getelementptr inbounds %struct.note, %struct.note* %504, i32 0, i32 1
  %506 = load i64, i64* %505, align 8
  %507 = icmp sgt i64 %506, 0
  br i1 %507, label %508, label %516

508:                                              ; preds = %502
  %509 = load %struct.channel*, %struct.channel** %3, align 8
  %510 = getelementptr inbounds %struct.channel, %struct.channel* %509, i32 0, i32 26
  %511 = getelementptr inbounds %struct.note, %struct.note* %510, i32 0, i32 1
  %512 = load i64, i64* %511, align 8
  %513 = trunc i64 %512 to i32
  %514 = load %struct.channel*, %struct.channel** %3, align 8
  %515 = getelementptr inbounds %struct.channel, %struct.channel* %514, i32 0, i32 23
  store i32 %513, i32* %515, align 4
  br label %516

516:                                              ; preds = %508, %502
  %517 = load %struct.channel*, %struct.channel** %3, align 8
  %518 = getelementptr inbounds %struct.channel, %struct.channel* %517, i32 0, i32 23
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.channel*, %struct.channel** %3, align 8
  %521 = getelementptr inbounds %struct.channel, %struct.channel* %520, i32 0, i32 9
  %522 = load i32, i32* %521, align 4
  %523 = add nsw i32 %522, %519
  store i32 %523, i32* %521, align 4
  %524 = load %struct.channel*, %struct.channel** %3, align 8
  %525 = getelementptr inbounds %struct.channel, %struct.channel* %524, i32 0, i32 9
  %526 = load i32, i32* %525, align 4
  %527 = icmp sgt i32 %526, 64
  br i1 %527, label %528, label %531

528:                                              ; preds = %516
  %529 = load %struct.channel*, %struct.channel** %3, align 8
  %530 = getelementptr inbounds %struct.channel, %struct.channel* %529, i32 0, i32 9
  store i32 64, i32* %530, align 4
  br label %531

531:                                              ; preds = %528, %516
  br label %631

532:                                              ; preds = %39
  %533 = load %struct.channel*, %struct.channel** %3, align 8
  %534 = getelementptr inbounds %struct.channel, %struct.channel* %533, i32 0, i32 26
  %535 = getelementptr inbounds %struct.note, %struct.note* %534, i32 0, i32 1
  %536 = load i64, i64* %535, align 8
  %537 = icmp sgt i64 %536, 0
  br i1 %537, label %538, label %546

538:                                              ; preds = %532
  %539 = load %struct.channel*, %struct.channel** %3, align 8
  %540 = getelementptr inbounds %struct.channel, %struct.channel* %539, i32 0, i32 26
  %541 = getelementptr inbounds %struct.note, %struct.note* %540, i32 0, i32 1
  %542 = load i64, i64* %541, align 8
  %543 = trunc i64 %542 to i32
  %544 = load %struct.channel*, %struct.channel** %3, align 8
  %545 = getelementptr inbounds %struct.channel, %struct.channel* %544, i32 0, i32 24
  store i32 %543, i32* %545, align 8
  br label %546

546:                                              ; preds = %538, %532
  %547 = load %struct.channel*, %struct.channel** %3, align 8
  %548 = getelementptr inbounds %struct.channel, %struct.channel* %547, i32 0, i32 24
  %549 = load i32, i32* %548, align 8
  %550 = load %struct.channel*, %struct.channel** %3, align 8
  %551 = getelementptr inbounds %struct.channel, %struct.channel* %550, i32 0, i32 9
  %552 = load i32, i32* %551, align 4
  %553 = sub nsw i32 %552, %549
  store i32 %553, i32* %551, align 4
  %554 = load %struct.channel*, %struct.channel** %3, align 8
  %555 = getelementptr inbounds %struct.channel, %struct.channel* %554, i32 0, i32 9
  %556 = load i32, i32* %555, align 4
  %557 = icmp slt i32 %556, 0
  br i1 %557, label %558, label %561

558:                                              ; preds = %546
  %559 = load %struct.channel*, %struct.channel** %3, align 8
  %560 = getelementptr inbounds %struct.channel, %struct.channel* %559, i32 0, i32 9
  store i32 0, i32* %560, align 4
  br label %561

561:                                              ; preds = %558, %546
  br label %631

562:                                              ; preds = %39, %39
  %563 = load %struct.channel*, %struct.channel** %3, align 8
  %564 = getelementptr inbounds %struct.channel, %struct.channel* %563, i32 0, i32 26
  %565 = getelementptr inbounds %struct.note, %struct.note* %564, i32 0, i32 1
  %566 = load i64, i64* %565, align 8
  %567 = icmp sle i64 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %562
  %569 = load %struct.channel*, %struct.channel** %3, align 8
  %570 = getelementptr inbounds %struct.channel, %struct.channel* %569, i32 0, i32 9
  store i32 0, i32* %570, align 4
  br label %571

571:                                              ; preds = %568, %562
  br label %631

572:                                              ; preds = %39
  %573 = load %struct.channel*, %struct.channel** %3, align 8
  %574 = getelementptr inbounds %struct.channel, %struct.channel* %573, i32 0, i32 26
  %575 = getelementptr inbounds %struct.note, %struct.note* %574, i32 0, i32 1
  %576 = load i64, i64* %575, align 8
  %577 = icmp sgt i64 %576, 0
  br i1 %577, label %578, label %586

578:                                              ; preds = %572
  %579 = load %struct.channel*, %struct.channel** %3, align 8
  %580 = getelementptr inbounds %struct.channel, %struct.channel* %579, i32 0, i32 26
  %581 = getelementptr inbounds %struct.note, %struct.note* %580, i32 0, i32 1
  %582 = load i64, i64* %581, align 8
  %583 = trunc i64 %582 to i32
  %584 = load %struct.channel*, %struct.channel** %3, align 8
  %585 = getelementptr inbounds %struct.channel, %struct.channel* %584, i32 0, i32 25
  store i32 %583, i32* %585, align 4
  br label %586

586:                                              ; preds = %578, %572
  br label %631

587:                                              ; preds = %39
  %588 = load %struct.channel*, %struct.channel** %3, align 8
  %589 = getelementptr inbounds %struct.channel, %struct.channel* %588, i32 0, i32 26
  %590 = getelementptr inbounds %struct.note, %struct.note* %589, i32 0, i32 1
  %591 = load i64, i64* %590, align 8
  %592 = ashr i64 %591, 4
  %593 = icmp sgt i64 %592, 0
  br i1 %593, label %594, label %603

594:                                              ; preds = %587
  %595 = load %struct.channel*, %struct.channel** %3, align 8
  %596 = getelementptr inbounds %struct.channel, %struct.channel* %595, i32 0, i32 26
  %597 = getelementptr inbounds %struct.note, %struct.note* %596, i32 0, i32 1
  %598 = load i64, i64* %597, align 8
  %599 = ashr i64 %598, 4
  %600 = trunc i64 %599 to i32
  %601 = load %struct.channel*, %struct.channel** %3, align 8
  %602 = getelementptr inbounds %struct.channel, %struct.channel* %601, i32 0, i32 3
  store i32 %600, i32* %602, align 4
  br label %603

603:                                              ; preds = %594, %587
  %604 = load %struct.channel*, %struct.channel** %3, align 8
  %605 = getelementptr inbounds %struct.channel, %struct.channel* %604, i32 0, i32 26
  %606 = getelementptr inbounds %struct.note, %struct.note* %605, i32 0, i32 1
  %607 = load i64, i64* %606, align 8
  %608 = and i64 %607, 15
  %609 = icmp sgt i64 %608, 0
  br i1 %609, label %610, label %619

610:                                              ; preds = %603
  %611 = load %struct.channel*, %struct.channel** %3, align 8
  %612 = getelementptr inbounds %struct.channel, %struct.channel* %611, i32 0, i32 26
  %613 = getelementptr inbounds %struct.note, %struct.note* %612, i32 0, i32 1
  %614 = load i64, i64* %613, align 8
  %615 = and i64 %614, 15
  %616 = trunc i64 %615 to i32
  %617 = load %struct.channel*, %struct.channel** %3, align 8
  %618 = getelementptr inbounds %struct.channel, %struct.channel* %617, i32 0, i32 4
  store i32 %616, i32* %618, align 8
  br label %619

619:                                              ; preds = %610, %603
  %620 = load %struct.channel*, %struct.channel** %3, align 8
  %621 = call i32 @channel_vibrato(%struct.channel* %620, i32 1)
  br label %631

622:                                              ; preds = %39
  %623 = load %struct.channel*, %struct.channel** %3, align 8
  %624 = getelementptr inbounds %struct.channel, %struct.channel* %623, i32 0, i32 26
  %625 = getelementptr inbounds %struct.note, %struct.note* %624, i32 0, i32 1
  %626 = load i64, i64* %625, align 8
  %627 = mul nsw i64 %626, 17
  %628 = trunc i64 %627 to i32
  %629 = load %struct.channel*, %struct.channel** %3, align 8
  %630 = getelementptr inbounds %struct.channel, %struct.channel* %629, i32 0, i32 8
  store i32 %628, i32* %630, align 8
  br label %631

631:                                              ; preds = %39, %622, %619, %586, %571, %561, %531, %501, %486, %464, %442, %427, %389, %354, %321, %296, %293, %292, %271, %253, %237, %218, %202, %165, %148, %131, %98, %78, %58
  %632 = load %struct.channel*, %struct.channel** %3, align 8
  %633 = call i32 @channel_auto_vibrato(%struct.channel* %632)
  %634 = load %struct.channel*, %struct.channel** %3, align 8
  %635 = call i32 @channel_calculate_freq(%struct.channel* %634)
  %636 = load %struct.channel*, %struct.channel** %3, align 8
  %637 = call i32 @channel_calculate_ampl(%struct.channel* %636)
  %638 = load %struct.channel*, %struct.channel** %3, align 8
  %639 = call i32 @channel_update_envelopes(%struct.channel* %638)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @channel_trigger(%struct.channel*) #2

declare dso_local i32 @channel_porta_up(%struct.channel*, i32) #2

declare dso_local i32 @channel_porta_down(%struct.channel*, i32) #2

declare dso_local i32 @channel_vibrato(%struct.channel*, i32) #2

declare dso_local i32 @channel_volume_slide(%struct.channel*) #2

declare dso_local i32 @channel_tremolo(%struct.channel*) #2

declare dso_local i32 @channel_retrig_vol_slide(%struct.channel*) #2

declare dso_local i32 @channel_tremor(%struct.channel*) #2

declare dso_local i32 @channel_auto_vibrato(%struct.channel*) #2

declare dso_local i32 @channel_calculate_freq(%struct.channel*) #2

declare dso_local i32 @channel_calculate_ampl(%struct.channel*) #2

declare dso_local i32 @channel_update_envelopes(%struct.channel*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
