; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vidstabtransform.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vidstabtransform.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_21__, i64, i64, i32 }
%struct.TYPE_21__ = type { i8*, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i32, i64, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32 }

@AV_PIX_FMT_FLAG_PLANAR = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unknown pixel format: %i (%s)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"pixel-format error: bpp %i<>%i  \00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"chroma_subsampl: w: %i<>%i  h: %i<>%i\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"vidstabtransform\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Virtual tripod mode: relative=0, smoothing=0\0A\00", align 1
@VS_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [66 x i8] c"initialization of vid.stab transform failed, please report a BUG\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Video transformation/stabilization settings (pass 2/2):\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"    input     = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"    smoothing = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"    optalgo   = %s\0A\00", align 1
@VSOptimalL1 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"opt\00", align 1
@VSGaussian = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"gauss\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"avg\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"    maxshift  = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"    maxangle  = %f\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"    crop      = %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Keep\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"    relative  = %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"    invert    = %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"    zoom      = %f\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"    optzoom   = %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Static (1)\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Dynamic (2)\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"Off (0)\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"    zoomspeed = %g\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"    interpol  = %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [27 x i8] c"cannot open input file %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"calculating transformations failed\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"error parsing input file %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"error while preprocessing transforms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %4, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %5, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_18__* @av_pix_fmt_desc_get(i32 %22)
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %7, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @AV_PIX_FMT_FLAG_PLANAR, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 5
  store i32* %30, i32** %9, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ff_av2vs_pixfmt(%struct.TYPE_20__* %37, i32 %40)
  %42 = call i32 @vsFrameInfoInit(%struct.TYPE_16__* %10, i32 %33, i32 %36, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %1
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ff_av2vs_pixfmt(%struct.TYPE_20__* %51, i32 %54)
  %56 = call i32 @vsFrameInfoInit(%struct.TYPE_16__* %11, i32 %47, i32 %50, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %44, %1
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %59, i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = call i32 @AVERROR(i32 %68)
  store i32 %69, i32* %2, align 4
  br label %371

70:                                               ; preds = %44
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = call i32 @av_get_bits_per_pixel(%struct.TYPE_18__* %76)
  %78 = sdiv i32 %77, 8
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %94, label %80

80:                                               ; preds = %73, %70
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %87, %80, %73
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %96 = load i32, i32* @AV_LOG_ERROR, align 4
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %100 = call i32 @av_get_bits_per_pixel(%struct.TYPE_18__* %99)
  %101 = sdiv i32 %100, 8
  %102 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %95, i32 %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %104 = load i32, i32* @AV_LOG_ERROR, align 4
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %103, i32 %104, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %109, i64 %111, i64 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = call i32 @AVERROR(i32 %116)
  store i32 %117, i32* %2, align 4
  br label %371

118:                                              ; preds = %87
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %121, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 1, %124
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 15
  store i64 %125, i64* %128, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %118
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %135 = load i32, i32* @AV_LOG_INFO, align 4
  %136 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %134, i32 %135, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 7
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 11
  store i32 0, i32* %142, align 8
  br label %143

143:                                              ; preds = %133, %118
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 14
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 13
  store i64 %149, i64* %152, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 12
  store i64 0, i64* %155, align 8
  %156 = load i32*, i32** %9, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 2
  %159 = call i64 @vsTransformDataInit(i32* %156, %struct.TYPE_21__* %158, %struct.TYPE_16__* %10, %struct.TYPE_16__* %11)
  %160 = load i64, i64* @VS_OK, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %143
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %164 = load i32, i32* @AV_LOG_ERROR, align 4
  %165 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %163, i32 %164, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = call i32 @AVERROR(i32 %166)
  store i32 %167, i32* %2, align 4
  br label %371

168:                                              ; preds = %143
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  %171 = load i32*, i32** %9, align 8
  %172 = call i32 @vsTransformGetConfig(%struct.TYPE_21__* %170, i32* %171)
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %174 = load i32, i32* @AV_LOG_INFO, align 4
  %175 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %173, i32 %174, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %177 = load i32, i32* @AV_LOG_INFO, align 4
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %176, i32 %177, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %180)
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %183 = load i32, i32* @AV_LOG_INFO, align 4
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 11
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %182, i32 %183, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %187)
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %190 = load i32, i32* @AV_LOG_INFO, align 4
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @VSOptimalL1, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %168
  br label %207

198:                                              ; preds = %168
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @VSGaussian, align 8
  %204 = icmp eq i64 %202, %203
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  br label %207

207:                                              ; preds = %198, %197
  %208 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %197 ], [ %206, %198 ]
  %209 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %189, i32 %190, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %208)
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %211 = load i32, i32* @AV_LOG_INFO, align 4
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 10
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %210, i32 %211, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %215)
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %218 = load i32, i32* @AV_LOG_INFO, align 4
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 8
  %223 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %217, i32 %218, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %222)
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %225 = load i32, i32* @AV_LOG_INFO, align 4
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 8
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)
  %233 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %224, i32 %225, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %232)
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %235 = load i32, i32* @AV_LOG_INFO, align 4
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 7
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)
  %243 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %234, i32 %235, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* %242)
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %245 = load i32, i32* @AV_LOG_INFO, align 4
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 6
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)
  %253 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %244, i32 %245, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* %252)
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %255 = load i32, i32* @AV_LOG_INFO, align 4
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %254, i32 %255, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %259)
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %262 = load i32, i32* @AV_LOG_INFO, align 4
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %268, label %269

268:                                              ; preds = %207
  br label %277

269:                                              ; preds = %207
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0)
  br label %277

277:                                              ; preds = %269, %268
  %278 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), %268 ], [ %276, %269 ]
  %279 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %261, i32 %262, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i8* %278)
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = icmp eq i32 %283, 2
  br i1 %284, label %285, label %293

285:                                              ; preds = %277
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %287 = load i32, i32* @AV_LOG_INFO, align 4
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %286, i32 %287, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i32 %291)
  br label %293

293:                                              ; preds = %285, %277
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %295 = load i32, i32* @AV_LOG_INFO, align 4
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @getInterpolationTypeName(i32 %299)
  %301 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %294, i32 %295, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i32 %300)
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = call i32* @fopen(i32 %304, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  store i32* %305, i32** %6, align 8
  %306 = load i32*, i32** %6, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %318, label %308

308:                                              ; preds = %293
  %309 = load i32, i32* @errno, align 4
  %310 = call i32 @AVERROR(i32 %309)
  store i32 %310, i32* %12, align 4
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %312 = load i32, i32* @AV_LOG_ERROR, align 4
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %311, i32 %312, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i32 %315)
  %317 = load i32, i32* %12, align 4
  store i32 %317, i32* %2, align 4
  br label %371

318:                                              ; preds = %293
  %319 = load i32*, i32** %6, align 8
  %320 = call i64 @vsReadLocalMotionsFile(i32* %319, i32* %13)
  %321 = load i64, i64* @VS_OK, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %337

323:                                              ; preds = %318
  %324 = load i32*, i32** %9, align 8
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 0
  %327 = call i64 @vsLocalmotions2Transforms(i32* %324, i32* %13, i32* %326)
  %328 = load i64, i64* @VS_OK, align 8
  %329 = icmp ne i64 %327, %328
  br i1 %329, label %330, label %336

330:                                              ; preds = %323
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %332 = load i32, i32* @AV_LOG_ERROR, align 4
  %333 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %331, i32 %332, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i64 0, i64 0))
  %334 = load i32, i32* @EINVAL, align 4
  %335 = call i32 @AVERROR(i32 %334)
  store i32 %335, i32* %2, align 4
  br label %371

336:                                              ; preds = %323
  br label %354

337:                                              ; preds = %318
  %338 = load i32*, i32** %9, align 8
  %339 = load i32*, i32** %6, align 8
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 0
  %342 = call i32 @vsReadOldTransforms(i32* %338, i32* %339, i32* %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %353, label %344

344:                                              ; preds = %337
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %346 = load i32, i32* @AV_LOG_ERROR, align 4
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %345, i32 %346, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i32 %349)
  %351 = load i32, i32* @EINVAL, align 4
  %352 = call i32 @AVERROR(i32 %351)
  store i32 %352, i32* %2, align 4
  br label %371

353:                                              ; preds = %337
  br label %354

354:                                              ; preds = %353, %336
  br label %355

355:                                              ; preds = %354
  %356 = load i32*, i32** %6, align 8
  %357 = call i32 @fclose(i32* %356)
  %358 = load i32*, i32** %9, align 8
  %359 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 0
  %361 = call i64 @vsPreprocessTransforms(i32* %358, i32* %360)
  %362 = load i64, i64* @VS_OK, align 8
  %363 = icmp ne i64 %361, %362
  br i1 %363, label %364, label %370

364:                                              ; preds = %355
  %365 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %366 = load i32, i32* @AV_LOG_ERROR, align 4
  %367 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %365, i32 %366, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0))
  %368 = load i32, i32* @EINVAL, align 4
  %369 = call i32 @AVERROR(i32 %368)
  store i32 %369, i32* %2, align 4
  br label %371

370:                                              ; preds = %355
  store i32 0, i32* %2, align 4
  br label %371

371:                                              ; preds = %370, %364, %344, %330, %308, %162, %94, %58
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local %struct.TYPE_18__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @vsFrameInfoInit(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @ff_av2vs_pixfmt(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_get_bits_per_pixel(%struct.TYPE_18__*) #1

declare dso_local i64 @vsTransformDataInit(i32*, %struct.TYPE_21__*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @vsTransformGetConfig(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @getInterpolationTypeName(i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i64 @vsReadLocalMotionsFile(i32*, i32*) #1

declare dso_local i64 @vsLocalmotions2Transforms(i32*, i32*, i32*) #1

declare dso_local i32 @vsReadOldTransforms(i32*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @vsPreprocessTransforms(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
