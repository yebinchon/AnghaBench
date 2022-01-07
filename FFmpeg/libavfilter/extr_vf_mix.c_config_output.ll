; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_mix.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_mix.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i8*, i8*, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__**, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_18__, i64, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Input %d size (%dx%d) does not match input %d size (%dx%d).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AVERROR_BUG = common dso_local global i32 0, align 4
@process_frame = common dso_local global i32 0, align 4
@EXT_STOP = common dso_local global i8* null, align 8
@EXT_INFINITY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_output(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %4, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %5, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %23, i64 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %6, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %30, i64 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %7, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %37, i64 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %8, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %42, i64 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %9, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %49, i64 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %121, label %58

58:                                               ; preds = %1
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %117, %58
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %120

65:                                               ; preds = %59
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %68, i64 %70
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %65
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %80, i64 %82
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %77, %65
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = load i32, i32* @AV_LOG_ERROR, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %95, i64 %97
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %104, i64 %106
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @av_log(%struct.TYPE_17__* %90, i32 %91, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %101, i32 %110, i32 0, i32 %111, i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = call i32 @AVERROR(i32 %114)
  store i32 %115, i32* %2, align 4
  br label %311

116:                                              ; preds = %77
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %59

120:                                              ; preds = %59
  br label %121

121:                                              ; preds = %120, %1
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call %struct.TYPE_12__* @av_pix_fmt_desc_get(i32 %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 7
  store %struct.TYPE_12__* %125, %struct.TYPE_12__** %127, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 7
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = icmp ne %struct.TYPE_12__* %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %121
  %133 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %133, i32* %2, align 4
  br label %311

134:                                              ; preds = %121
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @av_pix_fmt_count_planes(i32 %137)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 9
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 7
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 1, %153
  %155 = sub nsw i32 %154, 1
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @av_image_fill_linesizes(i32 %160, i32 %163, i32 %166)
  store i32 %167, i32* %13, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %134
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %2, align 4
  br label %311

171:                                              ; preds = %134
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 7
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @AV_CEIL_RSHIFT(i32 %174, i32 %179)
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  store i32 %180, i32* %184, align 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  store i32 %180, i32* %188, align 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  store i32 %191, i32* %195, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 %191, i32* %199, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 6
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %171
  store i32 0, i32* %2, align 4
  br label %311

205:                                              ; preds = %171
  %206 = load i32, i32* %10, align 4
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load i8*, i8** %6, align 8
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 4
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** %7, align 8
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 3
  store i8* %215, i8** %217, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 5
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @ff_framesync_init(%struct.TYPE_18__* %219, %struct.TYPE_17__* %220, i32 %223)
  store i32 %224, i32* %13, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %205
  %227 = load i32, i32* %13, align 4
  store i32 %227, i32* %2, align 4
  br label %311

228:                                              ; preds = %205
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %231, align 8
  store %struct.TYPE_15__* %232, %struct.TYPE_15__** %11, align 8
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 2
  store %struct.TYPE_14__* %233, %struct.TYPE_14__** %236, align 8
  %237 = load i32, i32* @process_frame, align 4
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 1
  store i32 %237, i32* %240, align 4
  store i32 0, i32* %12, align 4
  br label %241

241:                                              ; preds = %297, %228
  %242 = load i32, i32* %12, align 4
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %300

247:                                              ; preds = %241
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %249, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %250, i64 %252
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %253, align 8
  store %struct.TYPE_16__* %254, %struct.TYPE_16__** %14, align 8
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %259 = load i32, i32* %12, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 3
  store i32 %257, i32* %262, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %264 = load i32, i32* %12, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 0
  store i32 1, i32* %267, align 8
  %268 = load i8*, i8** @EXT_STOP, align 8
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 2
  store i8* %268, i8** %273, align 8
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %286, label %278

278:                                              ; preds = %247
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = icmp eq i32 %281, 2
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load i32, i32* %12, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %283, %247
  %287 = load i8*, i8** @EXT_STOP, align 8
  br label %290

288:                                              ; preds = %283, %278
  %289 = load i8*, i8** @EXT_INFINITY, align 8
  br label %290

290:                                              ; preds = %288, %286
  %291 = phi i8* [ %287, %286 ], [ %289, %288 ]
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %293 = load i32, i32* %12, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 1
  store i8* %291, i8** %296, align 8
  br label %297

297:                                              ; preds = %290
  %298 = load i32, i32* %12, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %12, align 4
  br label %241

300:                                              ; preds = %241
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 5
  %303 = call i32 @ff_framesync_configure(%struct.TYPE_18__* %302)
  store i32 %303, i32* %13, align 4
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 5
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 2
  store i32 %307, i32* %309, align 8
  %310 = load i32, i32* %13, align 4
  store i32 %310, i32* %2, align 4
  br label %311

311:                                              ; preds = %300, %226, %204, %169, %132, %89
  %312 = load i32, i32* %2, align 4
  ret i32 %312
}

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_12__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i32 @av_image_fill_linesizes(i32, i32, i32) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @ff_framesync_init(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ff_framesync_configure(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
