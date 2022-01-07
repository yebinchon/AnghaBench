; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_slice.c_h264_slice_header_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_slice.c_h264_slice_header_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_19__*, i64*, i64, %struct.TYPE_17__*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64*, i64, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not allocate memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported bit depth %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@HAVE_THREADS = common dso_local global i32 0, align 4
@FF_THREAD_SLICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"context_init() failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @h264_slice_header_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_slice_header_init(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 22
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %4, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ff_set_sar(%struct.TYPE_19__* %15, i32 %18)
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 21
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 20
  %29 = call i32 @av_pix_fmt_get_chroma_sub_sample(i32 %24, i32* %26, i32* %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %1
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %40, 44
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %43, 2
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %34
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %58, %63
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @av_reduce(i32* %50, i32* %55, i32 %64, i32 %65, i32 1073741824)
  br label %67

67:                                               ; preds = %45, %1
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = call i32 @ff_h264_free_tables(%struct.TYPE_18__* %68)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 19
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = call i32 @init_scan_tables(%struct.TYPE_18__* %74)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = call i32 @ff_h264_alloc_tables(%struct.TYPE_18__* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %67
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %83, i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %301

86:                                               ; preds = %67
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %89, 8
  br i1 %90, label %106, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 14
  br i1 %95, label %106, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 11
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 13
  br i1 %105, label %106, label %116

106:                                              ; preds = %101, %96, %91, %86
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = load i32, i32* @AV_LOG_ERROR, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %109, i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %115, i32* %6, align 4
  br label %301

116:                                              ; preds = %101
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  store i32 %119, i32* %123, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 2
  store i32 %119, i32* %125, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 18
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %133, 8
  %135 = zext i1 %134 to i32
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 17
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 16
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ff_h264dsp_init(i32* %149, i32 %152, i32 %155)
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 15
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @ff_h264chroma_init(i32* %158, i32 %161)
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 14
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ff_h264qpel_init(i32* %164, i32 %167)
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 13
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ff_h264_pred_init(i32* %170, i32 %175, i32 %178, i32 %181)
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 12
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @ff_videodsp_init(i32* %184, i32 %187)
  %189 = load i32, i32* @HAVE_THREADS, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %116
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 8
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @FF_THREAD_SLICE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %216, label %200

200:                                              ; preds = %191, %116
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 11
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i64 0
  %206 = call i32 @ff_h264_slice_context_init(%struct.TYPE_18__* %201, %struct.TYPE_17__* %205)
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* %6, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %200
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 8
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %211, align 8
  %213 = load i32, i32* @AV_LOG_ERROR, align 4
  %214 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %212, i32 %213, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %301

215:                                              ; preds = %200
  br label %298

216:                                              ; preds = %191
  store i32 0, i32* %5, align 4
  br label %217

217:                                              ; preds = %294, %216
  %218 = load i32, i32* %5, align 4
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %297

223:                                              ; preds = %217
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 11
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i64 %228
  store %struct.TYPE_17__* %229, %struct.TYPE_17__** %8, align 8
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 2
  store %struct.TYPE_18__* %230, %struct.TYPE_18__** %232, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 10
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* %5, align 4
  %237 = mul nsw i32 %236, 8
  %238 = mul nsw i32 %237, 2
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = mul nsw i32 %238, %241
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %235, %243
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 1
  store i64 %244, i64* %246, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 9
  %249 = load i64*, i64** %248, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 0
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = mul nsw i32 %252, 8
  %254 = mul nsw i32 %253, 2
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 8
  %258 = mul nsw i32 %254, %257
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %251, %259
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  %263 = load i64*, i64** %262, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 0
  store i64 %260, i64* %264, align 8
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 9
  %267 = load i64*, i64** %266, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 1
  %269 = load i64, i64* %268, align 8
  %270 = load i32, i32* %5, align 4
  %271 = mul nsw i32 %270, 8
  %272 = mul nsw i32 %271, 2
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = mul nsw i32 %272, %275
  %277 = sext i32 %276 to i64
  %278 = add nsw i64 %269, %277
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 0
  %281 = load i64*, i64** %280, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 1
  store i64 %278, i64* %282, align 8
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %285 = call i32 @ff_h264_slice_context_init(%struct.TYPE_18__* %283, %struct.TYPE_17__* %284)
  store i32 %285, i32* %6, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %223
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 8
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %289, align 8
  %291 = load i32, i32* @AV_LOG_ERROR, align 4
  %292 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %290, i32 %291, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %301

293:                                              ; preds = %223
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %5, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %5, align 4
  br label %217

297:                                              ; preds = %217
  br label %298

298:                                              ; preds = %297, %215
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 7
  store i32 1, i32* %300, align 4
  store i32 0, i32* %2, align 4
  br label %307

301:                                              ; preds = %287, %209, %106, %80
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %303 = call i32 @ff_h264_free_tables(%struct.TYPE_18__* %302)
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 7
  store i32 0, i32* %305, align 4
  %306 = load i32, i32* %6, align 4
  store i32 %306, i32* %2, align 4
  br label %307

307:                                              ; preds = %301, %298
  %308 = load i32, i32* %2, align 4
  ret i32 %308
}

declare dso_local i32 @ff_set_sar(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @av_pix_fmt_get_chroma_sub_sample(i32, i32*, i32*) #1

declare dso_local i32 @av_reduce(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ff_h264_free_tables(%struct.TYPE_18__*) #1

declare dso_local i32 @init_scan_tables(%struct.TYPE_18__*) #1

declare dso_local i32 @ff_h264_alloc_tables(%struct.TYPE_18__*) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, ...) #1

declare dso_local i32 @ff_h264dsp_init(i32*, i32, i32) #1

declare dso_local i32 @ff_h264chroma_init(i32*, i32) #1

declare dso_local i32 @ff_h264qpel_init(i32*, i32) #1

declare dso_local i32 @ff_h264_pred_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ff_videodsp_init(i32*, i32) #1

declare dso_local i32 @ff_h264_slice_context_init(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
