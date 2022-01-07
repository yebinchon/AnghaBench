; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deinterlace_vaapi.c_deint_vaapi_build_filter_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deinterlace_vaapi.c_deint_vaapi_build_filter_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, i32, i32, i64, %struct.TYPE_16__, i32*, i32, %struct.TYPE_12__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, i32 }

@VAProcDeinterlacingCount = common dso_local global i32 0, align 4
@VAProcFilterDeinterlacing = common dso_local global i32 0, align 4
@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to query deinterlacing caps: %d (%s).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@VAProcDeinterlacingNone = common dso_local global i64 0, align 8
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Picking %d (%s) as default deinterlacing mode.\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Deinterlacing mode %d (%s) is not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VAProcFilterParameterBufferType = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to query pipeline caps: %d (%s).\0A\00", align 1
@MAX_REFERENCES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [62 x i8] c"Pipeline requires too many references (%u forward, %u back).\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @deint_vaapi_build_filter_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deint_vaapi_build_filter_params(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %4, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %5, align 8
  %15 = load i32, i32* @VAProcDeinterlacingCount, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VAProcFilterDeinterlacing, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 9
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = call i64 @vaQueryVideoProcFilterCaps(i32 %22, i32 %25, i32 %26, %struct.TYPE_17__** %28, i32* %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %1
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @vaErrorStr(i64 %39)
  %41 = call i32 @av_log(%struct.TYPE_15__* %36, i32 %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %238

44:                                               ; preds = %1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VAProcDeinterlacingNone, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %96

50:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %82, %50
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %51
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 9
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %57
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 9
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %70, %57
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %51

85:                                               ; preds = %51
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @deint_vaapi_mode_name(i64 %93)
  %95 = call i32 @av_log(%struct.TYPE_15__* %86, i32 %87, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %90, i64 %94)
  br label %141

96:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %118, %96
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %97
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 9
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %103
  br label %121

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %97

121:                                              ; preds = %116, %97
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sge i32 %122, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %121
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = load i32, i32* @AV_LOG_ERROR, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @deint_vaapi_mode_name(i64 %135)
  %137 = call i32 @av_log(%struct.TYPE_15__* %128, i32 %129, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %132, i64 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = call i32 @AVERROR(i32 %138)
  store i32 %139, i32* %2, align 4
  br label %238

140:                                              ; preds = %121
  br label %141

141:                                              ; preds = %140, %85
  %142 = load i32, i32* @VAProcFilterDeinterlacing, align 4
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i32 %142, i32* %143, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i64 %146, i64* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %150 = load i32, i32* @VAProcFilterParameterBufferType, align 4
  %151 = call i64 @ff_vaapi_vpp_make_param_buffers(%struct.TYPE_15__* %149, i32 %150, %struct.TYPE_13__* %7, i32 24, i32 1)
  store i64 %151, i64* %6, align 8
  %152 = load i64, i64* %6, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %141
  %155 = load i64, i64* %6, align 8
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %2, align 4
  br label %238

157:                                              ; preds = %141
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 6
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 5
  %172 = call i64 @vaQueryVideoProcPipelineCaps(i32 %162, i32 %165, i32* %169, i32 1, %struct.TYPE_16__* %171)
  store i64 %172, i64* %6, align 8
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %157
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %178 = load i32, i32* @AV_LOG_ERROR, align 4
  %179 = load i64, i64* %6, align 8
  %180 = load i64, i64* %6, align 8
  %181 = call i64 @vaErrorStr(i64 %180)
  %182 = call i32 @av_log(%struct.TYPE_15__* %177, i32 %178, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %179, i64 %181)
  %183 = load i32, i32* @EIO, align 4
  %184 = call i32 @AVERROR(i32 %183)
  store i32 %184, i32* %2, align 4
  br label %238

185:                                              ; preds = %157
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %194, 0
  br label %196

196:                                              ; preds = %190, %185
  %197 = phi i1 [ false, %185 ], [ %195, %190 ]
  %198 = zext i1 %197 to i32
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %204, %208
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %209, %213
  %215 = add nsw i64 %214, 1
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 4
  store i64 %215, i64* %217, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @MAX_REFERENCES, align 8
  %222 = icmp sgt i64 %220, %221
  br i1 %222, label %223, label %237

223:                                              ; preds = %196
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %225 = load i32, i32* @AV_LOG_ERROR, align 4
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @av_log(%struct.TYPE_15__* %224, i32 %225, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i64 %229, i64 %233)
  %235 = load i32, i32* @ENOSYS, align 4
  %236 = call i32 @AVERROR(i32 %235)
  store i32 %236, i32* %2, align 4
  br label %238

237:                                              ; preds = %196
  store i32 0, i32* %2, align 4
  br label %238

238:                                              ; preds = %237, %223, %176, %154, %127, %35
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local i64 @vaQueryVideoProcFilterCaps(i32, i32, i32, %struct.TYPE_17__**, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i64, i64) #1

declare dso_local i64 @vaErrorStr(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @deint_vaapi_mode_name(i64) #1

declare dso_local i64 @ff_vaapi_vpp_make_param_buffers(%struct.TYPE_15__*, i32, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @vaQueryVideoProcPipelineCaps(i32, i32, i32*, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
