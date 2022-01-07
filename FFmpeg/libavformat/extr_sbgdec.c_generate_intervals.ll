; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_generate_intervals.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_generate_intervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_script = type { i32, i32, i32, %struct.sbg_script_event*, %struct.TYPE_6__* }
%struct.sbg_script_event = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ws_intervals = type { i32 }

@DAY_TS = common dso_local global i32 0, align 4
@AV_TIME_BASE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Completely silent script.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sbg_script*, i32, %struct.ws_intervals*)* @generate_intervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_intervals(i8* %0, %struct.sbg_script* %1, i32 %2, %struct.ws_intervals* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sbg_script*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ws_intervals*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sbg_script_event, align 8
  %12 = alloca %struct.sbg_script_event*, align 8
  %13 = alloca %struct.sbg_script_event*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.sbg_script* %1, %struct.sbg_script** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ws_intervals* %3, %struct.ws_intervals** %9, align 8
  %17 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %18 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %10, align 4
  %21 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %22 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %21, i32 0, i32 3
  %23 = load %struct.sbg_script_event*, %struct.sbg_script_event** %22, align 8
  %24 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %25 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %23, i64 %28
  %30 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %33 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %32, i32 0, i32 3
  %34 = load %struct.sbg_script_event*, %struct.sbg_script_event** %33, align 8
  %35 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %34, i64 0
  %36 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %31, %37
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @DAY_TS, align 4
  %41 = sub nsw i32 %40, 1
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* @DAY_TS, align 4
  %44 = sdiv i32 %42, %43
  %45 = load i32, i32* @DAY_TS, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @DAY_TS, align 4
  %49 = call i8* @FFMAX(i32 %47, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %106, %4
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %54 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %109

57:                                               ; preds = %51
  %58 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %59 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %58, i32 0, i32 3
  %60 = load %struct.sbg_script_event*, %struct.sbg_script_event** %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %60, i64 %62
  store %struct.sbg_script_event* %63, %struct.sbg_script_event** %12, align 8
  %64 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %65 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %64, i32 0, i32 3
  %66 = load %struct.sbg_script_event*, %struct.sbg_script_event** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %70 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = srem i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %66, i64 %73
  store %struct.sbg_script_event* %74, %struct.sbg_script_event** %13, align 8
  %75 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %76 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %79 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %81 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %57
  %86 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %87 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  br label %102

89:                                               ; preds = %57
  %90 = load %struct.sbg_script_event*, %struct.sbg_script_event** %13, align 8
  %91 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %94 = load %struct.sbg_script_event*, %struct.sbg_script_event** %13, align 8
  %95 = icmp ult %struct.sbg_script_event* %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %14, align 4
  br label %99

99:                                               ; preds = %97, %96
  %100 = phi i32 [ 0, %96 ], [ %98, %97 ]
  %101 = add nsw i32 %92, %100
  br label %102

102:                                              ; preds = %99, %85
  %103 = phi i32 [ %88, %85 ], [ %101, %99 ]
  %104 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %105 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %51

109:                                              ; preds = %51
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %178, %109
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %113 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %181

116:                                              ; preds = %110
  %117 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %118 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %117, i32 0, i32 3
  %119 = load %struct.sbg_script_event*, %struct.sbg_script_event** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %119, i64 %121
  store %struct.sbg_script_event* %122, %struct.sbg_script_event** %12, align 8
  %123 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %124 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %123, i32 0, i32 3
  %125 = load %struct.sbg_script_event*, %struct.sbg_script_event** %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  %128 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %129 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = srem i32 %127, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %125, i64 %132
  store %struct.sbg_script_event* %133, %struct.sbg_script_event** %13, align 8
  %134 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %135 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %163, label %139

139:                                              ; preds = %116
  %140 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %141 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %144 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sub nsw i32 %145, %146
  %148 = call i8* @FFMAX(i32 %142, i32 %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %151 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.sbg_script_event*, %struct.sbg_script_event** %13, align 8
  %153 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.sbg_script_event*, %struct.sbg_script_event** %13, align 8
  %156 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %157, %158
  %160 = call i32 @FFMIN(i32 %154, i32 %159)
  %161 = load %struct.sbg_script_event*, %struct.sbg_script_event** %13, align 8
  %162 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %139, %116
  %164 = load %struct.sbg_script_event*, %struct.sbg_script_event** %13, align 8
  %165 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %168 = load %struct.sbg_script_event*, %struct.sbg_script_event** %13, align 8
  %169 = icmp ult %struct.sbg_script_event* %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  br label %173

171:                                              ; preds = %163
  %172 = load i32, i32* %14, align 4
  br label %173

173:                                              ; preds = %171, %170
  %174 = phi i32 [ 0, %170 ], [ %172, %171 ]
  %175 = add nsw i32 %166, %174
  %176 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %177 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %173
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %15, align 4
  br label %110

181:                                              ; preds = %110
  %182 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %183 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %182, i32 0, i32 3
  %184 = load %struct.sbg_script_event*, %struct.sbg_script_event** %183, align 8
  %185 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %186 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %184, i64 %189
  %191 = bitcast %struct.sbg_script_event* %11 to i8*
  %192 = bitcast %struct.sbg_script_event* %190 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %191, i8* align 8 %192, i64 24, i1 false)
  %193 = load i32, i32* %14, align 4
  %194 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %11, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, %193
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* %14, align 4
  %198 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %11, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = sub nsw i32 %199, %197
  store i32 %200, i32* %198, align 8
  %201 = load i32, i32* %14, align 4
  %202 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %11, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %203, %201
  store i32 %204, i32* %202, align 4
  store i32 -1, i32* %15, align 4
  br label %205

205:                                              ; preds = %251, %181
  %206 = load i32, i32* %15, align 4
  %207 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %208 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %254

211:                                              ; preds = %205
  %212 = load i32, i32* %15, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %222

215:                                              ; preds = %211
  %216 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %217 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %216, i32 0, i32 3
  %218 = load %struct.sbg_script_event*, %struct.sbg_script_event** %217, align 8
  %219 = load i32, i32* %15, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %218, i64 %220
  br label %222

222:                                              ; preds = %215, %214
  %223 = phi %struct.sbg_script_event* [ %11, %214 ], [ %221, %215 ]
  store %struct.sbg_script_event* %223, %struct.sbg_script_event** %12, align 8
  %224 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %225 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @AV_TIME_BASE, align 4
  %229 = call i8* @av_rescale(i32 %226, i32 %227, i32 %228)
  %230 = ptrtoint i8* %229 to i32
  %231 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %232 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %234 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @AV_TIME_BASE, align 4
  %238 = call i8* @av_rescale(i32 %235, i32 %236, i32 %237)
  %239 = ptrtoint i8* %238 to i32
  %240 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %241 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  %242 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %243 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @AV_TIME_BASE, align 4
  %247 = call i8* @av_rescale(i32 %244, i32 %245, i32 %246)
  %248 = ptrtoint i8* %247 to i32
  %249 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %250 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %249, i32 0, i32 3
  store i32 %248, i32* %250, align 4
  br label %251

251:                                              ; preds = %222
  %252 = load i32, i32* %15, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %15, align 4
  br label %205

254:                                              ; preds = %205
  store i32 0, i32* %15, align 4
  br label %255

255:                                              ; preds = %278, %254
  %256 = load i32, i32* %15, align 4
  %257 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %258 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %281

261:                                              ; preds = %255
  %262 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %263 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %262, i32 0, i32 4
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = load i32, i32* %15, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  store i32 -1, i32* %269, align 4
  %270 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %271 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %270, i32 0, i32 4
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %271, align 8
  %273 = load i32, i32* %15, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  store i32 -1, i32* %277, align 4
  br label %278

278:                                              ; preds = %261
  %279 = load i32, i32* %15, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %15, align 4
  br label %255

281:                                              ; preds = %255
  store i32 -1, i32* %15, align 4
  br label %282

282:                                              ; preds = %333, %281
  %283 = load i32, i32* %15, align 4
  %284 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %285 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp slt i32 %283, %286
  br i1 %287, label %288, label %336

288:                                              ; preds = %282
  %289 = load i32, i32* %15, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  br label %299

292:                                              ; preds = %288
  %293 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %294 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %293, i32 0, i32 3
  %295 = load %struct.sbg_script_event*, %struct.sbg_script_event** %294, align 8
  %296 = load i32, i32* %15, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %295, i64 %297
  br label %299

299:                                              ; preds = %292, %291
  %300 = phi %struct.sbg_script_event* [ %11, %291 ], [ %298, %292 ]
  store %struct.sbg_script_event* %300, %struct.sbg_script_event** %12, align 8
  %301 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %302 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %301, i32 0, i32 3
  %303 = load %struct.sbg_script_event*, %struct.sbg_script_event** %302, align 8
  %304 = load i32, i32* %15, align 4
  %305 = add nsw i32 %304, 1
  %306 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %307 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = srem i32 %305, %308
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %303, i64 %310
  store %struct.sbg_script_event* %311, %struct.sbg_script_event** %13, align 8
  %312 = load i8*, i8** %6, align 8
  %313 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %314 = load %struct.ws_intervals*, %struct.ws_intervals** %9, align 8
  %315 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %316 = call i32 @generate_plateau(i8* %312, %struct.sbg_script* %313, %struct.ws_intervals* %314, %struct.sbg_script_event* %315)
  store i32 %316, i32* %16, align 4
  %317 = load i32, i32* %16, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %299
  %320 = load i32, i32* %16, align 4
  store i32 %320, i32* %5, align 4
  br label %346

321:                                              ; preds = %299
  %322 = load i8*, i8** %6, align 8
  %323 = load %struct.sbg_script*, %struct.sbg_script** %7, align 8
  %324 = load %struct.ws_intervals*, %struct.ws_intervals** %9, align 8
  %325 = load %struct.sbg_script_event*, %struct.sbg_script_event** %12, align 8
  %326 = load %struct.sbg_script_event*, %struct.sbg_script_event** %13, align 8
  %327 = call i32 @generate_transition(i8* %322, %struct.sbg_script* %323, %struct.ws_intervals* %324, %struct.sbg_script_event* %325, %struct.sbg_script_event* %326)
  store i32 %327, i32* %16, align 4
  %328 = load i32, i32* %16, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %321
  %331 = load i32, i32* %16, align 4
  store i32 %331, i32* %5, align 4
  br label %346

332:                                              ; preds = %321
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %15, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %15, align 4
  br label %282

336:                                              ; preds = %282
  %337 = load %struct.ws_intervals*, %struct.ws_intervals** %9, align 8
  %338 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %345, label %341

341:                                              ; preds = %336
  %342 = load i8*, i8** %6, align 8
  %343 = load i32, i32* @AV_LOG_WARNING, align 4
  %344 = call i32 @av_log(i8* %342, i32 %343, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %345

345:                                              ; preds = %341, %336
  store i32 0, i32* %5, align 4
  br label %346

346:                                              ; preds = %345, %330, %319
  %347 = load i32, i32* %5, align 4
  ret i32 %347
}

declare dso_local i8* @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @av_rescale(i32, i32, i32) #1

declare dso_local i32 @generate_plateau(i8*, %struct.sbg_script*, %struct.ws_intervals*, %struct.sbg_script_event*) #1

declare dso_local i32 @generate_transition(i8*, %struct.sbg_script*, %struct.ws_intervals*, %struct.sbg_script_event*, %struct.sbg_script_event*) #1

declare dso_local i32 @av_log(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
