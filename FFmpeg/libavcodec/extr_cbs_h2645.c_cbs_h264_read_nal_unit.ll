; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_h2645.c_cbs_h264_read_nal_unit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_h2645.c_cbs_h264_read_nal_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i32, i32, %struct.TYPE_33__*, i32*, i32 }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32 }

@cbs_h264_free_pps = common dso_local global i32 0, align 4
@cbs_h264_free_slice = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Deleted %d trailing zeroes from slice data.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cbs_h264_free_sei = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*, %struct.TYPE_34__*)* @cbs_h264_read_nal_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_h264_read_nal_unit(%struct.TYPE_35__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  %14 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 8, %19
  %21 = call i32 @init_get_bits(i32* %6, i32* %16, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %294

26:                                               ; preds = %2
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %290 [
    i32 129, label %30
    i32 128, label %58
    i32 132, label %77
    i32 130, label %105
    i32 133, label %105
    i32 137, label %105
    i32 138, label %208
    i32 131, label %227
    i32 134, label %246
    i32 136, label %265
    i32 135, label %265
  ]

30:                                               ; preds = %26
  %31 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %33 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_35__* %31, %struct.TYPE_34__* %32, i32 20, i32* null)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %294

38:                                               ; preds = %30
  %39 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %40, align 8
  store %struct.TYPE_33__* %41, %struct.TYPE_33__** %8, align 8
  %42 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %44 = call i32 @cbs_h264_read_sps(%struct.TYPE_35__* %42, i32* %6, %struct.TYPE_33__* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %294

49:                                               ; preds = %38
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %52 = call i32 @cbs_h264_replace_sps(%struct.TYPE_35__* %50, %struct.TYPE_34__* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %294

57:                                               ; preds = %49
  br label %293

58:                                               ; preds = %26
  %59 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %61 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_35__* %59, %struct.TYPE_34__* %60, i32 4, i32* null)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %294

66:                                               ; preds = %58
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %68 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %69, align 8
  %71 = call i32 @cbs_h264_read_sps_extension(%struct.TYPE_35__* %67, i32* %6, %struct.TYPE_33__* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %294

76:                                               ; preds = %66
  br label %293

77:                                               ; preds = %26
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %80 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_35__* %78, %struct.TYPE_34__* %79, i32 20, i32* @cbs_h264_free_pps)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %294

85:                                               ; preds = %77
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %87, align 8
  store %struct.TYPE_33__* %88, %struct.TYPE_33__** %9, align 8
  %89 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %91 = call i32 @cbs_h264_read_pps(%struct.TYPE_35__* %89, i32* %6, %struct.TYPE_33__* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %294

96:                                               ; preds = %85
  %97 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %98 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %99 = call i32 @cbs_h264_replace_pps(%struct.TYPE_35__* %97, %struct.TYPE_34__* %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %294

104:                                              ; preds = %96
  br label %293

105:                                              ; preds = %26, %26, %26
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %108 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_35__* %106, %struct.TYPE_34__* %107, i32 20, i32* @cbs_h264_free_slice)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %294

113:                                              ; preds = %105
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %115, align 8
  store %struct.TYPE_33__* %116, %struct.TYPE_33__** %10, align 8
  %117 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 4
  %120 = call i32 @cbs_h264_read_slice_header(%struct.TYPE_35__* %117, i32* %6, i32* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %3, align 4
  br label %294

125:                                              ; preds = %113
  %126 = call i32 @get_bits_count(i32* %6)
  store i32 %126, i32* %11, align 4
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %12, align 4
  %130 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %173, label %139

139:                                              ; preds = %125
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %160, %139
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %140
  %145 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = sub nsw i32 %148, %149
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  br label %157

157:                                              ; preds = %144, %140
  %158 = phi i1 [ false, %140 ], [ %156, %144 ]
  br i1 %158, label %159, label %163

159:                                              ; preds = %157
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %140

163:                                              ; preds = %157
  %164 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @AV_LOG_DEBUG, align 4
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @av_log(i32 %166, i32 %167, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %12, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %163, %125
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %11, align 4
  %176 = sdiv i32 %175, 8
  %177 = sub nsw i32 %174, %176
  %178 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @av_buffer_ref(i32 %182)
  %184 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %173
  %191 = load i32, i32* @ENOMEM, align 4
  %192 = call i32 @AVERROR(i32 %191)
  store i32 %192, i32* %3, align 4
  br label %294

193:                                              ; preds = %173
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sdiv i32 %197, 8
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = ptrtoint i32* %200 to i32
  %202 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %11, align 4
  %205 = srem i32 %204, 8
  %206 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  br label %293

208:                                              ; preds = %26
  %209 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %210 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %211 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_35__* %209, %struct.TYPE_34__* %210, i32 4, i32* null)
  store i32 %211, i32* %7, align 4
  %212 = load i32, i32* %7, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %208
  %215 = load i32, i32* %7, align 4
  store i32 %215, i32* %3, align 4
  br label %294

216:                                              ; preds = %208
  %217 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %218 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %219, align 8
  %221 = call i32 @cbs_h264_read_aud(%struct.TYPE_35__* %217, i32* %6, %struct.TYPE_33__* %220)
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* %7, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = load i32, i32* %7, align 4
  store i32 %225, i32* %3, align 4
  br label %294

226:                                              ; preds = %216
  br label %293

227:                                              ; preds = %26
  %228 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %230 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_35__* %228, %struct.TYPE_34__* %229, i32 4, i32* @cbs_h264_free_sei)
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %7, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  %234 = load i32, i32* %7, align 4
  store i32 %234, i32* %3, align 4
  br label %294

235:                                              ; preds = %227
  %236 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %237 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_33__*, %struct.TYPE_33__** %238, align 8
  %240 = call i32 @cbs_h264_read_sei(%struct.TYPE_35__* %236, i32* %6, %struct.TYPE_33__* %239)
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %235
  %244 = load i32, i32* %7, align 4
  store i32 %244, i32* %3, align 4
  br label %294

245:                                              ; preds = %235
  br label %293

246:                                              ; preds = %26
  %247 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %248 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %249 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_35__* %247, %struct.TYPE_34__* %248, i32 4, i32* null)
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  %253 = load i32, i32* %7, align 4
  store i32 %253, i32* %3, align 4
  br label %294

254:                                              ; preds = %246
  %255 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %256 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_33__*, %struct.TYPE_33__** %257, align 8
  %259 = call i32 @cbs_h264_read_filler(%struct.TYPE_35__* %255, i32* %6, %struct.TYPE_33__* %258)
  store i32 %259, i32* %7, align 4
  %260 = load i32, i32* %7, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %254
  %263 = load i32, i32* %7, align 4
  store i32 %263, i32* %3, align 4
  br label %294

264:                                              ; preds = %254
  br label %293

265:                                              ; preds = %26, %26
  %266 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %267 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %268 = call i32 @ff_cbs_alloc_unit_content(%struct.TYPE_35__* %266, %struct.TYPE_34__* %267, i32 4, i32* null)
  store i32 %268, i32* %7, align 4
  %269 = load i32, i32* %7, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = load i32, i32* %7, align 4
  store i32 %272, i32* %3, align 4
  br label %294

273:                                              ; preds = %265
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %276, 136
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32 (%struct.TYPE_35__*, i32*, %struct.TYPE_33__*)* @cbs_h264_read_end_of_sequence, i32 (%struct.TYPE_35__*, i32*, %struct.TYPE_33__*)* @cbs_h264_read_end_of_stream
  %280 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %281 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %282, align 8
  %284 = call i32 %279(%struct.TYPE_35__* %280, i32* %6, %struct.TYPE_33__* %283)
  store i32 %284, i32* %7, align 4
  %285 = load i32, i32* %7, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %273
  %288 = load i32, i32* %7, align 4
  store i32 %288, i32* %3, align 4
  br label %294

289:                                              ; preds = %273
  br label %293

290:                                              ; preds = %26
  %291 = load i32, i32* @ENOSYS, align 4
  %292 = call i32 @AVERROR(i32 %291)
  store i32 %292, i32* %3, align 4
  br label %294

293:                                              ; preds = %289, %264, %245, %226, %193, %104, %76, %57
  store i32 0, i32* %3, align 4
  br label %294

294:                                              ; preds = %293, %290, %287, %271, %262, %252, %243, %233, %224, %214, %190, %123, %111, %102, %94, %83, %74, %64, %55, %47, %36, %24
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @ff_cbs_alloc_unit_content(%struct.TYPE_35__*, %struct.TYPE_34__*, i32, i32*) #1

declare dso_local i32 @cbs_h264_read_sps(%struct.TYPE_35__*, i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @cbs_h264_replace_sps(%struct.TYPE_35__*, %struct.TYPE_34__*) #1

declare dso_local i32 @cbs_h264_read_sps_extension(%struct.TYPE_35__*, i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @cbs_h264_read_pps(%struct.TYPE_35__*, i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @cbs_h264_replace_pps(%struct.TYPE_35__*, %struct.TYPE_34__*) #1

declare dso_local i32 @cbs_h264_read_slice_header(%struct.TYPE_35__*, i32*, i32*) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @av_buffer_ref(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @cbs_h264_read_aud(%struct.TYPE_35__*, i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @cbs_h264_read_sei(%struct.TYPE_35__*, i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @cbs_h264_read_filler(%struct.TYPE_35__*, i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @cbs_h264_read_end_of_sequence(%struct.TYPE_35__*, i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @cbs_h264_read_end_of_stream(%struct.TYPE_35__*, i32*, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
