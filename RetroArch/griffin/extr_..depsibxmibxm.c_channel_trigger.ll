; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_trigger.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_6__*, %struct.sample*, %struct.TYPE_8__, %struct.TYPE_7__*, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_7__* }
%struct.sample = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, %struct.sample* }

@FP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*)* @channel_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_trigger(%struct.channel* %0) #0 {
  %2 = alloca %struct.channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sample*, align 8
  store %struct.channel* %0, %struct.channel** %2, align 8
  %10 = load %struct.channel*, %struct.channel** %2, align 8
  %11 = getelementptr inbounds %struct.channel, %struct.channel* %10, i32 0, i32 21
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %120

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.channel*, %struct.channel** %2, align 8
  %19 = getelementptr inbounds %struct.channel, %struct.channel* %18, i32 0, i32 19
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %17, %24
  br i1 %25, label %26, label %120

26:                                               ; preds = %16
  %27 = load %struct.channel*, %struct.channel** %2, align 8
  %28 = getelementptr inbounds %struct.channel, %struct.channel* %27, i32 0, i32 19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = load %struct.channel*, %struct.channel** %2, align 8
  %38 = getelementptr inbounds %struct.channel, %struct.channel* %37, i32 0, i32 22
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  %39 = load %struct.channel*, %struct.channel** %2, align 8
  %40 = getelementptr inbounds %struct.channel, %struct.channel* %39, i32 0, i32 21
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 97
  br i1 %43, label %44, label %49

44:                                               ; preds = %26
  %45 = load %struct.channel*, %struct.channel** %2, align 8
  %46 = getelementptr inbounds %struct.channel, %struct.channel* %45, i32 0, i32 21
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  br label %50

49:                                               ; preds = %26
  br label %50

50:                                               ; preds = %49, %44
  %51 = phi i32 [ %48, %44 ], [ 0, %49 ]
  store i32 %51, i32* %3, align 4
  %52 = load %struct.channel*, %struct.channel** %2, align 8
  %53 = getelementptr inbounds %struct.channel, %struct.channel* %52, i32 0, i32 22
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %4, align 4
  %61 = load %struct.channel*, %struct.channel** %2, align 8
  %62 = getelementptr inbounds %struct.channel, %struct.channel* %61, i32 0, i32 22
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.sample*, %struct.sample** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.sample, %struct.sample* %65, i64 %67
  store %struct.sample* %68, %struct.sample** %9, align 8
  %69 = load %struct.sample*, %struct.sample** %9, align 8
  %70 = getelementptr inbounds %struct.sample, %struct.sample* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %71, 64
  br i1 %72, label %73, label %74

73:                                               ; preds = %50
  br label %79

74:                                               ; preds = %50
  %75 = load %struct.sample*, %struct.sample** %9, align 8
  %76 = getelementptr inbounds %struct.sample, %struct.sample* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 63
  br label %79

79:                                               ; preds = %74, %73
  %80 = phi i32 [ 64, %73 ], [ %78, %74 ]
  %81 = load %struct.channel*, %struct.channel** %2, align 8
  %82 = getelementptr inbounds %struct.channel, %struct.channel* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.sample*, %struct.sample** %9, align 8
  %84 = getelementptr inbounds %struct.sample, %struct.sample* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load %struct.sample*, %struct.sample** %9, align 8
  %89 = getelementptr inbounds %struct.sample, %struct.sample* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = and i32 %91, 255
  %93 = load %struct.channel*, %struct.channel** %2, align 8
  %94 = getelementptr inbounds %struct.channel, %struct.channel* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %87, %79
  %96 = load %struct.channel*, %struct.channel** %2, align 8
  %97 = getelementptr inbounds %struct.channel, %struct.channel* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %95
  %101 = load %struct.sample*, %struct.sample** %9, align 8
  %102 = getelementptr inbounds %struct.sample, %struct.sample* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.sample*, %struct.sample** %9, align 8
  %107 = load %struct.channel*, %struct.channel** %2, align 8
  %108 = getelementptr inbounds %struct.channel, %struct.channel* %107, i32 0, i32 20
  store %struct.sample* %106, %struct.sample** %108, align 8
  br label %109

109:                                              ; preds = %105, %100, %95
  %110 = load %struct.channel*, %struct.channel** %2, align 8
  %111 = getelementptr inbounds %struct.channel, %struct.channel* %110, i32 0, i32 3
  store i32 0, i32* %111, align 4
  %112 = load %struct.channel*, %struct.channel** %2, align 8
  %113 = getelementptr inbounds %struct.channel, %struct.channel* %112, i32 0, i32 23
  store i64 0, i64* %113, align 8
  %114 = load %struct.channel*, %struct.channel** %2, align 8
  %115 = getelementptr inbounds %struct.channel, %struct.channel* %114, i32 0, i32 24
  store i64 0, i64* %115, align 8
  %116 = load %struct.channel*, %struct.channel** %2, align 8
  %117 = getelementptr inbounds %struct.channel, %struct.channel* %116, i32 0, i32 4
  store i32 32768, i32* %117, align 8
  %118 = load %struct.channel*, %struct.channel** %2, align 8
  %119 = getelementptr inbounds %struct.channel, %struct.channel* %118, i32 0, i32 5
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %109, %16, %1
  %121 = load %struct.channel*, %struct.channel** %2, align 8
  %122 = getelementptr inbounds %struct.channel, %struct.channel* %121, i32 0, i32 21
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 9
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.channel*, %struct.channel** %2, align 8
  %128 = getelementptr inbounds %struct.channel, %struct.channel* %127, i32 0, i32 21
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 143
  br i1 %131, label %132, label %152

132:                                              ; preds = %126, %120
  %133 = load %struct.channel*, %struct.channel** %2, align 8
  %134 = getelementptr inbounds %struct.channel, %struct.channel* %133, i32 0, i32 21
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.channel*, %struct.channel** %2, align 8
  %140 = getelementptr inbounds %struct.channel, %struct.channel* %139, i32 0, i32 21
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.channel*, %struct.channel** %2, align 8
  %144 = getelementptr inbounds %struct.channel, %struct.channel* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %138, %132
  %146 = load %struct.channel*, %struct.channel** %2, align 8
  %147 = getelementptr inbounds %struct.channel, %struct.channel* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = shl i32 %148, 8
  %150 = load %struct.channel*, %struct.channel** %2, align 8
  %151 = getelementptr inbounds %struct.channel, %struct.channel* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %145, %126
  %153 = load %struct.channel*, %struct.channel** %2, align 8
  %154 = getelementptr inbounds %struct.channel, %struct.channel* %153, i32 0, i32 21
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = icmp sge i32 %156, 16
  br i1 %157, label %158, label %181

158:                                              ; preds = %152
  %159 = load %struct.channel*, %struct.channel** %2, align 8
  %160 = getelementptr inbounds %struct.channel, %struct.channel* %159, i32 0, i32 21
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %162, 96
  br i1 %163, label %164, label %181

164:                                              ; preds = %158
  %165 = load %struct.channel*, %struct.channel** %2, align 8
  %166 = getelementptr inbounds %struct.channel, %struct.channel* %165, i32 0, i32 21
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %168, 80
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load %struct.channel*, %struct.channel** %2, align 8
  %172 = getelementptr inbounds %struct.channel, %struct.channel* %171, i32 0, i32 21
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %174, 16
  br label %177

176:                                              ; preds = %164
  br label %177

177:                                              ; preds = %176, %170
  %178 = phi i32 [ %175, %170 ], [ 64, %176 ]
  %179 = load %struct.channel*, %struct.channel** %2, align 8
  %180 = getelementptr inbounds %struct.channel, %struct.channel* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %177, %158, %152
  %182 = load %struct.channel*, %struct.channel** %2, align 8
  %183 = getelementptr inbounds %struct.channel, %struct.channel* %182, i32 0, i32 21
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, 240
  switch i32 %186, label %282 [
    i32 128, label %187
    i32 144, label %205
    i32 160, label %223
    i32 176, label %239
    i32 192, label %257
    i32 240, label %266
  ]

187:                                              ; preds = %181
  %188 = load %struct.channel*, %struct.channel** %2, align 8
  %189 = getelementptr inbounds %struct.channel, %struct.channel* %188, i32 0, i32 21
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %191, 15
  %193 = load %struct.channel*, %struct.channel** %2, align 8
  %194 = getelementptr inbounds %struct.channel, %struct.channel* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load %struct.channel*, %struct.channel** %2, align 8
  %198 = getelementptr inbounds %struct.channel, %struct.channel* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %187
  %202 = load %struct.channel*, %struct.channel** %2, align 8
  %203 = getelementptr inbounds %struct.channel, %struct.channel* %202, i32 0, i32 0
  store i32 0, i32* %203, align 8
  br label %204

204:                                              ; preds = %201, %187
  br label %282

205:                                              ; preds = %181
  %206 = load %struct.channel*, %struct.channel** %2, align 8
  %207 = getelementptr inbounds %struct.channel, %struct.channel* %206, i32 0, i32 21
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = and i32 %209, 15
  %211 = load %struct.channel*, %struct.channel** %2, align 8
  %212 = getelementptr inbounds %struct.channel, %struct.channel* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load %struct.channel*, %struct.channel** %2, align 8
  %216 = getelementptr inbounds %struct.channel, %struct.channel* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp sgt i32 %217, 64
  br i1 %218, label %219, label %222

219:                                              ; preds = %205
  %220 = load %struct.channel*, %struct.channel** %2, align 8
  %221 = getelementptr inbounds %struct.channel, %struct.channel* %220, i32 0, i32 0
  store i32 64, i32* %221, align 8
  br label %222

222:                                              ; preds = %219, %205
  br label %282

223:                                              ; preds = %181
  %224 = load %struct.channel*, %struct.channel** %2, align 8
  %225 = getelementptr inbounds %struct.channel, %struct.channel* %224, i32 0, i32 21
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, 15
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %223
  %231 = load %struct.channel*, %struct.channel** %2, align 8
  %232 = getelementptr inbounds %struct.channel, %struct.channel* %231, i32 0, i32 21
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = and i32 %234, 15
  %236 = load %struct.channel*, %struct.channel** %2, align 8
  %237 = getelementptr inbounds %struct.channel, %struct.channel* %236, i32 0, i32 7
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %230, %223
  br label %282

239:                                              ; preds = %181
  %240 = load %struct.channel*, %struct.channel** %2, align 8
  %241 = getelementptr inbounds %struct.channel, %struct.channel* %240, i32 0, i32 21
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = and i32 %243, 15
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %239
  %247 = load %struct.channel*, %struct.channel** %2, align 8
  %248 = getelementptr inbounds %struct.channel, %struct.channel* %247, i32 0, i32 21
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = and i32 %250, 15
  %252 = load %struct.channel*, %struct.channel** %2, align 8
  %253 = getelementptr inbounds %struct.channel, %struct.channel* %252, i32 0, i32 8
  store i32 %251, i32* %253, align 8
  br label %254

254:                                              ; preds = %246, %239
  %255 = load %struct.channel*, %struct.channel** %2, align 8
  %256 = call i32 @channel_vibrato(%struct.channel* %255, i32 0)
  br label %282

257:                                              ; preds = %181
  %258 = load %struct.channel*, %struct.channel** %2, align 8
  %259 = getelementptr inbounds %struct.channel, %struct.channel* %258, i32 0, i32 21
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %261, 15
  %263 = mul nsw i32 %262, 17
  %264 = load %struct.channel*, %struct.channel** %2, align 8
  %265 = getelementptr inbounds %struct.channel, %struct.channel* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  br label %282

266:                                              ; preds = %181
  %267 = load %struct.channel*, %struct.channel** %2, align 8
  %268 = getelementptr inbounds %struct.channel, %struct.channel* %267, i32 0, i32 21
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = and i32 %270, 15
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %281

273:                                              ; preds = %266
  %274 = load %struct.channel*, %struct.channel** %2, align 8
  %275 = getelementptr inbounds %struct.channel, %struct.channel* %274, i32 0, i32 21
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = and i32 %277, 15
  %279 = load %struct.channel*, %struct.channel** %2, align 8
  %280 = getelementptr inbounds %struct.channel, %struct.channel* %279, i32 0, i32 9
  store i32 %278, i32* %280, align 4
  br label %281

281:                                              ; preds = %273, %266
  br label %282

282:                                              ; preds = %181, %281, %257, %254, %238, %222, %204
  %283 = load %struct.channel*, %struct.channel** %2, align 8
  %284 = getelementptr inbounds %struct.channel, %struct.channel* %283, i32 0, i32 21
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %467

288:                                              ; preds = %282
  %289 = load %struct.channel*, %struct.channel** %2, align 8
  %290 = getelementptr inbounds %struct.channel, %struct.channel* %289, i32 0, i32 21
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp sgt i32 %292, 96
  br i1 %293, label %294, label %297

294:                                              ; preds = %288
  %295 = load %struct.channel*, %struct.channel** %2, align 8
  %296 = getelementptr inbounds %struct.channel, %struct.channel* %295, i32 0, i32 5
  store i32 0, i32* %296, align 4
  br label %466

297:                                              ; preds = %288
  %298 = load %struct.channel*, %struct.channel** %2, align 8
  %299 = getelementptr inbounds %struct.channel, %struct.channel* %298, i32 0, i32 21
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = and i32 %301, 240
  %303 = icmp eq i32 %302, 240
  br i1 %303, label %328, label %304

304:                                              ; preds = %297
  %305 = load %struct.channel*, %struct.channel** %2, align 8
  %306 = getelementptr inbounds %struct.channel, %struct.channel* %305, i32 0, i32 21
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = icmp eq i32 %308, 3
  br i1 %309, label %328, label %310

310:                                              ; preds = %304
  %311 = load %struct.channel*, %struct.channel** %2, align 8
  %312 = getelementptr inbounds %struct.channel, %struct.channel* %311, i32 0, i32 21
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = icmp eq i32 %314, 5
  br i1 %315, label %328, label %316

316:                                              ; preds = %310
  %317 = load %struct.channel*, %struct.channel** %2, align 8
  %318 = getelementptr inbounds %struct.channel, %struct.channel* %317, i32 0, i32 21
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = icmp eq i32 %320, 135
  br i1 %321, label %328, label %322

322:                                              ; preds = %316
  %323 = load %struct.channel*, %struct.channel** %2, align 8
  %324 = getelementptr inbounds %struct.channel, %struct.channel* %323, i32 0, i32 21
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = icmp eq i32 %326, 140
  br label %328

328:                                              ; preds = %322, %316, %310, %304, %297
  %329 = phi i1 [ true, %316 ], [ true, %310 ], [ true, %304 ], [ true, %297 ], [ %327, %322 ]
  %330 = zext i1 %329 to i32
  store i32 %330, i32* %5, align 4
  %331 = load i32, i32* %5, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %356, label %333

333:                                              ; preds = %328
  %334 = load %struct.channel*, %struct.channel** %2, align 8
  %335 = getelementptr inbounds %struct.channel, %struct.channel* %334, i32 0, i32 22
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = load %struct.channel*, %struct.channel** %2, align 8
  %340 = getelementptr inbounds %struct.channel, %struct.channel* %339, i32 0, i32 21
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %338, i64 %343
  %345 = load i32, i32* %344, align 4
  store i32 %345, i32* %8, align 4
  %346 = load %struct.channel*, %struct.channel** %2, align 8
  %347 = getelementptr inbounds %struct.channel, %struct.channel* %346, i32 0, i32 22
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 1
  %350 = load %struct.sample*, %struct.sample** %349, align 8
  %351 = load i32, i32* %8, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.sample, %struct.sample* %350, i64 %352
  %354 = load %struct.channel*, %struct.channel** %2, align 8
  %355 = getelementptr inbounds %struct.channel, %struct.channel* %354, i32 0, i32 20
  store %struct.sample* %353, %struct.sample** %355, align 8
  br label %356

356:                                              ; preds = %333, %328
  %357 = load %struct.channel*, %struct.channel** %2, align 8
  %358 = getelementptr inbounds %struct.channel, %struct.channel* %357, i32 0, i32 20
  %359 = load %struct.sample*, %struct.sample** %358, align 8
  %360 = getelementptr inbounds %struct.sample, %struct.sample* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  store i32 %361, i32* %7, align 4
  %362 = load %struct.channel*, %struct.channel** %2, align 8
  %363 = getelementptr inbounds %struct.channel, %struct.channel* %362, i32 0, i32 21
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = icmp eq i32 %365, 117
  br i1 %366, label %373, label %367

367:                                              ; preds = %356
  %368 = load %struct.channel*, %struct.channel** %2, align 8
  %369 = getelementptr inbounds %struct.channel, %struct.channel* %368, i32 0, i32 21
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = icmp eq i32 %371, 242
  br i1 %372, label %373, label %381

373:                                              ; preds = %367, %356
  %374 = load %struct.channel*, %struct.channel** %2, align 8
  %375 = getelementptr inbounds %struct.channel, %struct.channel* %374, i32 0, i32 21
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = and i32 %377, 15
  %379 = shl i32 %378, 4
  %380 = sub nsw i32 %379, 128
  store i32 %380, i32* %7, align 4
  br label %381

381:                                              ; preds = %373, %367
  %382 = load %struct.channel*, %struct.channel** %2, align 8
  %383 = getelementptr inbounds %struct.channel, %struct.channel* %382, i32 0, i32 21
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.channel*, %struct.channel** %2, align 8
  %387 = getelementptr inbounds %struct.channel, %struct.channel* %386, i32 0, i32 20
  %388 = load %struct.sample*, %struct.sample** %387, align 8
  %389 = getelementptr inbounds %struct.sample, %struct.sample* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 4
  %391 = add nsw i32 %385, %390
  store i32 %391, i32* %3, align 4
  %392 = load i32, i32* %3, align 4
  %393 = icmp slt i32 %392, 1
  br i1 %393, label %394, label %395

394:                                              ; preds = %381
  store i32 1, i32* %3, align 4
  br label %395

395:                                              ; preds = %394, %381
  %396 = load i32, i32* %3, align 4
  %397 = icmp sgt i32 %396, 120
  br i1 %397, label %398, label %399

398:                                              ; preds = %395
  store i32 120, i32* %3, align 4
  br label %399

399:                                              ; preds = %398, %395
  %400 = load i32, i32* %3, align 4
  %401 = shl i32 %400, 6
  %402 = load i32, i32* %7, align 4
  %403 = ashr i32 %402, 1
  %404 = add nsw i32 %401, %403
  store i32 %404, i32* %6, align 4
  %405 = load %struct.channel*, %struct.channel** %2, align 8
  %406 = getelementptr inbounds %struct.channel, %struct.channel* %405, i32 0, i32 19
  %407 = load %struct.TYPE_6__*, %struct.TYPE_6__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 0
  %409 = load %struct.TYPE_5__*, %struct.TYPE_5__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 1
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %399
  %414 = load i32, i32* %6, align 4
  %415 = sub nsw i32 7744, %414
  %416 = load %struct.channel*, %struct.channel** %2, align 8
  %417 = getelementptr inbounds %struct.channel, %struct.channel* %416, i32 0, i32 10
  store i32 %415, i32* %417, align 8
  br label %429

418:                                              ; preds = %399
  %419 = load i32, i32* %6, align 4
  %420 = load i32, i32* @FP_SHIFT, align 4
  %421 = shl i32 %419, %420
  %422 = sdiv i32 %421, -768
  %423 = call i32 @exp_2(i32 %422)
  %424 = mul nsw i32 29021, %423
  %425 = load i32, i32* @FP_SHIFT, align 4
  %426 = ashr i32 %424, %425
  %427 = load %struct.channel*, %struct.channel** %2, align 8
  %428 = getelementptr inbounds %struct.channel, %struct.channel* %427, i32 0, i32 10
  store i32 %426, i32* %428, align 8
  br label %429

429:                                              ; preds = %418, %413
  %430 = load i32, i32* %5, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %465, label %432

432:                                              ; preds = %429
  %433 = load %struct.channel*, %struct.channel** %2, align 8
  %434 = getelementptr inbounds %struct.channel, %struct.channel* %433, i32 0, i32 10
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.channel*, %struct.channel** %2, align 8
  %437 = getelementptr inbounds %struct.channel, %struct.channel* %436, i32 0, i32 2
  store i32 %435, i32* %437, align 8
  %438 = load %struct.channel*, %struct.channel** %2, align 8
  %439 = getelementptr inbounds %struct.channel, %struct.channel* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.channel*, %struct.channel** %2, align 8
  %442 = getelementptr inbounds %struct.channel, %struct.channel* %441, i32 0, i32 11
  store i32 %440, i32* %442, align 4
  %443 = load %struct.channel*, %struct.channel** %2, align 8
  %444 = getelementptr inbounds %struct.channel, %struct.channel* %443, i32 0, i32 18
  store i64 0, i64* %444, align 8
  %445 = load %struct.channel*, %struct.channel** %2, align 8
  %446 = getelementptr inbounds %struct.channel, %struct.channel* %445, i32 0, i32 12
  %447 = load i32, i32* %446, align 8
  %448 = icmp slt i32 %447, 4
  br i1 %448, label %449, label %452

449:                                              ; preds = %432
  %450 = load %struct.channel*, %struct.channel** %2, align 8
  %451 = getelementptr inbounds %struct.channel, %struct.channel* %450, i32 0, i32 17
  store i64 0, i64* %451, align 8
  br label %452

452:                                              ; preds = %449, %432
  %453 = load %struct.channel*, %struct.channel** %2, align 8
  %454 = getelementptr inbounds %struct.channel, %struct.channel* %453, i32 0, i32 13
  %455 = load i32, i32* %454, align 4
  %456 = icmp slt i32 %455, 4
  br i1 %456, label %457, label %460

457:                                              ; preds = %452
  %458 = load %struct.channel*, %struct.channel** %2, align 8
  %459 = getelementptr inbounds %struct.channel, %struct.channel* %458, i32 0, i32 16
  store i64 0, i64* %459, align 8
  br label %460

460:                                              ; preds = %457, %452
  %461 = load %struct.channel*, %struct.channel** %2, align 8
  %462 = getelementptr inbounds %struct.channel, %struct.channel* %461, i32 0, i32 14
  store i64 0, i64* %462, align 8
  %463 = load %struct.channel*, %struct.channel** %2, align 8
  %464 = getelementptr inbounds %struct.channel, %struct.channel* %463, i32 0, i32 15
  store i64 0, i64* %464, align 8
  br label %465

465:                                              ; preds = %460, %429
  br label %466

466:                                              ; preds = %465, %294
  br label %467

467:                                              ; preds = %466, %282
  ret void
}

declare dso_local i32 @channel_vibrato(%struct.channel*, i32) #1

declare dso_local i32 @exp_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
