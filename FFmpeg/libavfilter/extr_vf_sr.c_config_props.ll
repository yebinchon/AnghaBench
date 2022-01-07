; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_sr.c_config_props.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_sr.c_config_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__**, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i8**, %struct.TYPE_18__, %struct.TYPE_19__, %struct.TYPE_17__*, %struct.TYPE_13__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i64 (i32, %struct.TYPE_19__*, i8*, i8**, i32)*, i32 }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32)* }

@.str = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@DNN_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"could not set input and output for the model\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to execute loaded model\0A\00", align 1
@AV_PIX_FMT_GRAY8 = common dso_local global i32 0, align 4
@AV_PIX_FMT_GRAYF32 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"could not create SwsContext for conversions\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SWS_BICUBIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"could not create SwsContext for scaling\0A\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"could not create SwsContext for scaling for given input pixel format: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @config_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_props(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %4, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %5, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %21, i64 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %26, %29
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %36, %39
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 7
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64 (i32, %struct.TYPE_19__*, i8*, i8**, i32)*, i64 (i32, %struct.TYPE_19__*, i8*, i8**, i32)** %50, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 6
  %59 = call i64 %51(i32 %56, %struct.TYPE_19__* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12, i32 1)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @DNN_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %64, i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @EIO, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %405

69:                                               ; preds = %1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32)*, i64 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32)** %73, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 7
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 5
  %80 = call i64 %74(%struct.TYPE_17__* %77, %struct.TYPE_18__* %79, i32 1)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @DNN_SUCCESS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %69
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %85, i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @EIO, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %2, align 4
  br label %405

90:                                               ; preds = %69
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %94, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %90
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %104, %108
  br i1 %109, label %110, label %169

110:                                              ; preds = %100, %90
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 7
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i64 (i32, %struct.TYPE_19__*, i8*, i8**, i32)*, i64 (i32, %struct.TYPE_19__*, i8*, i8**, i32)** %126, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 7
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 6
  %135 = call i64 %127(i32 %132, %struct.TYPE_19__* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12, i32 1)
  store i64 %135, i64* %7, align 8
  %136 = load i64, i64* %7, align 8
  %137 = load i64, i64* @DNN_SUCCESS, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %110
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %141 = load i32, i32* @AV_LOG_ERROR, align 4
  %142 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %140, i32 %141, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* @EIO, align 4
  %144 = call i32 @AVERROR(i32 %143)
  store i32 %144, i32* %2, align 4
  br label %405

145:                                              ; preds = %110
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i64 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32)*, i64 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32)** %149, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 7
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 5
  %156 = call i64 %150(%struct.TYPE_17__* %153, %struct.TYPE_18__* %155, i32 1)
  store i64 %156, i64* %7, align 8
  %157 = load i64, i64* %7, align 8
  %158 = load i64, i64* @DNN_SUCCESS, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %145
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %162 = load i32, i32* @AV_LOG_ERROR, align 4
  %163 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %161, i32 %162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %164 = load i32, i32* @EIO, align 4
  %165 = call i32 @AVERROR(i32 %164)
  store i32 %165, i32* %2, align 4
  br label %405

166:                                              ; preds = %145
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  store i32 0, i32* %168, align 8
  br label %169

169:                                              ; preds = %166, %100
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 6
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @AV_PIX_FMT_GRAYF32, align 4
  %200 = call i8* @sws_getContext(i32 %185, i32 %189, i32 %190, i32 %194, i32 %198, i32 %199, i32 0, i32* null, i32* null, i32* null)
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 4
  %203 = load i8**, i8*** %202, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 1
  store i8* %200, i8** %204, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 6
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = shl i32 %208, 2
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @AV_PIX_FMT_GRAYF32, align 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  %230 = call i8* @sws_getContext(i32 %215, i32 %219, i32 %220, i32 %224, i32 %228, i32 %229, i32 0, i32* null, i32* null, i32* null)
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 4
  %233 = load i8**, i8*** %232, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 2
  store i8* %230, i8** %234, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 %238, 2
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 4
  %244 = load i8**, i8*** %243, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 1
  %246 = load i8*, i8** %245, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %255

248:                                              ; preds = %169
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 4
  %251 = load i8**, i8*** %250, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 2
  %253 = load i8*, i8** %252, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %261, label %255

255:                                              ; preds = %248, %169
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %257 = load i32, i32* @AV_LOG_ERROR, align 4
  %258 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %256, i32 %257, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %259 = load i32, i32* @ENOMEM, align 4
  %260 = call i32 @AVERROR(i32 %259)
  store i32 %260, i32* %2, align 4
  br label %405

261:                                              ; preds = %248
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %309

266:                                              ; preds = %261
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @SWS_BICUBIC, align 4
  %286 = call i8* @sws_getContext(i32 %269, i32 %272, i32 %275, i32 %278, i32 %281, i32 %284, i32 %285, i32* null, i32* null, i32* null)
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 4
  %289 = load i8**, i8*** %288, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i64 0
  store i8* %286, i8** %290, align 8
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 4
  %293 = load i8**, i8*** %292, align 8
  %294 = getelementptr inbounds i8*, i8** %293, i64 0
  %295 = load i8*, i8** %294, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %303, label %297

297:                                              ; preds = %266
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %299 = load i32, i32* @AV_LOG_ERROR, align 4
  %300 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %298, i32 %299, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %301 = load i32, i32* @ENOMEM, align 4
  %302 = call i32 @AVERROR(i32 %301)
  store i32 %302, i32* %2, align 4
  br label %405

303:                                              ; preds = %266
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 3
  store i32 %306, i32* %308, align 4
  br label %404

309:                                              ; preds = %261
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %403

315:                                              ; preds = %309
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 6
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* %8, align 4
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 6
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  store i32 %323, i32* %9, align 4
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 5
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  store i32 %327, i32* %10, align 4
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 5
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  store i32 %331, i32* %11, align 4
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  switch i32 %334, label %364 [
    i32 130, label %335
    i32 129, label %344
    i32 128, label %349
    i32 132, label %350
    i32 131, label %359
  ]

335:                                              ; preds = %315
  %336 = load i32, i32* %8, align 4
  %337 = call i32 @AV_CEIL_RSHIFT(i32 %336, i32 1)
  store i32 %337, i32* %8, align 4
  %338 = load i32, i32* %9, align 4
  %339 = call i32 @AV_CEIL_RSHIFT(i32 %338, i32 1)
  store i32 %339, i32* %9, align 4
  %340 = load i32, i32* %10, align 4
  %341 = call i32 @AV_CEIL_RSHIFT(i32 %340, i32 1)
  store i32 %341, i32* %10, align 4
  %342 = load i32, i32* %11, align 4
  %343 = call i32 @AV_CEIL_RSHIFT(i32 %342, i32 1)
  store i32 %343, i32* %11, align 4
  br label %374

344:                                              ; preds = %315
  %345 = load i32, i32* %9, align 4
  %346 = call i32 @AV_CEIL_RSHIFT(i32 %345, i32 1)
  store i32 %346, i32* %9, align 4
  %347 = load i32, i32* %11, align 4
  %348 = call i32 @AV_CEIL_RSHIFT(i32 %347, i32 1)
  store i32 %348, i32* %11, align 4
  br label %374

349:                                              ; preds = %315
  br label %374

350:                                              ; preds = %315
  %351 = load i32, i32* %8, align 4
  %352 = call i32 @AV_CEIL_RSHIFT(i32 %351, i32 2)
  store i32 %352, i32* %8, align 4
  %353 = load i32, i32* %9, align 4
  %354 = call i32 @AV_CEIL_RSHIFT(i32 %353, i32 2)
  store i32 %354, i32* %9, align 4
  %355 = load i32, i32* %10, align 4
  %356 = call i32 @AV_CEIL_RSHIFT(i32 %355, i32 2)
  store i32 %356, i32* %10, align 4
  %357 = load i32, i32* %11, align 4
  %358 = call i32 @AV_CEIL_RSHIFT(i32 %357, i32 2)
  store i32 %358, i32* %11, align 4
  br label %374

359:                                              ; preds = %315
  %360 = load i32, i32* %9, align 4
  %361 = call i32 @AV_CEIL_RSHIFT(i32 %360, i32 2)
  store i32 %361, i32* %9, align 4
  %362 = load i32, i32* %11, align 4
  %363 = call i32 @AV_CEIL_RSHIFT(i32 %362, i32 2)
  store i32 %363, i32* %11, align 4
  br label %374

364:                                              ; preds = %315
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %366 = load i32, i32* @AV_LOG_ERROR, align 4
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @av_get_pix_fmt_name(i32 %369)
  %371 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %365, i32 %366, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i32 %370)
  %372 = load i32, i32* @EIO, align 4
  %373 = call i32 @AVERROR(i32 %372)
  store i32 %373, i32* %2, align 4
  br label %405

374:                                              ; preds = %359, %350, %349, %344, %335
  %375 = load i32, i32* %9, align 4
  %376 = load i32, i32* %8, align 4
  %377 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  %378 = load i32, i32* %11, align 4
  %379 = load i32, i32* %10, align 4
  %380 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  %381 = load i32, i32* @SWS_BICUBIC, align 4
  %382 = call i8* @sws_getContext(i32 %375, i32 %376, i32 %377, i32 %378, i32 %379, i32 %380, i32 %381, i32* null, i32* null, i32* null)
  %383 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %383, i32 0, i32 4
  %385 = load i8**, i8*** %384, align 8
  %386 = getelementptr inbounds i8*, i8** %385, i64 0
  store i8* %382, i8** %386, align 8
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 4
  %389 = load i8**, i8*** %388, align 8
  %390 = getelementptr inbounds i8*, i8** %389, i64 0
  %391 = load i8*, i8** %390, align 8
  %392 = icmp ne i8* %391, null
  br i1 %392, label %399, label %393

393:                                              ; preds = %374
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %395 = load i32, i32* @AV_LOG_ERROR, align 4
  %396 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %394, i32 %395, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %397 = load i32, i32* @ENOMEM, align 4
  %398 = call i32 @AVERROR(i32 %397)
  store i32 %398, i32* %2, align 4
  br label %405

399:                                              ; preds = %374
  %400 = load i32, i32* %8, align 4
  %401 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i32 0, i32 3
  store i32 %400, i32* %402, align 4
  br label %403

403:                                              ; preds = %399, %309
  br label %404

404:                                              ; preds = %403, %303
  store i32 0, i32* %2, align 4
  br label %405

405:                                              ; preds = %404, %393, %364, %297, %255, %160, %139, %84, %63
  %406 = load i32, i32* %2, align 4
  ret i32 %406
}

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @sws_getContext(i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
