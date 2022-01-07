; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hwmap.c_hwmap_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hwmap.c_hwmap_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i32, %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_24__*, %struct.TYPE_22__**, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_24__*, i32, i64 }
%struct.TYPE_21__ = type { i64, i64, i64, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_20__ = type { i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Configure hwmap %s -> %s.\0A\00", align 1
@AV_HWDEVICE_TYPE_NONE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid device type.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to created derived device context: %d.\0A\00", align 1
@AV_PIX_FMT_FLAG_HWACCEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"A device reference is required to map to a hardware format.\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed to create derived frames context: %d.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"Failed to initialise target frames context: %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Failed to create derived source frames context: %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Unsupported formats for hwmap: from %s (%s) to %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"A device reference is required to create new frames with reverse mapping.\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Failed to create frame context for reverse mapping: %d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"Mapping requires a hardware context (a device, or frames on input).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @hwmap_config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwmap_config_output(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %4, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %5, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %23, i64 0
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %6, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %27 = load i32, i32* @AV_LOG_DEBUG, align 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @av_get_pix_fmt_name(i64 %30)
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @av_get_pix_fmt_name(i64 %34)
  %36 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %26, i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35)
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = call i32 @av_buffer_unref(%struct.TYPE_24__** %38)
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %41, align 8
  store %struct.TYPE_24__* %42, %struct.TYPE_24__** %8, align 8
  store i32 0, i32* %11, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %44, align 8
  %46 = icmp ne %struct.TYPE_24__* %45, null
  br i1 %46, label %47, label %319

47:                                               ; preds = %1
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %53, %struct.TYPE_21__** %7, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %47
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @av_hwdevice_find_type_by_name(i64 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @AV_HWDEVICE_TYPE_NONE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %67, i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %10, align 4
  br label %437

72:                                               ; preds = %58
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %75, align 8
  %77 = call i32 @av_hwdevice_ctx_create_derived(%struct.TYPE_24__** %8, i32 %73, %struct.TYPE_24__* %76, i32 0)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %81, i32 %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %437

85:                                               ; preds = %72
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %85, %47
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call %struct.TYPE_20__* @av_pix_fmt_desc_get(i64 %89)
  store %struct.TYPE_20__* %90, %struct.TYPE_20__** %9, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %92 = icmp ne %struct.TYPE_20__* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* @EINVAL, align 4
  %95 = call i32 @AVERROR(i32 %94)
  store i32 %95, i32* %10, align 4
  br label %437

96:                                               ; preds = %86
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %147

104:                                              ; preds = %96
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %147

111:                                              ; preds = %104
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %147, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %118 = icmp ne %struct.TYPE_24__* %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %116
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %121 = load i32, i32* @AV_LOG_ERROR, align 4
  %122 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %120, i32 %121, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  %124 = call i32 @AVERROR(i32 %123)
  store i32 %124, i32* %10, align 4
  br label %437

125:                                              ; preds = %116
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @av_hwframe_ctx_create_derived(%struct.TYPE_24__** %127, i64 %130, %struct.TYPE_24__* %131, %struct.TYPE_24__* %134, i32 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %125
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %143 = load i32, i32* @AV_LOG_ERROR, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %142, i32 %143, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  br label %437

146:                                              ; preds = %125
  br label %318

147:                                              ; preds = %111, %104, %96
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %150, %153
  br i1 %154, label %155, label %258

155:                                              ; preds = %147
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %258

162:                                              ; preds = %155
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %258

167:                                              ; preds = %162
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %169 = call i8* @av_hwframe_ctx_alloc(%struct.TYPE_24__* %168)
  %170 = bitcast i8* %169 to %struct.TYPE_24__*
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 1
  store %struct.TYPE_24__* %170, %struct.TYPE_24__** %172, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %174, align 8
  %176 = icmp ne %struct.TYPE_24__* %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %167
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = call i32 @AVERROR(i32 %178)
  store i32 %179, i32* %10, align 4
  br label %437

180:                                              ; preds = %167
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %186, %struct.TYPE_21__** %14, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 1
  store i64 %194, i64* %196, align 8
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 4
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 8
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp sge i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %180
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 2, %214
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 2
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %211, %180
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %220, align 8
  %222 = call i32 @av_hwframe_ctx_init(%struct.TYPE_24__* %221)
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %218
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %227 = load i32, i32* @AV_LOG_ERROR, align 4
  %228 = load i32, i32* %10, align 4
  %229 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %226, i32 %227, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %228)
  br label %437

230:                                              ; preds = %218
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 5
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %235, align 8
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %238, align 8
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @av_hwframe_ctx_create_derived(%struct.TYPE_24__** %13, i64 %233, %struct.TYPE_24__* %236, %struct.TYPE_24__* %239, i32 %242)
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %230
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %248 = load i32, i32* @AV_LOG_ERROR, align 4
  %249 = load i32, i32* %10, align 4
  %250 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %247, i32 %248, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %249)
  br label %437

251:                                              ; preds = %230
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 3
  %254 = call i32 @av_buffer_unref(%struct.TYPE_24__** %253)
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 3
  store %struct.TYPE_24__* %255, %struct.TYPE_24__** %257, align 8
  br label %317

258:                                              ; preds = %162, %155, %147
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %261, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %258
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp eq i64 %269, %272
  br i1 %273, label %282, label %274

274:                                              ; preds = %266, %258
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp eq i64 %277, %280
  br i1 %281, label %282, label %298

282:                                              ; preds = %274, %266
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 3
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %284, align 8
  %286 = call i8* @av_buffer_ref(%struct.TYPE_24__* %285)
  %287 = bitcast i8* %286 to %struct.TYPE_24__*
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 1
  store %struct.TYPE_24__* %287, %struct.TYPE_24__** %289, align 8
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %291, align 8
  %293 = icmp ne %struct.TYPE_24__* %292, null
  br i1 %293, label %297, label %294

294:                                              ; preds = %282
  %295 = load i32, i32* @ENOMEM, align 4
  %296 = call i32 @AVERROR(i32 %295)
  store i32 %296, i32* %10, align 4
  br label %437

297:                                              ; preds = %282
  br label %316

298:                                              ; preds = %274
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %300 = load i32, i32* @AV_LOG_ERROR, align 4
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @av_get_pix_fmt_name(i64 %303)
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = call i32 @av_get_pix_fmt_name(i64 %307)
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = call i32 @av_get_pix_fmt_name(i64 %311)
  %313 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %299, i32 %300, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %304, i32 %308, i32 %312)
  %314 = load i32, i32* @EINVAL, align 4
  %315 = call i32 @AVERROR(i32 %314)
  store i32 %315, i32* %10, align 4
  br label %437

316:                                              ; preds = %297
  br label %317

317:                                              ; preds = %316, %251
  br label %318

318:                                              ; preds = %317, %146
  br label %406

319:                                              ; preds = %1
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %321, align 8
  %323 = icmp ne %struct.TYPE_24__* %322, null
  br i1 %323, label %324, label %399

324:                                              ; preds = %319
  %325 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %326 = icmp ne %struct.TYPE_24__* %325, null
  br i1 %326, label %333, label %327

327:                                              ; preds = %324
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %329 = load i32, i32* @AV_LOG_ERROR, align 4
  %330 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %328, i32 %329, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0))
  %331 = load i32, i32* @EINVAL, align 4
  %332 = call i32 @AVERROR(i32 %331)
  store i32 %332, i32* %10, align 4
  br label %437

333:                                              ; preds = %324
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 0
  store i32 1, i32* %335, align 8
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %337 = call i8* @av_hwframe_ctx_alloc(%struct.TYPE_24__* %336)
  %338 = bitcast i8* %337 to %struct.TYPE_24__*
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 1
  store %struct.TYPE_24__* %338, %struct.TYPE_24__** %340, align 8
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_24__*, %struct.TYPE_24__** %342, align 8
  %344 = icmp ne %struct.TYPE_24__* %343, null
  br i1 %344, label %348, label %345

345:                                              ; preds = %333
  %346 = load i32, i32* @ENOMEM, align 4
  %347 = call i32 @AVERROR(i32 %346)
  store i32 %347, i32* %10, align 4
  br label %437

348:                                              ; preds = %333
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_24__*, %struct.TYPE_24__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = inttoptr i64 %353 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %354, %struct.TYPE_21__** %7, align 8
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 0
  store i64 %357, i64* %359, align 8
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %363, i32 0, i32 1
  store i64 %362, i64* %364, align 8
  %365 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 4
  store i32 %367, i32* %369, align 4
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %373, i32 0, i32 3
  store i32 %372, i32* %374, align 8
  %375 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = icmp sge i64 %377, 0
  br i1 %378, label %379, label %386

379:                                              ; preds = %348
  %380 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 2, %382
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %384, i32 0, i32 2
  store i64 %383, i64* %385, align 8
  br label %386

386:                                              ; preds = %379, %348
  %387 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_24__*, %struct.TYPE_24__** %388, align 8
  %390 = call i32 @av_hwframe_ctx_init(%struct.TYPE_24__* %389)
  store i32 %390, i32* %10, align 4
  %391 = load i32, i32* %10, align 4
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %393, label %398

393:                                              ; preds = %386
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %395 = load i32, i32* @AV_LOG_ERROR, align 4
  %396 = load i32, i32* %10, align 4
  %397 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %394, i32 %395, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i32 %396)
  br label %437

398:                                              ; preds = %386
  br label %405

399:                                              ; preds = %319
  %400 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %401 = load i32, i32* @AV_LOG_ERROR, align 4
  %402 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %400, i32 %401, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0))
  %403 = load i32, i32* @EINVAL, align 4
  %404 = call i32 @AVERROR(i32 %403)
  store i32 %404, i32* %2, align 4
  br label %447

405:                                              ; preds = %398
  br label %406

406:                                              ; preds = %405, %318
  %407 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 1
  %409 = load %struct.TYPE_24__*, %struct.TYPE_24__** %408, align 8
  %410 = call i8* @av_buffer_ref(%struct.TYPE_24__* %409)
  %411 = bitcast i8* %410 to %struct.TYPE_24__*
  %412 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 3
  store %struct.TYPE_24__* %411, %struct.TYPE_24__** %413, align 8
  %414 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %414, i32 0, i32 3
  %416 = load %struct.TYPE_24__*, %struct.TYPE_24__** %415, align 8
  %417 = icmp ne %struct.TYPE_24__* %416, null
  br i1 %417, label %421, label %418

418:                                              ; preds = %406
  %419 = load i32, i32* @ENOMEM, align 4
  %420 = call i32 @AVERROR(i32 %419)
  store i32 %420, i32* %10, align 4
  br label %437

421:                                              ; preds = %406
  %422 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %425, i32 0, i32 2
  store i32 %424, i32* %426, align 4
  %427 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %430, i32 0, i32 1
  store i32 %429, i32* %431, align 8
  %432 = load i32, i32* %11, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %421
  %435 = call i32 @av_buffer_unref(%struct.TYPE_24__** %8)
  br label %436

436:                                              ; preds = %434, %421
  store i32 0, i32* %2, align 4
  br label %447

437:                                              ; preds = %418, %393, %345, %327, %298, %294, %246, %225, %177, %141, %119, %93, %80, %66
  %438 = load i32, i32* %11, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %437
  %441 = call i32 @av_buffer_unref(%struct.TYPE_24__** %8)
  br label %442

442:                                              ; preds = %440, %437
  %443 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %443, i32 0, i32 1
  %445 = call i32 @av_buffer_unref(%struct.TYPE_24__** %444)
  %446 = load i32, i32* %10, align 4
  store i32 %446, i32* %2, align 4
  br label %447

447:                                              ; preds = %442, %436, %399
  %448 = load i32, i32* %2, align 4
  ret i32 %448
}

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*, ...) #1

declare dso_local i32 @av_get_pix_fmt_name(i64) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_24__**) #1

declare dso_local i32 @av_hwdevice_find_type_by_name(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_hwdevice_ctx_create_derived(%struct.TYPE_24__**, i32, %struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_20__* @av_pix_fmt_desc_get(i64) #1

declare dso_local i32 @av_hwframe_ctx_create_derived(%struct.TYPE_24__**, i64, %struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

declare dso_local i8* @av_hwframe_ctx_alloc(%struct.TYPE_24__*) #1

declare dso_local i32 @av_hwframe_ctx_init(%struct.TYPE_24__*) #1

declare dso_local i8* @av_buffer_ref(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
