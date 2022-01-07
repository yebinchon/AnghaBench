; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_median.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_median.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8** }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"The %d plane width %d must be not less than %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"The %d plane height %d must be not less than %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hadd = common dso_local global i32 0, align 4
@hsub = common dso_local global i32 0, align 4
@hmuladd = common dso_local global i32 0, align 4
@filter_plane_8 = common dso_local global i32 0, align 4
@filter_plane_9 = common dso_local global i32 0, align 4
@filter_plane_10 = common dso_local global i32 0, align 4
@filter_plane_12 = common dso_local global i32 0, align 4
@filter_plane_14 = common dso_local global i32 0, align 4
@filter_plane_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_11__* @av_pix_fmt_desc_get(i32 %10)
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @AV_CEIL_RSHIFT(i32 %27, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %32, i32* %36, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %32, i32* %40, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  store i32 %43, i32* %47, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %43, i32* %51, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @AV_CEIL_RSHIFT(i32 %54, i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %59, i32* %63, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %59, i32* %67, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 %70, i32* %74, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %70, i32* %78, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  br label %91

87:                                               ; preds = %1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  br label %91

91:                                               ; preds = %87, %83
  %92 = phi i32 [ %86, %83 ], [ %90, %87 ]
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @av_pix_fmt_count_planes(i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 2, %103
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %104, %107
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 2, %111
  %113 = add nsw i32 %108, %112
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 4
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %202, %91
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %205

122:                                              ; preds = %116
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = shl i32 1, %126
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %122
  br label %202

131:                                              ; preds = %122
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %141, 2
  %143 = add nsw i32 %142, 1
  %144 = icmp slt i32 %138, %143
  br i1 %144, label %145, label %166

145:                                              ; preds = %131
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = load i32, i32* @AV_LOG_ERROR, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %160, 2
  %162 = add nsw i32 %161, 1
  %163 = call i32 @av_log(%struct.TYPE_13__* %148, i32 %149, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %150, i32 %157, i32 %162)
  %164 = load i32, i32* @EINVAL, align 4
  %165 = call i32 @AVERROR(i32 %164)
  store i32 %165, i32* %2, align 4
  br label %370

166:                                              ; preds = %131
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = mul nsw i32 %176, 2
  %178 = add nsw i32 %177, 1
  %179 = icmp slt i32 %173, %178
  br i1 %179, label %180, label %201

180:                                              ; preds = %166
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %182, align 8
  %184 = load i32, i32* @AV_LOG_ERROR, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = mul nsw i32 %195, 2
  %197 = add nsw i32 %196, 1
  %198 = call i32 @av_log(%struct.TYPE_13__* %183, i32 %184, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %185, i32 %192, i32 %197)
  %199 = load i32, i32* @EINVAL, align 4
  %200 = call i32 @AVERROR(i32 %199)
  store i32 %200, i32* %2, align 4
  br label %370

201:                                              ; preds = %166
  br label %202

202:                                              ; preds = %201, %130
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  br label %116

205:                                              ; preds = %116
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, 1
  %215 = sdiv i32 %210, %214
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_13__* %218)
  %220 = call i32 @FFMIN(i32 %215, i32 %219)
  %221 = call i32 @FFMAX(i32 1, i32 %220)
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 8
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, 1
  %228 = sdiv i32 %227, 2
  %229 = shl i32 1, %228
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 9
  store i32 %229, i32* %231, align 8
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 9
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 9
  %237 = load i32, i32* %236, align 8
  %238 = mul nsw i32 %234, %237
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = mul nsw i32 %238, %241
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 10
  store i32 %242, i32* %244, align 4
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 9
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = mul nsw i32 %247, %250
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 11
  store i32 %251, i32* %253, align 8
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 4
  %257 = call i8* @av_calloc(i32 %256, i32 8)
  %258 = bitcast i8* %257 to i8**
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 17
  store i8** %258, i8*** %260, align 8
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 4
  %264 = call i8* @av_calloc(i32 %263, i32 8)
  %265 = bitcast i8* %264 to i8**
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 16
  store i8** %265, i8*** %267, align 8
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 17
  %270 = load i8**, i8*** %269, align 8
  %271 = icmp ne i8** %270, null
  br i1 %271, label %272, label %277

272:                                              ; preds = %205
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 16
  %275 = load i8**, i8*** %274, align 8
  %276 = icmp ne i8** %275, null
  br i1 %276, label %280, label %277

277:                                              ; preds = %272, %205
  %278 = load i32, i32* @ENOMEM, align 4
  %279 = call i32 @AVERROR(i32 %278)
  store i32 %279, i32* %2, align 4
  br label %370

280:                                              ; preds = %272
  store i32 0, i32* %7, align 4
  br label %281

281:                                              ; preds = %329, %280
  %282 = load i32, i32* %7, align 4
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 8
  %285 = load i32, i32* %284, align 4
  %286 = icmp slt i32 %282, %285
  br i1 %286, label %287, label %332

287:                                              ; preds = %281
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 11
  %290 = load i32, i32* %289, align 8
  %291 = call i8* @av_malloc_array(i32 %290, i32 1)
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 17
  %294 = load i8**, i8*** %293, align 8
  %295 = load i32, i32* %7, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8*, i8** %294, i64 %296
  store i8* %291, i8** %297, align 8
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 10
  %300 = load i32, i32* %299, align 4
  %301 = call i8* @av_malloc_array(i32 %300, i32 1)
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 16
  %304 = load i8**, i8*** %303, align 8
  %305 = load i32, i32* %7, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8*, i8** %304, i64 %306
  store i8* %301, i8** %307, align 8
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 17
  %310 = load i8**, i8*** %309, align 8
  %311 = load i32, i32* %7, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8*, i8** %310, i64 %312
  %314 = load i8*, i8** %313, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %325

316:                                              ; preds = %287
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 16
  %319 = load i8**, i8*** %318, align 8
  %320 = load i32, i32* %7, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8*, i8** %319, i64 %321
  %323 = load i8*, i8** %322, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %328, label %325

325:                                              ; preds = %316, %287
  %326 = load i32, i32* @ENOMEM, align 4
  %327 = call i32 @AVERROR(i32 %326)
  store i32 %327, i32* %2, align 4
  br label %370

328:                                              ; preds = %316
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %7, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %7, align 4
  br label %281

332:                                              ; preds = %281
  %333 = load i32, i32* @hadd, align 4
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 15
  store i32 %333, i32* %335, align 8
  %336 = load i32, i32* @hsub, align 4
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 14
  store i32 %336, i32* %338, align 4
  %339 = load i32, i32* @hmuladd, align 4
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 13
  store i32 %339, i32* %341, align 8
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  switch i32 %344, label %369 [
    i32 8, label %345
    i32 9, label %349
    i32 10, label %353
    i32 12, label %357
    i32 14, label %361
    i32 16, label %365
  ]

345:                                              ; preds = %332
  %346 = load i32, i32* @filter_plane_8, align 4
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 12
  store i32 %346, i32* %348, align 4
  br label %369

349:                                              ; preds = %332
  %350 = load i32, i32* @filter_plane_9, align 4
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 12
  store i32 %350, i32* %352, align 4
  br label %369

353:                                              ; preds = %332
  %354 = load i32, i32* @filter_plane_10, align 4
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 12
  store i32 %354, i32* %356, align 4
  br label %369

357:                                              ; preds = %332
  %358 = load i32, i32* @filter_plane_12, align 4
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 12
  store i32 %358, i32* %360, align 4
  br label %369

361:                                              ; preds = %332
  %362 = load i32, i32* @filter_plane_14, align 4
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 12
  store i32 %362, i32* %364, align 4
  br label %369

365:                                              ; preds = %332
  %366 = load i32, i32* @filter_plane_16, align 4
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 12
  store i32 %366, i32* %368, align 4
  br label %369

369:                                              ; preds = %332, %365, %361, %357, %353, %349, %345
  store i32 0, i32* %2, align 4
  br label %370

370:                                              ; preds = %369, %325, %277, %180, %145
  %371 = load i32, i32* %2, align 4
  ret i32 %371
}

declare dso_local %struct.TYPE_11__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_13__*) #1

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i8* @av_malloc_array(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
