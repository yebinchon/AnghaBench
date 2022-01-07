; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_segmenter.c_train_segmenter.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_segmenter.c_train_segmenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i32, i32, i32, i32, double, double, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i32, i32, i32, i32, i32, i32, i8**, i32, i32, %struct.TYPE_38__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_33__, %struct.TYPE_32__ }
%struct.TYPE_33__ = type { i32* }
%struct.TYPE_32__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Learning Rate: %g, Momentum: %g, Decay: %g\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/backup/\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"data/train.list\00", align 1
@SEGMENTATION_DATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Loaded: %lf seconds\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pred\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"truth\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"%s/%s_%d.weights\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"%s/%s.backup\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"%s/%s.weights\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @train_segmenter(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_34__**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_34__*, align 8
  %21 = alloca %struct.TYPE_37__, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_36__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_36__*, align 8
  %28 = alloca i8**, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_35__, align 8
  %31 = alloca %struct.TYPE_38__, align 8
  %32 = alloca %struct.TYPE_38__, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca double, align 8
  %36 = alloca float, align 4
  %37 = alloca %struct.TYPE_37__, align 4
  %38 = alloca %struct.TYPE_37__, align 4
  %39 = alloca %struct.TYPE_37__, align 4
  %40 = alloca %struct.TYPE_37__, align 4
  %41 = alloca [256 x i8], align 16
  %42 = alloca [256 x i8], align 16
  %43 = alloca [256 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store float -1.000000e+00, float* %16, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i8* @basecfg(i8* %44)
  store i8* %45, i8** %17, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %12, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = call %struct.TYPE_34__** @calloc(i32 %50, i32 8)
  store %struct.TYPE_34__** %51, %struct.TYPE_34__*** %18, align 8
  %52 = call i32 @time(i32 0)
  %53 = call i32 @srand(i32 %52)
  %54 = call i32 (...) @rand()
  store i32 %54, i32* %19, align 4
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %79, %7
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %55
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @srand(i32 %60)
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call %struct.TYPE_34__* @load_network(i8* %62, i8* %63, i32 %64)
  %66 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %18, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %66, i64 %68
  store %struct.TYPE_34__* %65, %struct.TYPE_34__** %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %18, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %71, i64 %73
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %77, %70
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %59
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  br label %55

82:                                               ; preds = %55
  %83 = call i32 @time(i32 0)
  %84 = call i32 @srand(i32 %83)
  %85 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %85, i64 0
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %86, align 8
  store %struct.TYPE_34__* %87, %struct.TYPE_34__** %20, align 8
  %88 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %89 = call i64 @get_network_image(%struct.TYPE_34__* %88)
  %90 = bitcast %struct.TYPE_37__* %21 to i64*
  store i64 %89, i64* %90, align 4
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 %93, %95
  store i32 %96, i32* %22, align 4
  %97 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %22, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %100, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %22, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %110, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %118 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %119, %122
  %124 = load i32, i32* %12, align 4
  %125 = mul nsw i32 %123, %124
  store i32 %125, i32* %23, align 4
  %126 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 5
  %131 = load double, double* %130, align 8
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %133 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %132, i32 0, i32 6
  %134 = load double, double* %133, align 8
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %128, double %131, double %134)
  %136 = load i8*, i8** %8, align 8
  %137 = call %struct.TYPE_36__* @read_data_cfg(i8* %136)
  store %struct.TYPE_36__* %137, %struct.TYPE_36__** %24, align 8
  %138 = load %struct.TYPE_36__*, %struct.TYPE_36__** %24, align 8
  %139 = call i8* @option_find_str(%struct.TYPE_36__* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i8* %139, i8** %25, align 8
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %24, align 8
  %141 = call i8* @option_find_str(%struct.TYPE_36__* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i8* %141, i8** %26, align 8
  %142 = load i8*, i8** %26, align 8
  %143 = call %struct.TYPE_36__* @get_paths(i8* %142)
  store %struct.TYPE_36__* %143, %struct.TYPE_36__** %27, align 8
  %144 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %145 = call i64 @list_to_array(%struct.TYPE_36__* %144)
  %146 = inttoptr i64 %145 to i8**
  store i8** %146, i8*** %28, align 8
  %147 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %148 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %152 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %29, align 4
  %154 = bitcast %struct.TYPE_35__* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %154, i8 0, i64 88, i1 false)
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 1
  store i32 %161, i32* %162, align 4
  %163 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 2
  store i32 32, i32* %163, align 8
  %164 = load i32, i32* %22, align 4
  %165 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 3
  store i32 %164, i32* %165, align 4
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 16
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 17
  store i32 %168, i32* %169, align 4
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %170, i32 0, i32 15
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 16
  store i32 %172, i32* %173, align 8
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %175 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %174, i32 0, i32 14
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 15
  store i32 %176, i32* %177, align 4
  %178 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %178, i32 0, i32 13
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 14
  store i32 %180, i32* %181, align 8
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %183 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %182, i32 0, i32 12
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 13
  store i32 %184, i32* %185, align 4
  %186 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %187 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %186, i32 0, i32 11
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 12
  store i32 %188, i32* %189, align 8
  %190 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %190, i32 0, i32 10
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 11
  store i32 %192, i32* %193, align 4
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 4
  store i32 %196, i32* %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 5
  store i32 80, i32* %198, align 4
  %199 = load i8**, i8*** %28, align 8
  %200 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 6
  store i8** %199, i8*** %200, align 8
  %201 = load i32, i32* %23, align 4
  %202 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 7
  store i32 %201, i32* %202, align 8
  %203 = load i32, i32* %29, align 4
  %204 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 8
  store i32 %203, i32* %204, align 4
  %205 = load i32, i32* @SEGMENTATION_DATA, align 4
  %206 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 10
  store i32 %205, i32* %206, align 8
  %207 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %30, i32 0, i32 9
  store %struct.TYPE_38__* %32, %struct.TYPE_38__** %207, align 8
  %208 = call i32 @load_data(%struct.TYPE_35__* byval(%struct.TYPE_35__) align 8 %30)
  store i32 %208, i32* %33, align 4
  %209 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %210 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %209, i32 0, i32 7
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %29, align 4
  %214 = sdiv i32 %212, %213
  store i32 %214, i32* %34, align 4
  br label %215

215:                                              ; preds = %406, %82
  %216 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %217 = call i32 @get_current_batch(%struct.TYPE_34__* %216)
  %218 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %219 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 8
  %221 = icmp slt i32 %217, %220
  br i1 %221, label %227, label %222

222:                                              ; preds = %215
  %223 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %224 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 0
  br label %227

227:                                              ; preds = %222, %215
  %228 = phi i1 [ true, %215 ], [ %226, %222 ]
  br i1 %228, label %229, label %407

229:                                              ; preds = %227
  %230 = call double (...) @what_time_is_it_now()
  store double %230, double* %35, align 8
  %231 = load i32, i32* %33, align 4
  %232 = call i32 @pthread_join(i32 %231, i32 0)
  %233 = bitcast %struct.TYPE_38__* %31 to i8*
  %234 = bitcast %struct.TYPE_38__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %233, i8* align 8 %234, i64 16, i1 false)
  %235 = call i32 @load_data(%struct.TYPE_35__* byval(%struct.TYPE_35__) align 8 %30)
  store i32 %235, i32* %33, align 4
  %236 = call double (...) @what_time_is_it_now()
  %237 = load double, double* %35, align 8
  %238 = fsub double %236, %237
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), double %238)
  %240 = call double (...) @what_time_is_it_now()
  store double %240, double* %35, align 8
  store float 0.000000e+00, float* %36, align 4
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %242 = bitcast %struct.TYPE_38__* %31 to { i32*, i32* }*
  %243 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %242, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = call float @train_network(%struct.TYPE_34__* %241, i32* %244, i32* %246)
  store float %247, float* %36, align 4
  %248 = load i32, i32* %14, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %325

250:                                              ; preds = %229
  %251 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %252 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %22, align 4
  %255 = sdiv i32 %253, %254
  %256 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %257 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %22, align 4
  %260 = sdiv i32 %258, %259
  %261 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %265 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %268 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = sub nsw i32 %269, 1
  %271 = mul nsw i32 %266, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %263, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = call i64 @float_to_image(i32 %255, i32 %260, i32 80, i32 %274)
  %276 = bitcast %struct.TYPE_37__* %37 to i64*
  store i64 %275, i64* %276, align 4
  %277 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %278 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %284 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %283, i32 0, i32 9
  %285 = load i32, i32* %284, align 4
  %286 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %290 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %293 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = sub nsw i32 %294, 1
  %296 = mul nsw i32 %291, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %288, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = call i64 @float_to_image(i32 %279, i32 %282, i32 %285, i32 %299)
  %301 = bitcast %struct.TYPE_37__* %38 to i64*
  store i64 %300, i64* %301, align 4
  %302 = bitcast %struct.TYPE_37__* %37 to i64*
  %303 = load i64, i64* %302, align 4
  %304 = call i64 @mask_to_rgb(i64 %303)
  %305 = bitcast %struct.TYPE_37__* %39 to i64*
  store i64 %304, i64* %305, align 4
  %306 = bitcast %struct.TYPE_37__* %21 to i64*
  %307 = load i64, i64* %306, align 4
  %308 = call i64 @mask_to_rgb(i64 %307)
  %309 = bitcast %struct.TYPE_37__* %40 to i64*
  store i64 %308, i64* %309, align 4
  %310 = bitcast %struct.TYPE_37__* %38 to i64*
  %311 = load i64, i64* %310, align 4
  %312 = call i32 @show_image(i64 %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %313 = bitcast %struct.TYPE_37__* %40 to i64*
  %314 = load i64, i64* %313, align 4
  %315 = call i32 @show_image(i64 %314, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %316 = bitcast %struct.TYPE_37__* %39 to i64*
  %317 = load i64, i64* %316, align 4
  %318 = call i32 @show_image(i64 %317, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 100)
  %319 = bitcast %struct.TYPE_37__* %39 to i64*
  %320 = load i64, i64* %319, align 4
  %321 = call i32 @free_image(i64 %320)
  %322 = bitcast %struct.TYPE_37__* %40 to i64*
  %323 = load i64, i64* %322, align 4
  %324 = call i32 @free_image(i64 %323)
  br label %325

325:                                              ; preds = %250, %229
  %326 = load float, float* %16, align 4
  %327 = fcmp oeq float %326, -1.000000e+00
  br i1 %327, label %328, label %330

328:                                              ; preds = %325
  %329 = load float, float* %36, align 4
  store float %329, float* %16, align 4
  br label %330

330:                                              ; preds = %328, %325
  %331 = load float, float* %16, align 4
  %332 = fpext float %331 to double
  %333 = fmul double %332, 9.000000e-01
  %334 = load float, float* %36, align 4
  %335 = fpext float %334 to double
  %336 = fmul double %335, 1.000000e-01
  %337 = fadd double %333, %336
  %338 = fptrunc double %337 to float
  store float %338, float* %16, align 4
  %339 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %340 = call i32 @get_current_batch(%struct.TYPE_34__* %339)
  %341 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %342 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %341, i32 0, i32 7
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %343, align 4
  %345 = sitofp i32 %344 to float
  %346 = load i32, i32* %29, align 4
  %347 = sitofp i32 %346 to float
  %348 = fdiv float %345, %347
  %349 = fpext float %348 to double
  %350 = load float, float* %36, align 4
  %351 = fpext float %350 to double
  %352 = load float, float* %16, align 4
  %353 = fpext float %352 to double
  %354 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %355 = call i32 @get_current_rate(%struct.TYPE_34__* %354)
  %356 = call double (...) @what_time_is_it_now()
  %357 = load double, double* %35, align 8
  %358 = fsub double %356, %357
  %359 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %360 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %359, i32 0, i32 7
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %361, align 4
  %363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i32 %340, double %349, double %351, double %353, i32 %355, double %358, i32 %362)
  %364 = bitcast %struct.TYPE_38__* %31 to { i32*, i32* }*
  %365 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %364, i32 0, i32 1
  %368 = load i32*, i32** %367, align 8
  %369 = call i32 @free_data(i32* %366, i32* %368)
  %370 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %371 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %370, i32 0, i32 7
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* %29, align 4
  %375 = sdiv i32 %373, %374
  %376 = load i32, i32* %34, align 4
  %377 = icmp sgt i32 %375, %376
  br i1 %377, label %378, label %393

378:                                              ; preds = %330
  %379 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %380 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %379, i32 0, i32 7
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %29, align 4
  %384 = sdiv i32 %382, %383
  store i32 %384, i32* %34, align 4
  %385 = getelementptr inbounds [256 x i8], [256 x i8]* %41, i64 0, i64 0
  %386 = load i8*, i8** %25, align 8
  %387 = load i8*, i8** %17, align 8
  %388 = load i32, i32* %34, align 4
  %389 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %385, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %386, i8* %387, i32 %388)
  %390 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %391 = getelementptr inbounds [256 x i8], [256 x i8]* %41, i64 0, i64 0
  %392 = call i32 @save_weights(%struct.TYPE_34__* %390, i8* %391)
  br label %393

393:                                              ; preds = %378, %330
  %394 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %395 = call i32 @get_current_batch(%struct.TYPE_34__* %394)
  %396 = srem i32 %395, 100
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %393
  %399 = getelementptr inbounds [256 x i8], [256 x i8]* %42, i64 0, i64 0
  %400 = load i8*, i8** %25, align 8
  %401 = load i8*, i8** %17, align 8
  %402 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %399, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* %400, i8* %401)
  %403 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %404 = getelementptr inbounds [256 x i8], [256 x i8]* %42, i64 0, i64 0
  %405 = call i32 @save_weights(%struct.TYPE_34__* %403, i8* %404)
  br label %406

406:                                              ; preds = %398, %393
  br label %215

407:                                              ; preds = %227
  %408 = getelementptr inbounds [256 x i8], [256 x i8]* %43, i64 0, i64 0
  %409 = load i8*, i8** %25, align 8
  %410 = load i8*, i8** %17, align 8
  %411 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %408, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %409, i8* %410)
  %412 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %413 = getelementptr inbounds [256 x i8], [256 x i8]* %43, i64 0, i64 0
  %414 = call i32 @save_weights(%struct.TYPE_34__* %412, i8* %413)
  %415 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %416 = call i32 @free_network(%struct.TYPE_34__* %415)
  %417 = load i8**, i8*** %28, align 8
  %418 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %419 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @free_ptrs(i8** %417, i32 %420)
  %422 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %423 = call i32 @free_list(%struct.TYPE_36__* %422)
  %424 = load i8*, i8** %17, align 8
  %425 = call i32 @free(i8* %424)
  ret void
}

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_34__** @calloc(i32, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local %struct.TYPE_34__* @load_network(i8*, i8*, i32) #1

declare dso_local i64 @get_network_image(%struct.TYPE_34__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_36__* @read_data_cfg(i8*) #1

declare dso_local i8* @option_find_str(%struct.TYPE_36__*, i8*, i8*) #1

declare dso_local %struct.TYPE_36__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_36__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @load_data(%struct.TYPE_35__* byval(%struct.TYPE_35__) align 8) #1

declare dso_local i32 @get_current_batch(%struct.TYPE_34__*) #1

declare dso_local double @what_time_is_it_now(...) #1

declare dso_local i32 @pthread_join(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @train_network(%struct.TYPE_34__*, i32*, i32*) #1

declare dso_local i64 @float_to_image(i32, i32, i32, i32) #1

declare dso_local i64 @mask_to_rgb(i64) #1

declare dso_local i32 @show_image(i64, i8*, i32) #1

declare dso_local i32 @free_image(i64) #1

declare dso_local i32 @get_current_rate(%struct.TYPE_34__*) #1

declare dso_local i32 @free_data(i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @save_weights(%struct.TYPE_34__*, i8*) #1

declare dso_local i32 @free_network(%struct.TYPE_34__*) #1

declare dso_local i32 @free_ptrs(i8**, i32) #1

declare dso_local i32 @free_list(%struct.TYPE_36__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
