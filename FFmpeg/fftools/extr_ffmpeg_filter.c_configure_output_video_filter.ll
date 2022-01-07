; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_configure_output_video_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_configure_output_video_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32, i32 }

@output_files = common dso_local global %struct.TYPE_18__** null, align 8
@.str = private unnamed_addr constant [10 x i8] c"out_%d_%d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"buffersink\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c":%s=%s\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"scaler_out_%d_%d\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"format_out_%d_%d\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"fps=%d/%d\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"fps_out_%d_%d\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"trim_out_%d_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_20__*)* @configure_output_video_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_output_video_filter(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [255 x i8], align 16
  %15 = alloca [255 x i8], align 16
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca [255 x i8], align 16
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %9, align 8
  %24 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @output_files, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %24, i64 %27
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %10, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %11, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  %36 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @snprintf(i8* %36, i32 255, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = call i32 @avfilter_get_by_name(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %47 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @avfilter_graph_create_filter(i32** %45, i32 %46, i8* %47, i8* null, i32* null, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %3
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %4, align 4
  br label %235

56:                                               ; preds = %3
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %121

66:                                               ; preds = %61, %56
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %17, align 8
  %67 = getelementptr inbounds [255 x i8], [255 x i8]* %15, i64 0, i64 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @snprintf(i8* %67, i32 255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %70, i32 %73)
  br label %75

75:                                               ; preds = %83, %66
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %80 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %81 = call %struct.TYPE_21__* @av_dict_get(i32 %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_21__* %79, i32 %80)
  store %struct.TYPE_21__* %81, %struct.TYPE_21__** %17, align 8
  %82 = icmp ne %struct.TYPE_21__* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %75
  %84 = getelementptr inbounds [255 x i8], [255 x i8]* %15, i64 0, i64 0
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @av_strlcatf(i8* %84, i32 255, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %90)
  br label %75

92:                                               ; preds = %75
  %93 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @snprintf(i8* %93, i32 255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %96, i32 %99)
  %101 = call i32 @avfilter_get_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %102 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %103 = getelementptr inbounds [255 x i8], [255 x i8]* %15, i64 0, i64 0
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @avfilter_graph_create_filter(i32** %16, i32 %101, i8* %102, i8* %103, i32* null, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %92
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %4, align 4
  br label %235

111:                                              ; preds = %92
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load i32*, i32** %16, align 8
  %115 = call i32 @avfilter_link(i32* %112, i32 %113, i32* %114, i32 0)
  store i32 %115, i32* %13, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %4, align 4
  br label %235

119:                                              ; preds = %111
  %120 = load i32*, i32** %16, align 8
  store i32* %120, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %119, %61
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %123 = call i8* @choose_pix_fmts(%struct.TYPE_17__* %122)
  store i8* %123, i8** %8, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %155

125:                                              ; preds = %121
  %126 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @snprintf(i8* %126, i32 255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64 %129, i32 %132)
  %134 = call i32 @avfilter_get_by_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i8*, i8** %8, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @avfilter_graph_create_filter(i32** %18, i32 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %135, i32* null, i32 %138)
  store i32 %139, i32* %13, align 4
  %140 = call i32 @av_freep(i8** %8)
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %125
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %4, align 4
  br label %235

145:                                              ; preds = %125
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i32*, i32** %18, align 8
  %149 = call i32 @avfilter_link(i32* %146, i32 %147, i32* %148, i32 0)
  store i32 %149, i32* %13, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %4, align 4
  br label %235

153:                                              ; preds = %145
  %154 = load i32*, i32** %18, align 8
  store i32* %154, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %155

155:                                              ; preds = %153, %121
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %203

161:                                              ; preds = %155
  br i1 false, label %162, label %203

162:                                              ; preds = %161
  %163 = getelementptr inbounds [255 x i8], [255 x i8]* %20, i64 0, i64 0
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @snprintf(i8* %163, i32 255, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i64 %167, i32 %171)
  %173 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @snprintf(i8* %173, i32 255, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64 %176, i32 %179)
  %181 = call i32 @avfilter_get_by_name(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %182 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %183 = getelementptr inbounds [255 x i8], [255 x i8]* %20, i64 0, i64 0
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @avfilter_graph_create_filter(i32** %19, i32 %181, i8* %182, i8* %183, i32* null, i32 %186)
  store i32 %187, i32* %13, align 4
  %188 = load i32, i32* %13, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %162
  %191 = load i32, i32* %13, align 4
  store i32 %191, i32* %4, align 4
  br label %235

192:                                              ; preds = %162
  %193 = load i32*, i32** %11, align 8
  %194 = load i32, i32* %12, align 4
  %195 = load i32*, i32** %19, align 8
  %196 = call i32 @avfilter_link(i32* %193, i32 %194, i32* %195, i32 0)
  store i32 %196, i32* %13, align 4
  %197 = load i32, i32* %13, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = load i32, i32* %13, align 4
  store i32 %200, i32* %4, align 4
  br label %235

201:                                              ; preds = %192
  %202 = load i32*, i32** %19, align 8
  store i32* %202, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %203

203:                                              ; preds = %201, %161, %155
  %204 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @snprintf(i8* %204, i32 255, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i64 %207, i32 %210)
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %219 = call i32 @insert_trim(i32 %214, i32 %217, i32** %11, i32* %12, i8* %218)
  store i32 %219, i32* %13, align 4
  %220 = load i32, i32* %13, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %203
  %223 = load i32, i32* %13, align 4
  store i32 %223, i32* %4, align 4
  br label %235

224:                                              ; preds = %203
  %225 = load i32*, i32** %11, align 8
  %226 = load i32, i32* %12, align 4
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @avfilter_link(i32* %225, i32 %226, i32* %229, i32 0)
  store i32 %230, i32* %13, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %224
  %233 = load i32, i32* %13, align 4
  store i32 %233, i32* %4, align 4
  br label %235

234:                                              ; preds = %224
  store i32 0, i32* %4, align 4
  br label %235

235:                                              ; preds = %234, %232, %222, %199, %190, %151, %143, %117, %109, %54
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i32) #1

declare dso_local i32 @avfilter_graph_create_filter(i32**, i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @avfilter_get_by_name(i8*) #1

declare dso_local %struct.TYPE_21__* @av_dict_get(i32, i8*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @av_strlcatf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @avfilter_link(i32*, i32, i32*, i32) #1

declare dso_local i8* @choose_pix_fmts(%struct.TYPE_17__*) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @insert_trim(i32, i32, i32**, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
