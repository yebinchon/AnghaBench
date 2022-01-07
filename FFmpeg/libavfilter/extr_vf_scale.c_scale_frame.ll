; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale.c_scale_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale.c_scale_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64, i32, i32, %struct.TYPE_25__*, %struct.TYPE_27__ }
%struct.TYPE_25__ = type { %struct.TYPE_28__**, %struct.TYPE_32__**, %struct.TYPE_29__* }
%struct.TYPE_28__ = type { i64, i32, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_29__ = type { i64, i32, i32, i64, i32, i64, i64*, i64, i64, i64, i32, i32 }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_31__ = type { i32, i32, i64, i32, i64, %struct.TYPE_26__, i32, i64* }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_30__ = type { i32, i32 }

@AVCOL_SPC_YCGCO = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Detected unsupported YCgCo colorspace.\0A\00", align 1
@EVAL_MODE_INIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AV_PIX_FMT_BGR8 = common dso_local global i64 0, align 8
@AVCOL_RANGE_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCOL_SPC_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCOL_RANGE_JPEG = common dso_local global i32 0, align 4
@AVCOL_RANGE_MPEG = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_31__**)* @scale_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scale_frame(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1, %struct.TYPE_31__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_31__**, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %5, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_31__** %2, %struct.TYPE_31__*** %7, align 8
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  store %struct.TYPE_29__* %31, %struct.TYPE_29__** %8, align 8
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %36, i64 0
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %37, align 8
  store %struct.TYPE_32__* %38, %struct.TYPE_32__** %9, align 8
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.TYPE_30__* @av_pix_fmt_desc_get(i64 %41)
  store %struct.TYPE_30__* %42, %struct.TYPE_30__** %11, align 8
  %43 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %43, align 8
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AVCOL_SPC_YCGCO, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %3
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %51, align 8
  %53 = load i32, i32* @AV_LOG_WARNING, align 4
  %54 = call i32 @av_log(%struct.TYPE_25__* %52, i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %49, %3
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %99, label %63

63:                                               ; preds = %55
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %99, label %71

71:                                               ; preds = %63
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %99, label %79

79:                                               ; preds = %71
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %83, %87
  br i1 %88, label %99, label %89

89:                                               ; preds = %79
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %93, %97
  br i1 %98, label %99, label %188

99:                                               ; preds = %89, %79, %71, %63, %55
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @EVAL_MODE_INIT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @snprintf(i8* %106, i32 31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %113 = call i32 @av_opt_set(%struct.TYPE_29__* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %112, i32 0)
  %114 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %115 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @snprintf(i8* %114, i32 31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %121 = call i32 @av_opt_set(%struct.TYPE_29__* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %120, i32 0)
  br label %122

122:                                              ; preds = %105, %99
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %130, i64 0
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 0
  store i64 %125, i64* %133, align 8
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %141, i64 0
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 1
  store i32 %136, i32* %144, align 8
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %152, i64 0
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 2
  store i32 %147, i32* %155, align 4
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %164, i64 0
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  store i64 %159, i64* %168, align 8
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %177, i64 0
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 1
  store i64 %172, i64* %181, align 8
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %183 = call i32 @config_props(%struct.TYPE_32__* %182)
  store i32 %183, i32* %14, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %122
  %186 = load i32, i32* %14, align 4
  store i32 %186, i32* %4, align 4
  br label %561

187:                                              ; preds = %122
  br label %188

188:                                              ; preds = %187, %89
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %188
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %195 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__* %194, %struct.TYPE_31__** %195, align 8
  store i32 0, i32* %4, align 4
  br label %561

196:                                              ; preds = %188
  %197 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i32 0, i32 11
  store i32 %199, i32* %201, align 4
  %202 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 10
  store i32 %204, i32* %206, align 8
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = call %struct.TYPE_31__* @ff_get_video_buffer(%struct.TYPE_32__* %207, i32 %210, i32 %213)
  store %struct.TYPE_31__* %214, %struct.TYPE_31__** %10, align 8
  %215 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %216 = icmp ne %struct.TYPE_31__* %215, null
  br i1 %216, label %221, label %217

217:                                              ; preds = %196
  %218 = call i32 @av_frame_free(%struct.TYPE_31__** %6)
  %219 = load i32, i32* @ENOMEM, align 4
  %220 = call i32 @AVERROR(i32 %219)
  store i32 %220, i32* %4, align 4
  br label %561

221:                                              ; preds = %196
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %223 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__* %222, %struct.TYPE_31__** %223, align 8
  %224 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %225 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %226 = call i32 @av_frame_copy_props(%struct.TYPE_31__* %224, %struct.TYPE_31__* %225)
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 9
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %262

241:                                              ; preds = %221
  %242 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %242, i32 0, i32 7
  %244 = load i64*, i64** %243, align 8
  %245 = getelementptr inbounds i64, i64* %244, i64 1
  %246 = load i64, i64* %245, align 8
  %247 = inttoptr i64 %246 to i32*
  %248 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %241
  %254 = load i64, i64* @AV_PIX_FMT_BGR8, align 8
  br label %259

255:                                              ; preds = %241
  %256 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  br label %259

259:                                              ; preds = %255, %253
  %260 = phi i64 [ %254, %253 ], [ %258, %255 ]
  %261 = call i32 @avpriv_set_systematic_pal2(i32* %247, i64 %260)
  br label %262

262:                                              ; preds = %259, %221
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  store i32 %265, i32* %13, align 4
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %266, i32 0, i32 7
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %291, label %270

270:                                              ; preds = %262
  %271 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i32 0, i32 8
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %291, label %275

275:                                              ; preds = %270
  %276 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @AVCOL_RANGE_UNSPECIFIED, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %291, label %281

281:                                              ; preds = %275
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* @AVCOL_RANGE_UNSPECIFIED, align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %291, label %285

285:                                              ; preds = %281
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @AVCOL_RANGE_UNSPECIFIED, align 4
  %290 = icmp ne i32 %288, %289
  br i1 %290, label %291, label %427

291:                                              ; preds = %285, %281, %275, %270, %262
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %292, i32 0, i32 5
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @sws_getColorspaceDetails(i64 %294, i32** %20, i32* %15, i32** %21, i32* %16, i32* %17, i32* %18, i32* %19)
  %296 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %296, i32 0, i32 7
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %291
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %301, i32 0, i32 7
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 8
  %307 = call i32* @parse_yuv_type(i64 %303, i32 %306)
  store i32* %307, i32** %20, align 8
  br label %308

308:                                              ; preds = %300, %291
  %309 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %309, i32 0, i32 8
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %308
  %314 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %314, i32 0, i32 8
  %316 = load i64, i64* %315, align 8
  %317 = load i32, i32* @AVCOL_SPC_UNSPECIFIED, align 4
  %318 = call i32* @parse_yuv_type(i64 %316, i32 %317)
  store i32* %318, i32** %21, align 8
  br label %327

319:                                              ; preds = %308
  %320 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %320, i32 0, i32 7
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %319
  %325 = load i32*, i32** %20, align 8
  store i32* %325, i32** %21, align 8
  br label %326

326:                                              ; preds = %324, %319
  br label %327

327:                                              ; preds = %326, %313
  %328 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @AVCOL_RANGE_UNSPECIFIED, align 4
  %332 = icmp ne i32 %330, %331
  br i1 %332, label %333, label %340

333:                                              ; preds = %327
  %334 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  %338 = icmp eq i32 %336, %337
  %339 = zext i1 %338 to i32
  store i32 %339, i32* %15, align 4
  br label %350

340:                                              ; preds = %327
  %341 = load i32, i32* %13, align 4
  %342 = load i32, i32* @AVCOL_RANGE_UNSPECIFIED, align 4
  %343 = icmp ne i32 %341, %342
  br i1 %343, label %344, label %349

344:                                              ; preds = %340
  %345 = load i32, i32* %13, align 4
  %346 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  %347 = icmp eq i32 %345, %346
  %348 = zext i1 %347 to i32
  store i32 %348, i32* %15, align 4
  br label %349

349:                                              ; preds = %344, %340
  br label %350

350:                                              ; preds = %349, %333
  %351 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @AVCOL_RANGE_UNSPECIFIED, align 4
  %355 = icmp ne i32 %353, %354
  br i1 %355, label %356, label %363

356:                                              ; preds = %350
  %357 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  %361 = icmp eq i32 %359, %360
  %362 = zext i1 %361 to i32
  store i32 %362, i32* %16, align 4
  br label %363

363:                                              ; preds = %356, %350
  %364 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %364, i32 0, i32 5
  %366 = load i64, i64* %365, align 8
  %367 = load i32*, i32** %20, align 8
  %368 = load i32, i32* %15, align 4
  %369 = load i32*, i32** %21, align 8
  %370 = load i32, i32* %16, align 4
  %371 = load i32, i32* %17, align 4
  %372 = load i32, i32* %18, align 4
  %373 = load i32, i32* %19, align 4
  %374 = call i32 @sws_setColorspaceDetails(i64 %366, i32* %367, i32 %368, i32* %369, i32 %370, i32 %371, i32 %372, i32 %373)
  %375 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %375, i32 0, i32 6
  %377 = load i64*, i64** %376, align 8
  %378 = getelementptr inbounds i64, i64* %377, i64 0
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %395

381:                                              ; preds = %363
  %382 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %382, i32 0, i32 6
  %384 = load i64*, i64** %383, align 8
  %385 = getelementptr inbounds i64, i64* %384, i64 0
  %386 = load i64, i64* %385, align 8
  %387 = load i32*, i32** %20, align 8
  %388 = load i32, i32* %15, align 4
  %389 = load i32*, i32** %21, align 8
  %390 = load i32, i32* %16, align 4
  %391 = load i32, i32* %17, align 4
  %392 = load i32, i32* %18, align 4
  %393 = load i32, i32* %19, align 4
  %394 = call i32 @sws_setColorspaceDetails(i64 %386, i32* %387, i32 %388, i32* %389, i32 %390, i32 %391, i32 %392, i32 %393)
  br label %395

395:                                              ; preds = %381, %363
  %396 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %397 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %396, i32 0, i32 6
  %398 = load i64*, i64** %397, align 8
  %399 = getelementptr inbounds i64, i64* %398, i64 1
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %416

402:                                              ; preds = %395
  %403 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %403, i32 0, i32 6
  %405 = load i64*, i64** %404, align 8
  %406 = getelementptr inbounds i64, i64* %405, i64 1
  %407 = load i64, i64* %406, align 8
  %408 = load i32*, i32** %20, align 8
  %409 = load i32, i32* %15, align 4
  %410 = load i32*, i32** %21, align 8
  %411 = load i32, i32* %16, align 4
  %412 = load i32, i32* %17, align 4
  %413 = load i32, i32* %18, align 4
  %414 = load i32, i32* %19, align 4
  %415 = call i32 @sws_setColorspaceDetails(i64 %407, i32* %408, i32 %409, i32* %410, i32 %411, i32 %412, i32 %413, i32 %414)
  br label %416

416:                                              ; preds = %402, %395
  %417 = load i32, i32* %16, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %416
  %420 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  br label %423

421:                                              ; preds = %416
  %422 = load i32, i32* @AVCOL_RANGE_MPEG, align 4
  br label %423

423:                                              ; preds = %421, %419
  %424 = phi i32 [ %420, %419 ], [ %422, %421 ]
  %425 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %426 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %425, i32 0, i32 3
  store i32 %424, i32* %426, align 8
  br label %427

427:                                              ; preds = %423, %285
  %428 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %429 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %428, i32 0, i32 5
  %430 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %429, i32 0, i32 1
  %431 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %432 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %431, i32 0, i32 5
  %433 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %432, i32 0, i32 0
  %434 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %434, i32 0, i32 5
  %436 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %435, i32 0, i32 1
  %437 = load i64, i64* %436, align 8
  %438 = trunc i64 %437 to i32
  %439 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %440 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 4
  %442 = mul nsw i32 %438, %441
  %443 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 8
  %446 = mul nsw i32 %442, %445
  %447 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %447, i32 0, i32 5
  %449 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = trunc i64 %450 to i32
  %452 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %453 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 8
  %455 = mul nsw i32 %451, %454
  %456 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 4
  %459 = mul nsw i32 %455, %458
  %460 = load i32, i32* @INT_MAX, align 4
  %461 = call i32 @av_reduce(i64* %430, i64* %433, i32 %446, i32 %459, i32 %460)
  %462 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %463 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %462, i32 0, i32 3
  %464 = load i64, i64* %463, align 8
  %465 = icmp sgt i64 %464, 0
  br i1 %465, label %476, label %466

466:                                              ; preds = %427
  %467 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %468 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %467, i32 0, i32 3
  %469 = load i64, i64* %468, align 8
  %470 = icmp slt i64 %469, 0
  br i1 %470, label %471, label %504

471:                                              ; preds = %466
  %472 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %473 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %472, i32 0, i32 4
  %474 = load i64, i64* %473, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %504

476:                                              ; preds = %471, %427
  %477 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %478 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %479 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %480 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %481 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %480, i32 0, i32 6
  %482 = load i64*, i64** %481, align 8
  %483 = getelementptr inbounds i64, i64* %482, i64 0
  %484 = load i64, i64* %483, align 8
  %485 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %486 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 4
  %488 = add nsw i32 %487, 1
  %489 = sdiv i32 %488, 2
  %490 = call i32 @scale_slice(%struct.TYPE_32__* %477, %struct.TYPE_31__* %478, %struct.TYPE_31__* %479, i64 %484, i32 0, i32 %489, i32 2, i32 0)
  %491 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %492 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %493 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %494 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %495 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %494, i32 0, i32 6
  %496 = load i64*, i64** %495, align 8
  %497 = getelementptr inbounds i64, i64* %496, i64 1
  %498 = load i64, i64* %497, align 8
  %499 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %500 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %499, i32 0, i32 2
  %501 = load i32, i32* %500, align 4
  %502 = sdiv i32 %501, 2
  %503 = call i32 @scale_slice(%struct.TYPE_32__* %491, %struct.TYPE_31__* %492, %struct.TYPE_31__* %493, i64 %498, i32 0, i32 %502, i32 2, i32 1)
  br label %559

504:                                              ; preds = %471, %466
  %505 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %506 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %505, i32 0, i32 4
  %507 = load i32, i32* %506, align 8
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %547

509:                                              ; preds = %504
  store i32 0, i32* %25, align 4
  %510 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %511 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %510, i32 0, i32 4
  %512 = load i32, i32* %511, align 8
  %513 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %514 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %513, i32 0, i32 2
  %515 = load i32, i32* %514, align 4
  %516 = call i32 @FFMIN(i32 %512, i32 %515)
  store i32 %516, i32* %26, align 4
  store i32 0, i32* %22, align 4
  br label %517

517:                                              ; preds = %543, %509
  %518 = load i32, i32* %22, align 4
  %519 = load i32, i32* %26, align 4
  %520 = icmp slt i32 %518, %519
  br i1 %520, label %521, label %546

521:                                              ; preds = %517
  %522 = load i32, i32* %25, align 4
  store i32 %522, i32* %24, align 4
  %523 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %524 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %523, i32 0, i32 2
  %525 = load i32, i32* %524, align 4
  %526 = load i32, i32* %22, align 4
  %527 = add nsw i32 %526, 1
  %528 = mul nsw i32 %525, %527
  %529 = load i32, i32* %26, align 4
  %530 = sdiv i32 %528, %529
  store i32 %530, i32* %25, align 4
  %531 = load i32, i32* %25, align 4
  %532 = load i32, i32* %24, align 4
  %533 = sub nsw i32 %531, %532
  store i32 %533, i32* %23, align 4
  %534 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %535 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %536 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %537 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %538 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %537, i32 0, i32 5
  %539 = load i64, i64* %538, align 8
  %540 = load i32, i32* %24, align 4
  %541 = load i32, i32* %23, align 4
  %542 = call i32 @scale_slice(%struct.TYPE_32__* %534, %struct.TYPE_31__* %535, %struct.TYPE_31__* %536, i64 %539, i32 %540, i32 %541, i32 1, i32 0)
  br label %543

543:                                              ; preds = %521
  %544 = load i32, i32* %22, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %22, align 4
  br label %517

546:                                              ; preds = %517
  br label %558

547:                                              ; preds = %504
  %548 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %549 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %550 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %551 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %552 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %551, i32 0, i32 5
  %553 = load i64, i64* %552, align 8
  %554 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %555 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %554, i32 0, i32 2
  %556 = load i32, i32* %555, align 4
  %557 = call i32 @scale_slice(%struct.TYPE_32__* %548, %struct.TYPE_31__* %549, %struct.TYPE_31__* %550, i64 %553, i32 0, i32 %556, i32 1, i32 0)
  br label %558

558:                                              ; preds = %547, %546
  br label %559

559:                                              ; preds = %558, %476
  %560 = call i32 @av_frame_free(%struct.TYPE_31__** %6)
  store i32 0, i32* %4, align 4
  br label %561

561:                                              ; preds = %559, %217, %193, %185
  %562 = load i32, i32* %4, align 4
  ret i32 %562
}

declare dso_local %struct.TYPE_30__* @av_pix_fmt_desc_get(i64) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @av_opt_set(%struct.TYPE_29__*, i8*, i8*, i32) #1

declare dso_local i32 @config_props(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_31__* @ff_get_video_buffer(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_31__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @avpriv_set_systematic_pal2(i32*, i64) #1

declare dso_local i32 @sws_getColorspaceDetails(i64, i32**, i32*, i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @parse_yuv_type(i64, i32) #1

declare dso_local i32 @sws_setColorspaceDetails(i64, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @av_reduce(i64*, i64*, i32, i32, i32) #1

declare dso_local i32 @scale_slice(%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
