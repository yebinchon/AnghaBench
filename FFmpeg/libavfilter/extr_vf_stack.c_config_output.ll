; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_stack.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_stack.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i8*, i8*, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__**, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i8*, %struct.TYPE_18__, i64, i32, %struct.TYPE_12__*, %struct.TYPE_13__*, i64, i64 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32*, i32, i32 }

@AVERROR_BUG = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Input %d width %d does not match input %d width %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Input %d height %d does not match input %d height %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"w%d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"h%d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_16__*, align 8
  %30 = alloca %struct.TYPE_13__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %4, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %5, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %41, i64 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %6, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %48, i64 0
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %7, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %55, i64 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %8, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %62, i64 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.TYPE_12__* @av_pix_fmt_desc_get(i32 %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 5
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %72, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = icmp ne %struct.TYPE_12__* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %1
  %78 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %78, i32* %2, align 4
  br label %730

79:                                               ; preds = %1
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %221

84:                                               ; preds = %79
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %217, %84
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %220

91:                                               ; preds = %85
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %94, i64 %96
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  store %struct.TYPE_16__* %98, %struct.TYPE_16__** %13, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i64 %103
  store %struct.TYPE_13__* %104, %struct.TYPE_13__** %14, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %107, i64 %109
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %91
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %122, i64 %124
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @av_log(%struct.TYPE_17__* %117, i32 %118, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %128, i32 0, i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = call i32 @AVERROR(i32 %131)
  store i32 %132, i32* %2, align 4
  br label %730

133:                                              ; preds = %91
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @av_image_fill_linesizes(i32 %136, i32 %139, i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %133
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %2, align 4
  br label %730

147:                                              ; preds = %133
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @AV_CEIL_RSHIFT(i32 %150, i32 %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  store i32 %157, i32* %161, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %157, i32* %165, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  store i32 %168, i32* %172, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %168, i32* %176, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %216

179:                                              ; preds = %147
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 5
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @AV_CEIL_RSHIFT(i32 %180, i32 %185)
  %187 = ptrtoint i8* %186 to i32
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  store i32 %187, i32* %191, align 4
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  store i32 %187, i32* %195, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 3
  store i32 %196, i32* %200, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 %196, i32* %204, align 4
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %207, i64 %209
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %8, align 4
  br label %216

216:                                              ; preds = %179, %147
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %85

220:                                              ; preds = %85
  br label %626

221:                                              ; preds = %79
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 7
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %350

226:                                              ; preds = %221
  store i32 0, i32* %11, align 4
  br label %227

227:                                              ; preds = %346, %226
  %228 = load i32, i32* %11, align 4
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %349

233:                                              ; preds = %227
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %236, i64 %238
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %239, align 8
  store %struct.TYPE_16__* %240, %struct.TYPE_16__** %15, align 8
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 6
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %242, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i64 %245
  store %struct.TYPE_13__* %246, %struct.TYPE_13__** %16, align 8
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %248, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %249, i64 %251
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %233
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %260 = load i32, i32* @AV_LOG_ERROR, align 4
  %261 = load i32, i32* %11, align 4
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %263, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %264, i64 %266
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %8, align 4
  %272 = call i32 @av_log(%struct.TYPE_17__* %259, i32 %260, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %261, i32 %270, i32 0, i32 %271)
  %273 = load i32, i32* @EINVAL, align 4
  %274 = call i32 @AVERROR(i32 %273)
  store i32 %274, i32* %2, align 4
  br label %730

275:                                              ; preds = %233
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @av_image_fill_linesizes(i32 %278, i32 %281, i32 %284)
  store i32 %285, i32* %12, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %275
  %288 = load i32, i32* %12, align 4
  store i32 %288, i32* %2, align 4
  br label %730

289:                                              ; preds = %275
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 5
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i8* @AV_CEIL_RSHIFT(i32 %292, i32 %297)
  %299 = ptrtoint i8* %298 to i32
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 2
  store i32 %299, i32* %303, align 4
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  store i32 %299, i32* %307, align 4
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 3
  store i32 %310, i32* %314, align 4
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 0
  store i32 %310, i32* %318, align 4
  %319 = load i32, i32* %11, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %345

321:                                              ; preds = %289
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* %9, align 4
  %329 = call i32 @av_image_fill_linesizes(i32 %324, i32 %327, i32 %328)
  store i32 %329, i32* %12, align 4
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %321
  %332 = load i32, i32* %12, align 4
  store i32 %332, i32* %2, align 4
  br label %730

333:                                              ; preds = %321
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %335, align 8
  %337 = load i32, i32* %11, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %336, i64 %338
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %9, align 4
  %344 = add nsw i32 %343, %342
  store i32 %344, i32* %9, align 4
  br label %345

345:                                              ; preds = %333, %289
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %11, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %11, align 4
  br label %227

349:                                              ; preds = %227
  br label %625

350:                                              ; preds = %221
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 1
  %353 = load i8*, i8** %352, align 8
  store i8* %353, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %25, align 8
  store i32 0, i32* %11, align 4
  br label %354

354:                                              ; preds = %621, %350
  %355 = load i32, i32* %11, align 4
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp slt i32 %355, %358
  br i1 %359, label %360, label %624

360:                                              ; preds = %354
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 0
  %363 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %362, align 8
  %364 = load i32, i32* %11, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %363, i64 %365
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %366, align 8
  store %struct.TYPE_16__* %367, %struct.TYPE_16__** %29, align 8
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 6
  %370 = load %struct.TYPE_13__*, %struct.TYPE_13__** %369, align 8
  %371 = load i32, i32* %11, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i64 %372
  store %struct.TYPE_13__* %373, %struct.TYPE_13__** %30, align 8
  %374 = load i8*, i8** %18, align 8
  %375 = call i8* @av_strtok(i8* %374, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %19)
  store i8* %375, i8** %17, align 8
  %376 = icmp ne i8* %375, null
  br i1 %376, label %380, label %377

377:                                              ; preds = %360
  %378 = load i32, i32* @EINVAL, align 4
  %379 = call i32 @AVERROR(i32 %378)
  store i32 %379, i32* %2, align 4
  br label %730

380:                                              ; preds = %360
  store i8* null, i8** %18, align 8
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i32 0, i32 5
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @av_image_fill_linesizes(i32 %383, i32 %386, i32 %389)
  store i32 %390, i32* %12, align 4
  %391 = icmp slt i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %380
  %393 = load i32, i32* %12, align 4
  store i32 %393, i32* %2, align 4
  br label %730

394:                                              ; preds = %380
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %398, i32 0, i32 5
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = call i8* @AV_CEIL_RSHIFT(i32 %397, i32 %402)
  %404 = ptrtoint i8* %403 to i32
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %406 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i32 0, i32 0
  %407 = load i32*, i32** %406, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 2
  store i32 %404, i32* %408, align 4
  %409 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 0
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 1
  store i32 %404, i32* %412, align 4
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 0
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 3
  store i32 %415, i32* %419, align 4
  %420 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 0
  %422 = load i32*, i32** %421, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 0
  store i32 %415, i32* %423, align 4
  %424 = load i8*, i8** %17, align 8
  store i8* %424, i8** %21, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %31, align 4
  br label %425

425:                                              ; preds = %566, %394
  %426 = load i32, i32* %31, align 4
  %427 = icmp slt i32 %426, 2
  br i1 %427, label %428, label %569

428:                                              ; preds = %425
  %429 = load i8*, i8** %21, align 8
  %430 = call i8* @av_strtok(i8* %429, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %22)
  store i8* %430, i8** %20, align 8
  %431 = icmp ne i8* %430, null
  br i1 %431, label %435, label %432

432:                                              ; preds = %428
  %433 = load i32, i32* @EINVAL, align 4
  %434 = call i32 @AVERROR(i32 %433)
  store i32 %434, i32* %2, align 4
  br label %730

435:                                              ; preds = %428
  store i8* null, i8** %21, align 8
  %436 = load i8*, i8** %20, align 8
  store i8* %436, i8** %24, align 8
  br label %437

437:                                              ; preds = %564, %435
  %438 = load i8*, i8** %24, align 8
  %439 = call i8* @av_strtok(i8* %438, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %25)
  store i8* %439, i8** %23, align 8
  %440 = icmp ne i8* %439, null
  br i1 %440, label %441, label %565

441:                                              ; preds = %437
  store i8* null, i8** %24, align 8
  %442 = load i8*, i8** %23, align 8
  %443 = call i32 @sscanf(i8* %442, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %28)
  %444 = icmp eq i32 %443, 1
  br i1 %444, label %445, label %489

445:                                              ; preds = %441
  %446 = load i32, i32* %28, align 4
  %447 = load i32, i32* %11, align 4
  %448 = icmp eq i32 %446, %447
  br i1 %448, label %458, label %449

449:                                              ; preds = %445
  %450 = load i32, i32* %28, align 4
  %451 = icmp slt i32 %450, 0
  br i1 %451, label %458, label %452

452:                                              ; preds = %449
  %453 = load i32, i32* %28, align 4
  %454 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = icmp sge i32 %453, %456
  br i1 %457, label %458, label %461

458:                                              ; preds = %452, %449, %445
  %459 = load i32, i32* @EINVAL, align 4
  %460 = call i32 @AVERROR(i32 %459)
  store i32 %460, i32* %2, align 4
  br label %730

461:                                              ; preds = %452
  %462 = load i32, i32* %31, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %476, label %464

464:                                              ; preds = %461
  %465 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %466 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %465, i32 0, i32 0
  %467 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %466, align 8
  %468 = load i32, i32* %28, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %467, i64 %469
  %471 = load %struct.TYPE_16__*, %struct.TYPE_16__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* %26, align 4
  %475 = add nsw i32 %474, %473
  store i32 %475, i32* %26, align 4
  br label %488

476:                                              ; preds = %461
  %477 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %477, i32 0, i32 0
  %479 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %478, align 8
  %480 = load i32, i32* %28, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %479, i64 %481
  %483 = load %struct.TYPE_16__*, %struct.TYPE_16__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* %27, align 4
  %487 = add nsw i32 %486, %485
  store i32 %487, i32* %27, align 4
  br label %488

488:                                              ; preds = %476, %464
  br label %564

489:                                              ; preds = %441
  %490 = load i8*, i8** %23, align 8
  %491 = call i32 @sscanf(i8* %490, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %28)
  %492 = icmp eq i32 %491, 1
  br i1 %492, label %493, label %537

493:                                              ; preds = %489
  %494 = load i32, i32* %28, align 4
  %495 = load i32, i32* %11, align 4
  %496 = icmp eq i32 %494, %495
  br i1 %496, label %506, label %497

497:                                              ; preds = %493
  %498 = load i32, i32* %28, align 4
  %499 = icmp slt i32 %498, 0
  br i1 %499, label %506, label %500

500:                                              ; preds = %497
  %501 = load i32, i32* %28, align 4
  %502 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %503 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = icmp sge i32 %501, %504
  br i1 %505, label %506, label %509

506:                                              ; preds = %500, %497, %493
  %507 = load i32, i32* @EINVAL, align 4
  %508 = call i32 @AVERROR(i32 %507)
  store i32 %508, i32* %2, align 4
  br label %730

509:                                              ; preds = %500
  %510 = load i32, i32* %31, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %524, label %512

512:                                              ; preds = %509
  %513 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %514 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %513, i32 0, i32 0
  %515 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %514, align 8
  %516 = load i32, i32* %28, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %515, i64 %517
  %519 = load %struct.TYPE_16__*, %struct.TYPE_16__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = load i32, i32* %26, align 4
  %523 = add nsw i32 %522, %521
  store i32 %523, i32* %26, align 4
  br label %536

524:                                              ; preds = %509
  %525 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %526 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %525, i32 0, i32 0
  %527 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %526, align 8
  %528 = load i32, i32* %28, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %527, i64 %529
  %531 = load %struct.TYPE_16__*, %struct.TYPE_16__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = load i32, i32* %27, align 4
  %535 = add nsw i32 %534, %533
  store i32 %535, i32* %27, align 4
  br label %536

536:                                              ; preds = %524, %512
  br label %563

537:                                              ; preds = %489
  %538 = load i8*, i8** %23, align 8
  %539 = call i32 @sscanf(i8* %538, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %28)
  %540 = icmp eq i32 %539, 1
  br i1 %540, label %541, label %559

541:                                              ; preds = %537
  %542 = load i32, i32* %28, align 4
  %543 = icmp slt i32 %542, 0
  br i1 %543, label %544, label %547

544:                                              ; preds = %541
  %545 = load i32, i32* @EINVAL, align 4
  %546 = call i32 @AVERROR(i32 %545)
  store i32 %546, i32* %2, align 4
  br label %730

547:                                              ; preds = %541
  %548 = load i32, i32* %31, align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %554, label %550

550:                                              ; preds = %547
  %551 = load i32, i32* %28, align 4
  %552 = load i32, i32* %26, align 4
  %553 = add nsw i32 %552, %551
  store i32 %553, i32* %26, align 4
  br label %558

554:                                              ; preds = %547
  %555 = load i32, i32* %28, align 4
  %556 = load i32, i32* %27, align 4
  %557 = add nsw i32 %556, %555
  store i32 %557, i32* %27, align 4
  br label %558

558:                                              ; preds = %554, %550
  br label %562

559:                                              ; preds = %537
  %560 = load i32, i32* @EINVAL, align 4
  %561 = call i32 @AVERROR(i32 %560)
  store i32 %561, i32* %2, align 4
  br label %730

562:                                              ; preds = %558
  br label %563

563:                                              ; preds = %562, %536
  br label %564

564:                                              ; preds = %563, %488
  br label %437

565:                                              ; preds = %437
  br label %566

566:                                              ; preds = %565
  %567 = load i32, i32* %31, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %31, align 4
  br label %425

569:                                              ; preds = %425
  %570 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %571 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %570, i32 0, i32 2
  %572 = load i32, i32* %571, align 8
  %573 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %574 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %573, i32 0, i32 5
  %575 = load i32, i32* %574, align 8
  %576 = load i32, i32* %26, align 4
  %577 = call i32 @av_image_fill_linesizes(i32 %572, i32 %575, i32 %576)
  store i32 %577, i32* %12, align 4
  %578 = icmp slt i32 %577, 0
  br i1 %578, label %579, label %581

579:                                              ; preds = %569
  %580 = load i32, i32* %12, align 4
  store i32 %580, i32* %2, align 4
  br label %730

581:                                              ; preds = %569
  %582 = load i32, i32* %27, align 4
  %583 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %584 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %583, i32 0, i32 5
  %585 = load %struct.TYPE_12__*, %struct.TYPE_12__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 4
  %588 = call i8* @AV_CEIL_RSHIFT(i32 %582, i32 %587)
  %589 = ptrtoint i8* %588 to i32
  %590 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %591 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %590, i32 0, i32 1
  %592 = load i32*, i32** %591, align 8
  %593 = getelementptr inbounds i32, i32* %592, i64 2
  store i32 %589, i32* %593, align 4
  %594 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %595 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %594, i32 0, i32 1
  %596 = load i32*, i32** %595, align 8
  %597 = getelementptr inbounds i32, i32* %596, i64 1
  store i32 %589, i32* %597, align 4
  %598 = load i32, i32* %27, align 4
  %599 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %600 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %599, i32 0, i32 1
  %601 = load i32*, i32** %600, align 8
  %602 = getelementptr inbounds i32, i32* %601, i64 3
  store i32 %598, i32* %602, align 4
  %603 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %604 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %603, i32 0, i32 1
  %605 = load i32*, i32** %604, align 8
  %606 = getelementptr inbounds i32, i32* %605, i64 0
  store i32 %598, i32* %606, align 4
  %607 = load i32, i32* %9, align 4
  %608 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %609 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %608, i32 0, i32 1
  %610 = load i32, i32* %609, align 4
  %611 = load i32, i32* %26, align 4
  %612 = add nsw i32 %610, %611
  %613 = call i32 @FFMAX(i32 %607, i32 %612)
  store i32 %613, i32* %9, align 4
  %614 = load i32, i32* %8, align 4
  %615 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %616 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 8
  %618 = load i32, i32* %27, align 4
  %619 = add nsw i32 %617, %618
  %620 = call i32 @FFMAX(i32 %614, i32 %619)
  store i32 %620, i32* %8, align 4
  br label %621

621:                                              ; preds = %581
  %622 = load i32, i32* %11, align 4
  %623 = add nsw i32 %622, 1
  store i32 %623, i32* %11, align 4
  br label %354

624:                                              ; preds = %354
  br label %625

625:                                              ; preds = %624, %349
  br label %626

626:                                              ; preds = %625, %220
  %627 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %628 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %627, i32 0, i32 5
  %629 = load i32, i32* %628, align 8
  %630 = call i32 @av_pix_fmt_count_planes(i32 %629)
  %631 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %632 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %631, i32 0, i32 4
  store i32 %630, i32* %632, align 8
  %633 = load i32, i32* %9, align 4
  %634 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %635 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %634, i32 0, i32 1
  store i32 %633, i32* %635, align 4
  %636 = load i32, i32* %8, align 4
  %637 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %638 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %637, i32 0, i32 0
  store i32 %636, i32* %638, align 8
  %639 = load i8*, i8** %6, align 8
  %640 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %641 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %640, i32 0, i32 4
  store i8* %639, i8** %641, align 8
  %642 = load i8*, i8** %7, align 8
  %643 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %644 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %643, i32 0, i32 3
  store i8* %642, i8** %644, align 8
  %645 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %646 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %645, i32 0, i32 2
  %647 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %648 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %649 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %648, i32 0, i32 0
  %650 = load i32, i32* %649, align 8
  %651 = call i32 @ff_framesync_init(%struct.TYPE_18__* %646, %struct.TYPE_17__* %647, i32 %650)
  store i32 %651, i32* %12, align 4
  %652 = icmp slt i32 %651, 0
  br i1 %652, label %653, label %655

653:                                              ; preds = %626
  %654 = load i32, i32* %12, align 4
  store i32 %654, i32* %2, align 4
  br label %730

655:                                              ; preds = %626
  %656 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %657 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %656, i32 0, i32 2
  %658 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %657, i32 0, i32 3
  %659 = load %struct.TYPE_15__*, %struct.TYPE_15__** %658, align 8
  store %struct.TYPE_15__* %659, %struct.TYPE_15__** %10, align 8
  %660 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %661 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %662 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %661, i32 0, i32 2
  %663 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %662, i32 0, i32 2
  store %struct.TYPE_14__* %660, %struct.TYPE_14__** %663, align 8
  %664 = load i32, i32* @process_frame, align 4
  %665 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %666 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %665, i32 0, i32 2
  %667 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %666, i32 0, i32 1
  store i32 %664, i32* %667, align 4
  store i32 0, i32* %11, align 4
  br label %668

668:                                              ; preds = %716, %655
  %669 = load i32, i32* %11, align 4
  %670 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %671 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %670, i32 0, i32 0
  %672 = load i32, i32* %671, align 8
  %673 = icmp slt i32 %669, %672
  br i1 %673, label %674, label %719

674:                                              ; preds = %668
  %675 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %676 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %675, i32 0, i32 0
  %677 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %676, align 8
  %678 = load i32, i32* %11, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %677, i64 %679
  %681 = load %struct.TYPE_16__*, %struct.TYPE_16__** %680, align 8
  store %struct.TYPE_16__* %681, %struct.TYPE_16__** %32, align 8
  %682 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %683 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %682, i32 0, i32 2
  %684 = load i32, i32* %683, align 8
  %685 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %686 = load i32, i32* %11, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %685, i64 %687
  %689 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %688, i32 0, i32 3
  store i32 %684, i32* %689, align 8
  %690 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %691 = load i32, i32* %11, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %690, i64 %692
  %694 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %693, i32 0, i32 0
  store i32 1, i32* %694, align 8
  %695 = load i8*, i8** @EXT_STOP, align 8
  %696 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %697 = load i32, i32* %11, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %696, i64 %698
  %700 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %699, i32 0, i32 2
  store i8* %695, i8** %700, align 8
  %701 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %702 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %701, i32 0, i32 3
  %703 = load i64, i64* %702, align 8
  %704 = icmp ne i64 %703, 0
  br i1 %704, label %705, label %707

705:                                              ; preds = %674
  %706 = load i8*, i8** @EXT_STOP, align 8
  br label %709

707:                                              ; preds = %674
  %708 = load i8*, i8** @EXT_INFINITY, align 8
  br label %709

709:                                              ; preds = %707, %705
  %710 = phi i8* [ %706, %705 ], [ %708, %707 ]
  %711 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %712 = load i32, i32* %11, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %711, i64 %713
  %715 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %714, i32 0, i32 1
  store i8* %710, i8** %715, align 8
  br label %716

716:                                              ; preds = %709
  %717 = load i32, i32* %11, align 4
  %718 = add nsw i32 %717, 1
  store i32 %718, i32* %11, align 4
  br label %668

719:                                              ; preds = %668
  %720 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %721 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %720, i32 0, i32 2
  %722 = call i32 @ff_framesync_configure(%struct.TYPE_18__* %721)
  store i32 %722, i32* %12, align 4
  %723 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %724 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %723, i32 0, i32 2
  %725 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 8
  %727 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %728 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %727, i32 0, i32 2
  store i32 %726, i32* %728, align 8
  %729 = load i32, i32* %12, align 4
  store i32 %729, i32* %2, align 4
  br label %730

730:                                              ; preds = %719, %653, %579, %559, %544, %506, %458, %432, %392, %377, %331, %287, %258, %145, %116, %77
  %731 = load i32, i32* %2, align 4
  ret i32 %731
}

declare dso_local %struct.TYPE_12__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_image_fill_linesizes(i32, i32, i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i32 @ff_framesync_init(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ff_framesync_configure(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
