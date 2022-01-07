; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsv.c_qsv_frame_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsv.c_qsv_frame_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64, i64, i64 }
%struct.TYPE_23__ = type { i64, i64, i32, i32, i32, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_20__ }

@MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET = common dso_local global i32 0, align 4
@MFX_MEMTYPE_VIDEO_MEMORY_PROCESSOR_TARGET = common dso_local global i32 0, align 4
@MFX_MEMTYPE_FROM_DECODE = common dso_local global i32 0, align 4
@MFX_MEMTYPE_FROM_ENCODE = common dso_local global i32 0, align 4
@MFX_ERR_UNSUPPORTED = common dso_local global i32 0, align 4
@MFX_MEMTYPE_EXTERNAL_FRAME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"Mismatching surface properties in an allocation request: %dx%d %d %d vs %dx%d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Error filling an external frame allocation request\0A\00", align 1
@MFX_ERR_MEMORY_ALLOC = common dso_local global i32 0, align 4
@MFX_MEMTYPE_INTERNAL_FRAME = common dso_local global i32 0, align 4
@AV_PIX_FMT_QSV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"Error initializing a frames context for an internal frame allocation request\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Error filling an internal frame allocation request\0A\00", align 1
@MFX_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_21__*, i32*)* @qsv_frame_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_frame_alloc(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %8, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET, align 4
  %25 = load i32, i32* @MFX_MEMTYPE_VIDEO_MEMORY_PROCESSOR_TARGET, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MFX_MEMTYPE_FROM_DECODE, align 4
  %34 = load i32, i32* @MFX_MEMTYPE_FROM_ENCODE, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %29, %3
  %39 = load i32, i32* @MFX_ERR_UNSUPPORTED, align 4
  store i32 %39, i32* %4, align 4
  br label %248

40:                                               ; preds = %29
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MFX_MEMTYPE_EXTERNAL_FRAME, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %145

47:                                               ; preds = %40
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %53, %struct.TYPE_23__** %10, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 5
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  store %struct.TYPE_22__* %56, %struct.TYPE_22__** %11, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 2
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %12, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  store %struct.TYPE_20__* %63, %struct.TYPE_20__** %13, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %95, label %71

71:                                               ; preds = %47
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %74, %77
  br i1 %78, label %95, label %79

79:                                               ; preds = %71
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %79
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %126

95:                                               ; preds = %87, %79, %71, %47
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i32 (i32, i32, i8*, ...) @av_log(i32 %98, i32 %99, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i64 %102, i64 %105, i64 %108, i64 %111, i64 %114, i64 %117, i64 %120, i64 %123)
  %125 = load i32, i32* @MFX_ERR_UNSUPPORTED, align 4
  store i32 %125, i32* %4, align 4
  br label %248

126:                                              ; preds = %87
  %127 = load i32*, i32** %7, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %129, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %132, align 8
  %134 = call i32 @qsv_setup_mids(i32* %127, %struct.TYPE_24__* %130, %struct.TYPE_24__* %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %126
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @AV_LOG_ERROR, align 4
  %142 = call i32 (i32, i32, i8*, ...) @av_log(i32 %140, i32 %141, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %143 = load i32, i32* @MFX_ERR_MEMORY_ALLOC, align 4
  store i32 %143, i32* %4, align 4
  br label %248

144:                                              ; preds = %126
  br label %246

145:                                              ; preds = %40
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @MFX_MEMTYPE_INTERNAL_FRAME, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %243

152:                                              ; preds = %145
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %158, %struct.TYPE_23__** %14, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 2
  store %struct.TYPE_20__* %160, %struct.TYPE_20__** %15, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = call %struct.TYPE_24__* @av_hwframe_ctx_alloc(i32 %163)
  store %struct.TYPE_24__* %164, %struct.TYPE_24__** %16, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %166 = icmp ne %struct.TYPE_24__* %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %152
  %168 = load i32, i32* @MFX_ERR_MEMORY_ALLOC, align 4
  store i32 %168, i32* %4, align 4
  br label %248

169:                                              ; preds = %152
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %173, %struct.TYPE_23__** %18, align 8
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  store %struct.TYPE_22__* %176, %struct.TYPE_22__** %19, align 8
  %177 = load i32, i32* @AV_PIX_FMT_QSV, align 4
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @ff_qsv_map_fourcc(i64 %182)
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 1
  store i64 %193, i64* %195, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %207 = call i32 @av_hwframe_ctx_init(%struct.TYPE_24__* %206)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %169
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @AV_LOG_ERROR, align 4
  %215 = call i32 (i32, i32, i8*, ...) @av_log(i32 %213, i32 %214, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  %216 = call i32 @av_buffer_unref(%struct.TYPE_24__** %16)
  %217 = load i32, i32* @MFX_ERR_MEMORY_ALLOC, align 4
  store i32 %217, i32* %4, align 4
  br label %248

218:                                              ; preds = %169
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %220 = call %struct.TYPE_24__* @qsv_create_mids(%struct.TYPE_24__* %219)
  store %struct.TYPE_24__* %220, %struct.TYPE_24__** %17, align 8
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %222 = icmp ne %struct.TYPE_24__* %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %218
  %224 = call i32 @av_buffer_unref(%struct.TYPE_24__** %16)
  %225 = load i32, i32* @MFX_ERR_MEMORY_ALLOC, align 4
  store i32 %225, i32* %4, align 4
  br label %248

226:                                              ; preds = %218
  %227 = load i32*, i32** %7, align 8
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %230 = call i32 @qsv_setup_mids(i32* %227, %struct.TYPE_24__* %228, %struct.TYPE_24__* %229)
  store i32 %230, i32* %9, align 4
  %231 = call i32 @av_buffer_unref(%struct.TYPE_24__** %17)
  %232 = call i32 @av_buffer_unref(%struct.TYPE_24__** %16)
  %233 = load i32, i32* %9, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %226
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @AV_LOG_ERROR, align 4
  %240 = call i32 (i32, i32, i8*, ...) @av_log(i32 %238, i32 %239, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %241 = load i32, i32* @MFX_ERR_MEMORY_ALLOC, align 4
  store i32 %241, i32* %4, align 4
  br label %248

242:                                              ; preds = %226
  br label %245

243:                                              ; preds = %145
  %244 = load i32, i32* @MFX_ERR_UNSUPPORTED, align 4
  store i32 %244, i32* %4, align 4
  br label %248

245:                                              ; preds = %242
  br label %246

246:                                              ; preds = %245, %144
  %247 = load i32, i32* @MFX_ERR_NONE, align 4
  store i32 %247, i32* %4, align 4
  br label %248

248:                                              ; preds = %246, %243, %235, %223, %210, %167, %137, %95, %38
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @qsv_setup_mids(i32*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @av_hwframe_ctx_alloc(i32) #1

declare dso_local i32 @ff_qsv_map_fourcc(i64) #1

declare dso_local i32 @av_hwframe_ctx_init(%struct.TYPE_24__*) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_24__**) #1

declare dso_local %struct.TYPE_24__* @qsv_create_mids(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
