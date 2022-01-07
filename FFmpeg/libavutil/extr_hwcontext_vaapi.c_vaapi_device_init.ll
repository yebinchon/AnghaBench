; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_vaapi.c_vaapi_device_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_vaapi.c_vaapi_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Format %#x -> unknown.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Format %#x -> %s.\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"VAAPI driver: %s.\0A\00", align 1
@AV_VAAPI_DRIVER_QUIRK_USER_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Using quirks set by user (%#x).\0A\00", align 1
@vaapi_driver_quirks_table = common dso_local global %struct.TYPE_19__* null, align 8
@.str.4 = private unnamed_addr constant [79 x i8] c"Matched driver string as known nonstandard driver \22%s\22, setting quirks (%#x).\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"Driver not found in known nonstandard list, using standard behaviour.\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Driver has no vendor string, assuming standard behaviour.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @vaapi_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vaapi_device_init(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %4, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vaMaxNumImageFormats(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EIO, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %9, align 4
  br label %228

31:                                               ; preds = %1
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i8* @av_malloc(i32 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %6, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %9, align 4
  br label %228

43:                                               ; preds = %31
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = call i64 @vaQueryImageFormats(i32 %46, %struct.TYPE_15__* %47, i32* %11)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EIO, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %9, align 4
  br label %228

55:                                               ; preds = %43
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i8* @av_malloc(i32 %59)
  %61 = bitcast i8* %60 to %struct.TYPE_13__*
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %63, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = icmp ne %struct.TYPE_13__* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %55
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %9, align 4
  br label %228

71:                                               ; preds = %55
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %130, %71
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %133

78:                                               ; preds = %74
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @vaapi_pix_fmt_from_fourcc(i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %78
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %92 = load i32, i32* @AV_LOG_DEBUG, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %91, i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %129

95:                                               ; preds = %78
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = load i32, i32* @AV_LOG_DEBUG, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @av_get_pix_fmt_name(i32 %99)
  %101 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %96, i32 %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i32 %102, i32* %110, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i64 %121
  %123 = bitcast %struct.TYPE_15__* %118 to i8*
  %124 = bitcast %struct.TYPE_15__* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 4, i1 false)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %95, %90
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %74

133:                                              ; preds = %74
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @vaQueryVendorString(i32 %136)
  store i8* %137, i8** %8, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %142 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %143 = load i8*, i8** %8, align 8
  %144 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %141, i32 %142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %140, %133
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @AV_VAAPI_DRIVER_QUIRK_USER_SET, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %154 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %153, i32 %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  br label %225

159:                                              ; preds = %145
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  store i32 0, i32* %161, align 4
  %162 = load i8*, i8** %8, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %220

164:                                              ; preds = %159
  store i32 0, i32* %10, align 4
  br label %165

165:                                              ; preds = %207, %164
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vaapi_driver_quirks_table, align 8
  %168 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_19__* %167)
  %169 = icmp slt i32 %166, %168
  br i1 %169, label %170, label %210

170:                                              ; preds = %165
  %171 = load i8*, i8** %8, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vaapi_driver_quirks_table, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @strstr(i8* %171, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %206

180:                                              ; preds = %170
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %182 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vaapi_driver_quirks_table, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vaapi_driver_quirks_table, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %181, i32 %182, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %188, i32 %194)
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vaapi_driver_quirks_table, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 4
  br label %210

206:                                              ; preds = %170
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %165

210:                                              ; preds = %180, %165
  %211 = load i32, i32* %10, align 4
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vaapi_driver_quirks_table, align 8
  %213 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_19__* %212)
  %214 = icmp slt i32 %211, %213
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %217 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %218 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %216, i32 %217, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  br label %219

219:                                              ; preds = %215, %210
  br label %224

220:                                              ; preds = %159
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %222 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %223 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %221, i32 %222, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  br label %224

224:                                              ; preds = %220, %219
  br label %225

225:                                              ; preds = %224, %152
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %227 = call i32 @av_free(%struct.TYPE_15__* %226)
  store i32 0, i32* %2, align 4
  br label %235

228:                                              ; preds = %68, %52, %40, %28
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = call i32 @av_freep(%struct.TYPE_13__** %230)
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %233 = call i32 @av_free(%struct.TYPE_15__* %232)
  %234 = load i32, i32* %9, align 4
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %228, %225
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32 @vaMaxNumImageFormats(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i64 @vaQueryImageFormats(i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @vaapi_pix_fmt_from_fourcc(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @vaQueryVendorString(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_19__*) #1

declare dso_local i64 @strstr(i8*, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_15__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_13__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
