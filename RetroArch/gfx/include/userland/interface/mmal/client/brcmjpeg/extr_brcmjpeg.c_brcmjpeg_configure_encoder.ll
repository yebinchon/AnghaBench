; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/client/brcmjpeg/extr_brcmjpeg.c_brcmjpeg_configure_encoder.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/client/brcmjpeg/extr_brcmjpeg.c_brcmjpeg_configure_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_20__**, %struct.TYPE_20__**, i8* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, i64, i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i32, i64, i32 }

@MMAL_SUCCESS = common dso_local global i8* null, align 8
@BRCMJPEG_SUCCESS = common dso_local global i32 0, align 4
@MMAL_FALSE = common dso_local global i64 0, align 8
@MMAL_ENCODING_UNKNOWN = common dso_local global i64 0, align 8
@MMAL_EINVAL = common dso_local global i8* null, align 8
@INPUT_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"format not supported (%i)\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"invalid buffer width/height (%i<=%i %i<=%i)\00", align 1
@EXECUTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to disable input port\00", align 1
@MMAL_ENCODING_I420 = common dso_local global i64 0, align 8
@MMAL_ENCODING_I422 = common dso_local global i64 0, align 8
@MMAL_ENCODING_I420_SLICE = common dso_local global i64 0, align 8
@MMAL_ENCODING_I422_SLICE = common dso_local global i64 0, align 8
@MMAL_TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to commit input port format\00", align 1
@MMAL_WRAPPER_FLAG_PAYLOAD_USE_SHARED_MEMORY = common dso_local global i32 0, align 4
@MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to enable input port\00", align 1
@MMAL_PARAMETER_JPEG_Q_FACTOR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to enable output port\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"encoder configured (%4.4s:%ux%u|%ux%u slice: %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_22__*)* @brcmjpeg_configure_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmjpeg_configure_encoder(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %11 = load i8*, i8** @MMAL_SUCCESS, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @brcmjpeg_pixfmt_to_encoding(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @BRCMJPEG_SUCCESS, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* @MMAL_FALSE, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @MMAL_ENCODING_UNKNOWN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i8*, i8** @MMAL_EINVAL, align 8
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @INPUT_FORMAT, align 4
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i32, i8*, ...) @CHECK_MMAL_STATUS(i8* %24, i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %23
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %23
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %51
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59, %51
  %68 = load i8*, i8** @MMAL_EINVAL, align 8
  store i8* %68, i8** %6, align 8
  br label %69

69:                                               ; preds = %67, %59
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @INPUT_FORMAT, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i8*, i32, i8*, ...) @CHECK_MMAL_STATUS(i8* %70, i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %74, i64 %77, i64 %80, i64 %83)
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load i8*, i8** @MMAL_SUCCESS, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  store i8* %87, i8** %91, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %96, i64 0
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  store %struct.TYPE_20__* %98, %struct.TYPE_20__** %8, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %69
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %105 = call i8* @mmal_wrapper_port_disable(%struct.TYPE_20__* %104)
  store i8* %105, i8** %6, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* @EXECUTE, align 4
  %108 = call i32 (i8*, i32, i8*, ...) @CHECK_MMAL_STATUS(i8* %106, i32 %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %103, %69
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  store i64 %110, i64* %114, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  store i64 %117, i64* %125, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  store i64 %117, i64* %132, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  store i64 %135, i64* %143, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  store i64 %135, i64* %150, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %206, label %157

157:                                              ; preds = %109
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @MMAL_ENCODING_I420, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %173, label %165

165:                                              ; preds = %157
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @MMAL_ENCODING_I422, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %206

173:                                              ; preds = %165, %157
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @MMAL_ENCODING_I420, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %173
  %182 = load i64, i64* @MMAL_ENCODING_I420_SLICE, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  store i64 %182, i64* %186, align 8
  br label %202

187:                                              ; preds = %173
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @MMAL_ENCODING_I422, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %187
  %196 = load i64, i64* @MMAL_ENCODING_I422_SLICE, align 8
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  store i64 %196, i64* %200, align 8
  br label %201

201:                                              ; preds = %195, %187
  br label %202

202:                                              ; preds = %201, %181
  %203 = load i64, i64* @MMAL_TRUE, align 8
  store i64 %203, i64* %10, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  store i32 3, i32* %205, align 8
  br label %206

206:                                              ; preds = %202, %165, %109
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %208 = call i8* @mmal_port_format_commit(%struct.TYPE_20__* %207)
  store i8* %208, i8** %6, align 8
  %209 = load i8*, i8** %6, align 8
  %210 = load i32, i32* @INPUT_FORMAT, align 4
  %211 = call i32 (i8*, i32, i8*, ...) @CHECK_MMAL_STATUS(i8* %209, i32 %210, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %212 = load i64, i64* %10, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  br label %224

215:                                              ; preds = %206
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  br label %224

224:                                              ; preds = %215, %214
  %225 = phi i64 [ 16, %214 ], [ %223, %215 ]
  %226 = trunc i64 %225 to i32
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 4
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %224
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %240 = load i32, i32* @MMAL_WRAPPER_FLAG_PAYLOAD_USE_SHARED_MEMORY, align 4
  %241 = call i8* @mmal_wrapper_port_enable(%struct.TYPE_20__* %239, i32 %240)
  store i8* %241, i8** %6, align 8
  br label %246

242:                                              ; preds = %224
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %244 = load i32, i32* @MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE, align 4
  %245 = call i8* @mmal_wrapper_port_enable(%struct.TYPE_20__* %243, i32 %244)
  store i8* %245, i8** %6, align 8
  br label %246

246:                                              ; preds = %242, %238
  %247 = load i8*, i8** %6, align 8
  %248 = load i32, i32* @EXECUTE, align 4
  %249 = call i32 (i8*, i32, i8*, ...) @CHECK_MMAL_STATUS(i8* %247, i32 %248, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %254, i64 0
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %255, align 8
  %257 = load i32, i32* @MMAL_PARAMETER_JPEG_Q_FACTOR, align 4
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @mmal_port_parameter_set_uint32(%struct.TYPE_20__* %256, i32 %257, i32 %260)
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %266, i64 0
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %284, label %272

272:                                              ; preds = %246
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %277, i64 0
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %278, align 8
  %280 = call i8* @mmal_wrapper_port_enable(%struct.TYPE_20__* %279, i32 0)
  store i8* %280, i8** %6, align 8
  %281 = load i8*, i8** %6, align 8
  %282 = load i32, i32* @EXECUTE, align 4
  %283 = call i32 (i8*, i32, i8*, ...) @CHECK_MMAL_STATUS(i8* %281, i32 %282, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %284

284:                                              ; preds = %272, %246
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 0
  %289 = bitcast i64* %288 to i8*
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = trunc i64 %323 to i32
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %289, i64 %298, i64 %307, i64 %315, i32 %324, i32 %327)
  %329 = load i32, i32* @BRCMJPEG_SUCCESS, align 4
  store i32 %329, i32* %3, align 4
  br label %332

330:                                              ; No predecessors!
  %331 = load i32, i32* %9, align 4
  store i32 %331, i32* %3, align 4
  br label %332

332:                                              ; preds = %330, %284
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

declare dso_local i64 @brcmjpeg_pixfmt_to_encoding(i32) #1

declare dso_local i32 @CHECK_MMAL_STATUS(i8*, i32, i8*, ...) #1

declare dso_local i8* @mmal_wrapper_port_disable(%struct.TYPE_20__*) #1

declare dso_local i8* @mmal_port_format_commit(%struct.TYPE_20__*) #1

declare dso_local i8* @mmal_wrapper_port_enable(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @mmal_port_parameter_set_uint32(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @LOG_DEBUG(i8*, i8*, i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
