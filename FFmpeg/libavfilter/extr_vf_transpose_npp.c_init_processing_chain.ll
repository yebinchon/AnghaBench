; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_transpose_npp.c_init_processing_chain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_transpose_npp.c_init_processing_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__**, %struct.TYPE_16__**, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"No hw context provided on input\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported input format: %s\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@NPP_TRANSPOSE_CCLOCK_FLIP = common dso_local global i64 0, align 8
@STAGE_ROTATE = common dso_local global i64 0, align 8
@NPP_TRANSPOSE_CLOCK_FLIP = common dso_local global i64 0, align 8
@STAGE_TRANSPOSE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32, i32, i32, i32)* @init_processing_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_processing_chain(%struct.TYPE_20__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %12, align 8
  store i32 -1, i32* %17, align 4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %19, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %27, i64 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %5
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %34, i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %294

39:                                               ; preds = %5
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %42, i64 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %13, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @format_is_supported(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %39
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @av_get_pix_fmt_name(i32 %59)
  %61 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %57, i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ENOSYS, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %6, align 4
  br label %294

64:                                               ; preds = %39
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NPP_TRANSPOSE_CCLOCK_FLIP, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %72, align 8
  %74 = load i64, i64* @STAGE_ROTATE, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %70, %64
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NPP_TRANSPOSE_CCLOCK_FLIP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NPP_TRANSPOSE_CLOCK_FLIP, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %83, %77
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %91, align 8
  %93 = load i64, i64* @STAGE_TRANSPOSE, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %19, align 4
  br label %98

98:                                               ; preds = %89, %83
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %101, align 8
  %103 = load i64, i64* @STAGE_ROTATE, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  store i32 %99, i32* %105, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = load i64, i64* @STAGE_ROTATE, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 2
  store i32 %106, i32* %112, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %115, align 8
  %117 = load i64, i64* @STAGE_ROTATE, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 5
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store i32 %113, i32* %122, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = load i64, i64* @STAGE_ROTATE, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  store i32 %123, i32* %132, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  %137 = load i64, i64* @STAGE_ROTATE, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  store i32 %133, i32* %142, align 4
  %143 = load i32, i32* %19, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %145, align 8
  %147 = load i64, i64* @STAGE_ROTATE, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  store i32 %143, i32* %152, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %155, align 8
  %157 = load i64, i64* @STAGE_TRANSPOSE, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 1
  store i32 %153, i32* %159, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %162, align 8
  %164 = load i64, i64* @STAGE_TRANSPOSE, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 2
  store i32 %160, i32* %166, align 8
  %167 = load i32, i32* %18, align 4
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  %171 = load i64, i64* @STAGE_TRANSPOSE, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 5
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  store i32 %167, i32* %176, align 4
  %177 = load i32, i32* %19, align 4
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %179, align 8
  %181 = load i64, i64* @STAGE_TRANSPOSE, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 5
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  store i32 %177, i32* %186, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %189, align 8
  %191 = load i64, i64* @STAGE_TRANSPOSE, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  store i32 %187, i32* %196, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %199, align 8
  %201 = load i64, i64* @STAGE_TRANSPOSE, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 4
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  store i32 %197, i32* %206, align 4
  store i32 0, i32* %15, align 4
  br label %207

207:                                              ; preds = %242, %98
  %208 = load i32, i32* %15, align 4
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %210, align 8
  %212 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_21__* %211)
  %213 = icmp slt i32 %208, %212
  br i1 %213, label %214, label %245

214:                                              ; preds = %207
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %214
  br label %242

225:                                              ; preds = %214
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %227, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i64 %230
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @init_stage(%struct.TYPE_21__* %231, i32 %234)
  store i32 %235, i32* %16, align 4
  %236 = load i32, i32* %16, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %225
  %239 = load i32, i32* %16, align 4
  store i32 %239, i32* %6, align 4
  br label %294

240:                                              ; preds = %225
  %241 = load i32, i32* %15, align 4
  store i32 %241, i32* %17, align 4
  br label %242

242:                                              ; preds = %240, %224
  %243 = load i32, i32* %15, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %15, align 4
  br label %207

245:                                              ; preds = %207
  %246 = load i32, i32* %17, align 4
  %247 = icmp sge i32 %246, 0
  br i1 %247, label %248, label %264

248:                                              ; preds = %245
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %250, align 8
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 3
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %255, align 8
  %257 = call i8* @av_buffer_ref(%struct.TYPE_13__* %256)
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %260, i64 0
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 0
  store i8* %257, i8** %263, align 8
  br label %281

264:                                              ; preds = %245
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %267, i64 0
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  %272 = call i8* @av_buffer_ref(%struct.TYPE_13__* %271)
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %275, i64 0
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 0
  store i8* %272, i8** %278, align 8
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 1
  store i32 1, i32* %280, align 8
  br label %281

281:                                              ; preds = %264, %248
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %284, i64 0
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %293, label %290

290:                                              ; preds = %281
  %291 = load i32, i32* @ENOMEM, align 4
  %292 = call i32 @AVERROR(i32 %291)
  store i32 %292, i32* %6, align 4
  br label %294

293:                                              ; preds = %281
  store i32 0, i32* %6, align 4
  br label %294

294:                                              ; preds = %293, %290, %238, %56, %33
  %295 = load i32, i32* %6, align 4
  ret i32 %295
}

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @format_is_supported(i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_21__*) #1

declare dso_local i32 @init_stage(%struct.TYPE_21__*, i32) #1

declare dso_local i8* @av_buffer_ref(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
