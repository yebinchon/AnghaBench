; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_dpm.c_ccv_dpm_read_mixture_model.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_dpm.c_ccv_dpm_read_mixture_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_13__, %struct.TYPE_14__, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32*, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%f %f %f %f\00", align 1
@CCV_32F = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%lf %lf %lf %lf\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%f %f %f %f %f %f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @ccv_dpm_read_mixture_model(i8* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  store i8* %0, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %647

24:                                               ; preds = %1
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 (i32*, i8*, ...) @fscanf(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %6)
  %27 = load i8, i8* %6, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 46
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 (i32*, i8*, ...) @fscanf(i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %5)
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 104, %35
  %37 = call i64 @ccmalloc(i64 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %7, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 104, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(%struct.TYPE_15__* %39, i32 0, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 104, %46
  %48 = add i64 16, %47
  store i64 %48, i64* %11, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %342, %24
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %345

53:                                               ; preds = %49
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 (i32*, i8*, ...) @fscanf(i32* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %12, i32* %13)
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 17
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 9
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 9
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 9
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = call i32 (i32*, i8*, ...) @fscanf(i32* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %61, i32* %68, i32* %75, i32* %82)
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @CCV_32F, align 4
  %87 = or i32 %86, 31
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @CCV_32F, align 4
  %91 = or i32 %90, 31
  %92 = call i32 @ccv_compute_dense_matrix_size(i32 %88, i32 %89, i32 %91)
  %93 = sext i32 %92 to i64
  %94 = call i64 @ccmalloc(i64 %93)
  %95 = call i8* @ccv_dense_matrix_new(i32 %84, i32 %85, i32 %87, i64 %94, i32 0)
  %96 = bitcast i8* %95 to %struct.TYPE_15__*
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  store %struct.TYPE_15__* %96, %struct.TYPE_15__** %102, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @CCV_32F, align 4
  %106 = or i32 %105, 31
  %107 = call i32 @ccv_compute_dense_matrix_size(i32 %103, i32 %104, i32 %106)
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %11, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %11, align 8
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %134, %53
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = mul nsw i32 %113, %114
  %116 = mul nsw i32 %115, 31
  %117 = icmp slt i32 %112, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %111
  %119 = load i32*, i32** %4, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = call i32 (i32*, i8*, ...) @fscanf(i32* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %132)
  br label %134

134:                                              ; preds = %118
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %111

137:                                              ; preds = %111
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 7
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = call i32 @ccv_make_matrix_immutable(%struct.TYPE_15__* %144)
  %146 = load i32*, i32** %4, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = call i32 (i32*, i8*, ...) @fscanf(i32* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %151)
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = mul i64 104, %159
  %161 = call i64 @ccmalloc(i64 %160)
  %162 = inttoptr i64 %161 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %162, %struct.TYPE_15__** %14, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = mul i64 104, %169
  %171 = load i64, i64* %11, align 8
  %172 = add i64 %171, %170
  store i64 %172, i64* %11, align 8
  store i32 0, i32* %9, align 4
  br label %173

173:                                              ; preds = %332, %137
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %174, %180
  br i1 %181, label %182, label %335

182:                                              ; preds = %173
  %183 = load i32*, i32** %4, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 16
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 15
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 14
  %199 = call i32 (i32*, i8*, ...) @fscanf(i32* %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %188, i32* %193, i32* %198)
  %200 = load i32*, i32** %4, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 13
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 12
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 11
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 10
  %221 = call i32 (i32*, i8*, ...) @fscanf(i32* %200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32* %205, i32* %210, i32* %215, i32* %220)
  %222 = load i32*, i32** %4, align 8
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 9
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 9
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 9
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 2
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 9
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 3
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 9
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 4
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 9
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 5
  %265 = call i32 (i32*, i8*, ...) @fscanf(i32* %222, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32* %229, i32* %236, i32* %243, i32* %250, i32* %257, i32* %264)
  %266 = load i32*, i32** %4, align 8
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %268 = load i32, i32* %9, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 8
  %272 = call i32 (i32*, i8*, ...) @fscanf(i32* %266, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %12, i32* %13, i32* %271)
  %273 = load i32, i32* %12, align 4
  %274 = load i32, i32* %13, align 4
  %275 = load i32, i32* @CCV_32F, align 4
  %276 = or i32 %275, 31
  %277 = load i32, i32* %12, align 4
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* @CCV_32F, align 4
  %280 = or i32 %279, 31
  %281 = call i32 @ccv_compute_dense_matrix_size(i32 %277, i32 %278, i32 %280)
  %282 = sext i32 %281 to i64
  %283 = call i64 @ccmalloc(i64 %282)
  %284 = call i8* @ccv_dense_matrix_new(i32 %273, i32 %274, i32 %276, i64 %283, i32 0)
  %285 = bitcast i8* %284 to %struct.TYPE_15__*
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %287 = load i32, i32* %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 4
  store %struct.TYPE_15__* %285, %struct.TYPE_15__** %290, align 8
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* @CCV_32F, align 4
  %294 = or i32 %293, 31
  %295 = call i32 @ccv_compute_dense_matrix_size(i32 %291, i32 %292, i32 %294)
  %296 = sext i32 %295 to i64
  %297 = load i64, i64* %11, align 8
  %298 = add i64 %297, %296
  store i64 %298, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %299

299:                                              ; preds = %321, %182
  %300 = load i32, i32* %10, align 4
  %301 = load i32, i32* %12, align 4
  %302 = load i32, i32* %13, align 4
  %303 = mul nsw i32 %301, %302
  %304 = mul nsw i32 %303, 31
  %305 = icmp slt i32 %300, %304
  br i1 %305, label %306, label %324

306:                                              ; preds = %299
  %307 = load i32*, i32** %4, align 8
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 4
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 6
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %10, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = call i32 (i32*, i8*, ...) @fscanf(i32* %307, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %319)
  br label %321

321:                                              ; preds = %306
  %322 = load i32, i32* %10, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %10, align 4
  br label %299

324:                                              ; preds = %299
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %326 = load i32, i32* %9, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 4
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %329, align 8
  %331 = call i32 @ccv_make_matrix_immutable(%struct.TYPE_15__* %330)
  br label %332

332:                                              ; preds = %324
  %333 = load i32, i32* %9, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %9, align 4
  br label %173

335:                                              ; preds = %173
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %338 = load i32, i32* %8, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 5
  store %struct.TYPE_15__* %336, %struct.TYPE_15__** %341, align 8
  br label %342

342:                                              ; preds = %335
  %343 = load i32, i32* %8, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %8, align 4
  br label %49

345:                                              ; preds = %49
  %346 = load i32*, i32** %4, align 8
  %347 = call i32 @fclose(i32* %346)
  %348 = load i64, i64* %11, align 8
  %349 = call i64 @ccmalloc(i64 %348)
  %350 = inttoptr i64 %349 to i8*
  store i8* %350, i8** %15, align 8
  %351 = load i8*, i8** %15, align 8
  %352 = bitcast i8* %351 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %352, %struct.TYPE_16__** %16, align 8
  %353 = load i8*, i8** %15, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 16
  store i8* %354, i8** %15, align 8
  %355 = load i32, i32* %5, align 4
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 0
  store i32 %355, i32* %357, align 8
  %358 = load i8*, i8** %15, align 8
  %359 = bitcast i8* %358 to %struct.TYPE_15__*
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 1
  store %struct.TYPE_15__* %359, %struct.TYPE_15__** %361, align 8
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = sext i32 %364 to i64
  %366 = mul i64 104, %365
  %367 = load i8*, i8** %15, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 %366
  store i8* %368, i8** %15, align 8
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 1
  %371 = load %struct.TYPE_15__*, %struct.TYPE_15__** %370, align 8
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %373 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %374 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = sext i32 %375 to i64
  %377 = mul i64 104, %376
  %378 = trunc i64 %377 to i32
  %379 = call i32 @memcpy(%struct.TYPE_15__* %371, %struct.TYPE_15__* %372, i32 %378)
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %381 = call i32 @ccfree(%struct.TYPE_15__* %380)
  store i32 0, i32* %8, align 4
  br label %382

382:                                              ; preds = %441, %345
  %383 = load i32, i32* %8, align 4
  %384 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = icmp slt i32 %383, %386
  br i1 %387, label %388, label %444

388:                                              ; preds = %382
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 1
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %390, align 8
  %392 = load i32, i32* %8, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %394, i32 0, i32 5
  %396 = load %struct.TYPE_15__*, %struct.TYPE_15__** %395, align 8
  store %struct.TYPE_15__* %396, %struct.TYPE_15__** %17, align 8
  %397 = load i8*, i8** %15, align 8
  %398 = bitcast i8* %397 to %struct.TYPE_15__*
  %399 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %400 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %399, i32 0, i32 1
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %400, align 8
  %402 = load i32, i32* %8, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 5
  store %struct.TYPE_15__* %398, %struct.TYPE_15__** %405, align 8
  %406 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 1
  %408 = load %struct.TYPE_15__*, %struct.TYPE_15__** %407, align 8
  %409 = load i32, i32* %8, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %408, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = sext i32 %413 to i64
  %415 = mul i64 104, %414
  %416 = load i8*, i8** %15, align 8
  %417 = getelementptr inbounds i8, i8* %416, i64 %415
  store i8* %417, i8** %15, align 8
  %418 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 1
  %420 = load %struct.TYPE_15__*, %struct.TYPE_15__** %419, align 8
  %421 = load i32, i32* %8, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %420, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 5
  %425 = load %struct.TYPE_15__*, %struct.TYPE_15__** %424, align 8
  %426 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 1
  %429 = load %struct.TYPE_15__*, %struct.TYPE_15__** %428, align 8
  %430 = load i32, i32* %8, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %429, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = sext i32 %434 to i64
  %436 = mul i64 104, %435
  %437 = trunc i64 %436 to i32
  %438 = call i32 @memcpy(%struct.TYPE_15__* %425, %struct.TYPE_15__* %426, i32 %437)
  %439 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %440 = call i32 @ccfree(%struct.TYPE_15__* %439)
  br label %441

441:                                              ; preds = %388
  %442 = load i32, i32* %8, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %8, align 4
  br label %382

444:                                              ; preds = %382
  store i32 0, i32* %8, align 4
  br label %445

445:                                              ; preds = %642, %444
  %446 = load i32, i32* %8, align 4
  %447 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %448 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = icmp slt i32 %446, %449
  br i1 %450, label %451, label %645

451:                                              ; preds = %445
  %452 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %452, i32 0, i32 1
  %454 = load %struct.TYPE_15__*, %struct.TYPE_15__** %453, align 8
  %455 = load i32, i32* %8, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %454, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %457, i32 0, i32 7
  %459 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %458, i32 0, i32 0
  %460 = load %struct.TYPE_15__*, %struct.TYPE_15__** %459, align 8
  store %struct.TYPE_15__* %460, %struct.TYPE_15__** %18, align 8
  %461 = load i8*, i8** %15, align 8
  %462 = bitcast i8* %461 to %struct.TYPE_15__*
  %463 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %463, i32 0, i32 1
  %465 = load %struct.TYPE_15__*, %struct.TYPE_15__** %464, align 8
  %466 = load i32, i32* %8, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %468, i32 0, i32 7
  %470 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %469, i32 0, i32 0
  store %struct.TYPE_15__* %462, %struct.TYPE_15__** %470, align 8
  %471 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %472 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %475 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 8
  %477 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %478 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %477, i32 0, i32 3
  %479 = load i32, i32* %478, align 4
  %480 = call i32 @ccv_compute_dense_matrix_size(i32 %473, i32 %476, i32 %479)
  %481 = load i8*, i8** %15, align 8
  %482 = sext i32 %480 to i64
  %483 = getelementptr inbounds i8, i8* %481, i64 %482
  store i8* %483, i8** %15, align 8
  %484 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %485 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %484, i32 0, i32 1
  %486 = load %struct.TYPE_15__*, %struct.TYPE_15__** %485, align 8
  %487 = load i32, i32* %8, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %489, i32 0, i32 7
  %491 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %490, i32 0, i32 0
  %492 = load %struct.TYPE_15__*, %struct.TYPE_15__** %491, align 8
  %493 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %494 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %495 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %498 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 8
  %500 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %501 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %500, i32 0, i32 3
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @ccv_compute_dense_matrix_size(i32 %496, i32 %499, i32 %502)
  %504 = call i32 @memcpy(%struct.TYPE_15__* %492, %struct.TYPE_15__* %493, i32 %503)
  %505 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %506 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %505, i32 0, i32 1
  %507 = load %struct.TYPE_15__*, %struct.TYPE_15__** %506, align 8
  %508 = load i32, i32* %8, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %507, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %510, i32 0, i32 7
  %512 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %511, i32 0, i32 0
  %513 = load %struct.TYPE_15__*, %struct.TYPE_15__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %513, i64 1
  %515 = bitcast %struct.TYPE_15__* %514 to i8*
  %516 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %517 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %516, i32 0, i32 1
  %518 = load %struct.TYPE_15__*, %struct.TYPE_15__** %517, align 8
  %519 = load i32, i32* %8, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %518, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %521, i32 0, i32 7
  %523 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %522, i32 0, i32 0
  %524 = load %struct.TYPE_15__*, %struct.TYPE_15__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %524, i32 0, i32 6
  %526 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %525, i32 0, i32 1
  store i8* %515, i8** %526, align 8
  %527 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %528 = call i32 @ccfree(%struct.TYPE_15__* %527)
  store i32 0, i32* %9, align 4
  br label %529

529:                                              ; preds = %638, %451
  %530 = load i32, i32* %9, align 4
  %531 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %532 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %531, i32 0, i32 1
  %533 = load %struct.TYPE_15__*, %struct.TYPE_15__** %532, align 8
  %534 = load i32, i32* %8, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %533, i64 %535
  %537 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = icmp slt i32 %530, %538
  br i1 %539, label %540, label %641

540:                                              ; preds = %529
  %541 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %542 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %541, i32 0, i32 1
  %543 = load %struct.TYPE_15__*, %struct.TYPE_15__** %542, align 8
  %544 = load i32, i32* %8, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %543, i64 %545
  %547 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %546, i32 0, i32 5
  %548 = load %struct.TYPE_15__*, %struct.TYPE_15__** %547, align 8
  %549 = load i32, i32* %9, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %548, i64 %550
  %552 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %551, i32 0, i32 4
  %553 = load %struct.TYPE_15__*, %struct.TYPE_15__** %552, align 8
  store %struct.TYPE_15__* %553, %struct.TYPE_15__** %18, align 8
  %554 = load i8*, i8** %15, align 8
  %555 = bitcast i8* %554 to %struct.TYPE_15__*
  %556 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %557 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %556, i32 0, i32 1
  %558 = load %struct.TYPE_15__*, %struct.TYPE_15__** %557, align 8
  %559 = load i32, i32* %8, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %558, i64 %560
  %562 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %561, i32 0, i32 5
  %563 = load %struct.TYPE_15__*, %struct.TYPE_15__** %562, align 8
  %564 = load i32, i32* %9, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %563, i64 %565
  %567 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %566, i32 0, i32 4
  store %struct.TYPE_15__* %555, %struct.TYPE_15__** %567, align 8
  %568 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %569 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %572 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %571, i32 0, i32 2
  %573 = load i32, i32* %572, align 8
  %574 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %575 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %574, i32 0, i32 3
  %576 = load i32, i32* %575, align 4
  %577 = call i32 @ccv_compute_dense_matrix_size(i32 %570, i32 %573, i32 %576)
  %578 = load i8*, i8** %15, align 8
  %579 = sext i32 %577 to i64
  %580 = getelementptr inbounds i8, i8* %578, i64 %579
  store i8* %580, i8** %15, align 8
  %581 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %582 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %581, i32 0, i32 1
  %583 = load %struct.TYPE_15__*, %struct.TYPE_15__** %582, align 8
  %584 = load i32, i32* %8, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %583, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %586, i32 0, i32 5
  %588 = load %struct.TYPE_15__*, %struct.TYPE_15__** %587, align 8
  %589 = load i32, i32* %9, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %588, i64 %590
  %592 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %591, i32 0, i32 4
  %593 = load %struct.TYPE_15__*, %struct.TYPE_15__** %592, align 8
  %594 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %595 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %596 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %595, i32 0, i32 1
  %597 = load i32, i32* %596, align 4
  %598 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %599 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %598, i32 0, i32 2
  %600 = load i32, i32* %599, align 8
  %601 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %602 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %601, i32 0, i32 3
  %603 = load i32, i32* %602, align 4
  %604 = call i32 @ccv_compute_dense_matrix_size(i32 %597, i32 %600, i32 %603)
  %605 = call i32 @memcpy(%struct.TYPE_15__* %593, %struct.TYPE_15__* %594, i32 %604)
  %606 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %607 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %606, i32 0, i32 1
  %608 = load %struct.TYPE_15__*, %struct.TYPE_15__** %607, align 8
  %609 = load i32, i32* %8, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %608, i64 %610
  %612 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %611, i32 0, i32 5
  %613 = load %struct.TYPE_15__*, %struct.TYPE_15__** %612, align 8
  %614 = load i32, i32* %9, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %613, i64 %615
  %617 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %616, i32 0, i32 4
  %618 = load %struct.TYPE_15__*, %struct.TYPE_15__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %618, i64 1
  %620 = bitcast %struct.TYPE_15__* %619 to i8*
  %621 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %622 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %621, i32 0, i32 1
  %623 = load %struct.TYPE_15__*, %struct.TYPE_15__** %622, align 8
  %624 = load i32, i32* %8, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %623, i64 %625
  %627 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %626, i32 0, i32 5
  %628 = load %struct.TYPE_15__*, %struct.TYPE_15__** %627, align 8
  %629 = load i32, i32* %9, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %628, i64 %630
  %632 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %631, i32 0, i32 4
  %633 = load %struct.TYPE_15__*, %struct.TYPE_15__** %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %633, i32 0, i32 6
  %635 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %634, i32 0, i32 1
  store i8* %620, i8** %635, align 8
  %636 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %637 = call i32 @ccfree(%struct.TYPE_15__* %636)
  br label %638

638:                                              ; preds = %540
  %639 = load i32, i32* %9, align 4
  %640 = add nsw i32 %639, 1
  store i32 %640, i32* %9, align 4
  br label %529

641:                                              ; preds = %529
  br label %642

642:                                              ; preds = %641
  %643 = load i32, i32* %8, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %8, align 4
  br label %445

645:                                              ; preds = %445
  %646 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %646, %struct.TYPE_16__** %2, align 8
  br label %647

647:                                              ; preds = %645, %23
  %648 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %648
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccmalloc(i64) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i8* @ccv_dense_matrix_new(i32, i32, i32, i64, i32) #1

declare dso_local i32 @ccv_compute_dense_matrix_size(i32, i32, i32) #1

declare dso_local i32 @ccv_make_matrix_immutable(%struct.TYPE_15__*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ccfree(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
