; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_xmedian.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_xmedian.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i8*, i8*, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__**, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32*, i32*, %struct.TYPE_18__, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Input %d size (%dx%d) does not match input %d size (%dx%d).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AVERROR_BUG = common dso_local global i32 0, align 4
@median_frames8 = common dso_local global i32 0, align 4
@median_frames16 = common dso_local global i32 0, align 4
@process_frame = common dso_local global i32 0, align 4
@EXT_STOP = common dso_local global i8* null, align 8
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
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %4, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %5, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %24, i64 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %31, i64 0
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %7, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %38, i64 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %8, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %43, i64 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %50, i64 0
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  store i32 1, i32* %14, align 4
  br label %55

55:                                               ; preds = %113, %1
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %116

61:                                               ; preds = %55
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %64, i64 %66
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %61
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %76, i64 %78
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %112

85:                                               ; preds = %73, %61
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %91, i64 %93
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %100, i64 %102
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @av_log(%struct.TYPE_17__* %86, i32 %87, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %97, i32 %106, i32 0, i32 %107, i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = call i32 @AVERROR(i32 %110)
  store i32 %111, i32* %2, align 4
  br label %326

112:                                              ; preds = %73
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %55

116:                                              ; preds = %55
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call %struct.TYPE_12__* @av_pix_fmt_desc_get(i32 %119)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 6
  store %struct.TYPE_12__* %120, %struct.TYPE_12__** %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 6
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = icmp ne %struct.TYPE_12__* %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %116
  %128 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %128, i32* %2, align 4
  br label %326

129:                                              ; preds = %116
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @av_pix_fmt_count_planes(i32 %132)
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 9
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 6
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 1, %148
  %150 = sub nsw i32 %149, 1
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sle i32 %155, 8
  br i1 %156, label %157, label %161

157:                                              ; preds = %129
  %158 = load i32, i32* @median_frames8, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 4
  br label %165

161:                                              ; preds = %129
  %162 = load i32, i32* @median_frames16, align 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 8
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %157
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @av_image_fill_linesizes(i32 %168, i32 %171, i32 %174)
  store i32 %175, i32* %13, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %165
  %178 = load i32, i32* %13, align 4
  store i32 %178, i32* %2, align 4
  br label %326

179:                                              ; preds = %165
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 6
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @AV_CEIL_RSHIFT(i32 %182, i32 %187)
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  store i32 %189, i32* %193, align 4
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  store i32 %189, i32* %197, align 4
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 3
  store i32 %200, i32* %204, align 4
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  store i32 %200, i32* %208, align 4
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 6
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i8* @AV_CEIL_RSHIFT(i32 %211, i32 %216)
  %218 = ptrtoint i8* %217 to i32
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 4
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  store i32 %218, i32* %222, align 4
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 4
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  store i32 %218, i32* %226, align 4
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 3
  store i32 %229, i32* %233, align 4
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  store i32 %229, i32* %237, align 4
  %238 = load i32, i32* %10, align 4
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %9, align 4
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  %244 = load i8*, i8** %6, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 4
  store i8* %244, i8** %246, align 8
  %247 = load i8*, i8** %7, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 3
  store i8* %247, i8** %249, align 8
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 5
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @ff_framesync_init(%struct.TYPE_18__* %251, %struct.TYPE_17__* %252, i32 %255)
  store i32 %256, i32* %13, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %179
  %259 = load i32, i32* %13, align 4
  store i32 %259, i32* %2, align 4
  br label %326

260:                                              ; preds = %179
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 3
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %263, align 8
  store %struct.TYPE_15__* %264, %struct.TYPE_15__** %11, align 8
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 2
  store %struct.TYPE_14__* %265, %struct.TYPE_14__** %268, align 8
  %269 = load i32, i32* @process_frame, align 4
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 1
  store i32 %269, i32* %272, align 4
  store i32 0, i32* %12, align 4
  br label %273

273:                                              ; preds = %312, %260
  %274 = load i32, i32* %12, align 4
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp slt i32 %274, %277
  br i1 %278, label %279, label %315

279:                                              ; preds = %273
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %281, align 8
  %283 = load i32, i32* %12, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %282, i64 %284
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %285, align 8
  store %struct.TYPE_16__* %286, %struct.TYPE_16__** %15, align 8
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %291 = load i32, i32* %12, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 3
  store i32 %289, i32* %294, align 8
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %296 = load i32, i32* %12, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  store i32 1, i32* %299, align 8
  %300 = load i8*, i8** @EXT_STOP, align 8
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %302 = load i32, i32* %12, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 2
  store i8* %300, i8** %305, align 8
  %306 = load i8*, i8** @EXT_STOP, align 8
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 1
  store i8* %306, i8** %311, align 8
  br label %312

312:                                              ; preds = %279
  %313 = load i32, i32* %12, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %12, align 4
  br label %273

315:                                              ; preds = %273
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 5
  %318 = call i32 @ff_framesync_configure(%struct.TYPE_18__* %317)
  store i32 %318, i32* %13, align 4
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 5
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 2
  store i32 %322, i32* %324, align 8
  %325 = load i32, i32* %13, align 4
  store i32 %325, i32* %2, align 4
  br label %326

326:                                              ; preds = %315, %258, %177, %127, %85
  %327 = load i32, i32* %2, align 4
  ret i32 %327
}

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_12__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i32 @av_image_fill_linesizes(i32, i32, i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @ff_framesync_init(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ff_framesync_configure(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
