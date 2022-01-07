; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_repeatfields.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_repeatfields.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_18__** }
%struct.TYPE_16__ = type { i32, i32, i32*, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, i64*, i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Unexpected field flags: state=%d top_field_first=%d repeat_first_field=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %6, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %22, i64 0
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %7, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %8, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = icmp ne %struct.TYPE_17__* %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %2
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = call %struct.TYPE_17__* @av_frame_clone(%struct.TYPE_17__* %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 4
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %39, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = icmp ne %struct.TYPE_17__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %342

47:                                               ; preds = %35
  %48 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %2
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %9, align 8
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59, %53
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67, %59
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = load i32, i32* @AV_LOG_WARNING, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @av_log(%struct.TYPE_19__* %73, i32 %74, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %75, i64 %78, i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = xor i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %72, %67, %64
  %86 = load i32, i32* %12, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %171

88:                                               ; preds = %85
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = call %struct.TYPE_17__* @av_frame_clone(%struct.TYPE_17__* %89)
  store %struct.TYPE_17__* %90, %struct.TYPE_17__** %13, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %92 = icmp ne %struct.TYPE_17__* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = call i32 @AVERROR(i32 %94)
  store i32 %95, i32* %3, align 4
  br label %342

96:                                               ; preds = %88
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %99 = call i32 @ff_filter_frame(%struct.TYPE_18__* %97, %struct.TYPE_17__* %98)
  store i32 %99, i32* %10, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %170

104:                                              ; preds = %96
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %106 = call i32 @av_frame_make_writable(%struct.TYPE_17__* %105)
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @update_pts(%struct.TYPE_18__* %107, %struct.TYPE_17__* %108, i32 %111, i32 2)
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %166, %104
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %169

119:                                              ; preds = %113
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %133, 2
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %148, 2
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sdiv i32 %163, 2
  %165 = call i32 @av_image_copy_plane(i64 %126, i32 %134, i64 %141, i32 %149, i32 %156, i32 %164)
  br label %166

166:                                              ; preds = %119
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  br label %113

169:                                              ; preds = %113
  store i32 1, i32* %12, align 4
  br label %170

170:                                              ; preds = %169, %96
  br label %336

171:                                              ; preds = %85
  store i32 0, i32* %11, align 4
  br label %172

172:                                              ; preds = %245, %171
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %248

178:                                              ; preds = %172
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %180 = call i32 @av_frame_make_writable(%struct.TYPE_17__* %179)
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %187, %195
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %203, 2
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 1
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %211, %219
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 %227, 2
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %11, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = sdiv i32 %242, 2
  %244 = call i32 @av_image_copy_plane(i64 %196, i32 %204, i64 %220, i32 %228, i32 %235, i32 %243)
  br label %245

245:                                              ; preds = %178
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %11, align 4
  br label %172

248:                                              ; preds = %172
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %251 = call %struct.TYPE_17__* @av_frame_clone(%struct.TYPE_17__* %250)
  %252 = call i32 @ff_filter_frame(%struct.TYPE_18__* %249, %struct.TYPE_17__* %251)
  store i32 %252, i32* %10, align 4
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %269

257:                                              ; preds = %248
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %259 = call %struct.TYPE_17__* @av_frame_clone(%struct.TYPE_17__* %258)
  store %struct.TYPE_17__* %259, %struct.TYPE_17__** %14, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %261 = icmp ne %struct.TYPE_17__* %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %257
  %263 = load i32, i32* @ENOMEM, align 4
  %264 = call i32 @AVERROR(i32 %263)
  store i32 %264, i32* %3, align 4
  br label %342

265:                                              ; preds = %257
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %268 = call i32 @ff_filter_frame(%struct.TYPE_18__* %266, %struct.TYPE_17__* %267)
  store i32 %268, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %335

269:                                              ; preds = %248
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %271 = call i32 @av_frame_make_writable(%struct.TYPE_17__* %270)
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @update_pts(%struct.TYPE_18__* %272, %struct.TYPE_17__* %273, i32 %276, i32 1)
  store i32 0, i32* %11, align 4
  br label %278

278:                                              ; preds = %331, %269
  %279 = load i32, i32* %11, align 4
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp slt i32 %279, %282
  br i1 %283, label %284, label %334

284:                                              ; preds = %278
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 1
  %287 = load i64*, i64** %286, align 8
  %288 = load i32, i32* %11, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %287, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %11, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = mul nsw i32 %298, 2
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 1
  %302 = load i64*, i64** %301, align 8
  %303 = load i32, i32* %11, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i64, i64* %302, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %11, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = mul nsw i32 %313, 2
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 3
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %11, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 2
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %11, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = sdiv i32 %328, 2
  %330 = call i32 @av_image_copy_plane(i64 %291, i32 %299, i64 %306, i32 %314, i32 %321, i32 %329)
  br label %331

331:                                              ; preds = %284
  %332 = load i32, i32* %11, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %11, align 4
  br label %278

334:                                              ; preds = %278
  br label %335

335:                                              ; preds = %334, %265
  br label %336

336:                                              ; preds = %335, %170
  %337 = load i32, i32* %12, align 4
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 0
  store i32 %337, i32* %339, align 8
  %340 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %341 = load i32, i32* %10, align 4
  store i32 %341, i32* %3, align 4
  br label %342

342:                                              ; preds = %336, %262, %93, %44
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

declare dso_local %struct.TYPE_17__* @av_frame_clone(%struct.TYPE_17__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_frame_make_writable(%struct.TYPE_17__*) #1

declare dso_local i32 @update_pts(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @av_image_copy_plane(i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
