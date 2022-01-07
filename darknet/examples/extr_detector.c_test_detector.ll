; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_detector.c_test_detector.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_detector.c_test_detector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { float*, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"data/names.list\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Enter Image Path: \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: Predicted in %f seconds.\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"predictions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_detector(i8* %0, i8* %1, i8* %2, i8* %3, float %4, float %5, i8* %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca %struct.TYPE_19__**, align 8
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca double, align 8
  %23 = alloca [256 x i8], align 16
  %24 = alloca i8*, align 8
  %25 = alloca float, align 4
  %26 = alloca %struct.TYPE_19__, align 8
  %27 = alloca %struct.TYPE_19__, align 8
  %28 = alloca %struct.TYPE_18__, align 4
  %29 = alloca float*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i32* @read_data_cfg(i8* %32)
  store i32* %33, i32** %17, align 8
  %34 = load i32*, i32** %17, align 8
  %35 = call i8* @option_find_str(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %35, i8** %18, align 8
  %36 = load i8*, i8** %18, align 8
  %37 = call i8** @get_labels(i8* %36)
  store i8** %37, i8*** %19, align 8
  %38 = call %struct.TYPE_19__** (...) @load_alphabet()
  store %struct.TYPE_19__** %38, %struct.TYPE_19__*** %20, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call %struct.TYPE_17__* @load_network(i8* %39, i8* %40, i32 0)
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %21, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %43 = call i32 @set_batch_network(%struct.TYPE_17__* %42, i32 1)
  %44 = call i32 @srand(i32 2222222)
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  store i8* %45, i8** %24, align 8
  store float 0x3FDCCCCCC0000000, float* %25, align 4
  br label %46

46:                                               ; preds = %8, %180
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i8*, i8** %24, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @strncpy(i8* %50, i8* %51, i32 256)
  br label %66

53:                                               ; preds = %46
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @stdout, align 4
  %56 = call i32 @fflush(i32 %55)
  %57 = load i8*, i8** %24, align 8
  %58 = load i32, i32* @stdin, align 4
  %59 = call i8* @fgets(i8* %57, i32 256, i32 %58)
  store i8* %59, i8** %24, align 8
  %60 = load i8*, i8** %24, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %181

63:                                               ; preds = %53
  %64 = load i8*, i8** %24, align 8
  %65 = call i32 @strtok(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %49
  %67 = load i8*, i8** %24, align 8
  %68 = call { float*, i64 } @load_image_color(i8* %67, i32 0, i32 0)
  %69 = bitcast %struct.TYPE_19__* %26 to { float*, i64 }*
  %70 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %69, i32 0, i32 0
  %71 = extractvalue { float*, i64 } %68, 0
  store float* %71, float** %70, align 8
  %72 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %69, i32 0, i32 1
  %73 = extractvalue { float*, i64 } %68, 1
  store i64 %73, i64* %72, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = bitcast %struct.TYPE_19__* %26 to { float*, i64 }*
  %81 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %80, i32 0, i32 0
  %82 = load float*, float** %81, align 8
  %83 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %80, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call { float*, i64 } @letterbox_image(float* %82, i64 %84, i32 %76, i32 %79)
  %86 = bitcast %struct.TYPE_19__* %27 to { float*, i64 }*
  %87 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %86, i32 0, i32 0
  %88 = extractvalue { float*, i64 } %85, 0
  store float* %88, float** %87, align 8
  %89 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %86, i32 0, i32 1
  %90 = extractvalue { float*, i64 } %85, 1
  store i64 %90, i64* %89, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i64 %98
  %100 = bitcast %struct.TYPE_18__* %28 to i8*
  %101 = bitcast %struct.TYPE_18__* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 4, i1 false)
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %103 = load float*, float** %102, align 8
  store float* %103, float** %29, align 8
  %104 = call double (...) @what_time_is_it_now()
  store double %104, double* %22, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %106 = load float*, float** %29, align 8
  %107 = call i32 @network_predict(%struct.TYPE_17__* %105, float* %106)
  %108 = load i8*, i8** %24, align 8
  %109 = call double (...) @what_time_is_it_now()
  %110 = load double, double* %22, align 8
  %111 = fsub double %109, %110
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %108, double %111)
  store i32 0, i32* %30, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load float, float* %13, align 4
  %119 = load float, float* %14, align 4
  %120 = call i32* @get_network_boxes(%struct.TYPE_17__* %113, i32 %115, i32 %117, float %118, float %119, i32 0, i32 1, i32* %30)
  store i32* %120, i32** %31, align 8
  %121 = load float, float* %25, align 4
  %122 = fcmp une float %121, 0.000000e+00
  br i1 %122, label %123, label %130

123:                                              ; preds = %66
  %124 = load i32*, i32** %31, align 8
  %125 = load i32, i32* %30, align 4
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load float, float* %25, align 4
  %129 = call i32 @do_nms_sort(i32* %124, i32 %125, i32 %127, float %128)
  br label %130

130:                                              ; preds = %123, %66
  %131 = load i32*, i32** %31, align 8
  %132 = load i32, i32* %30, align 4
  %133 = load float, float* %13, align 4
  %134 = load i8**, i8*** %19, align 8
  %135 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %20, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = bitcast %struct.TYPE_19__* %26 to { float*, i64 }*
  %139 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %138, i32 0, i32 0
  %140 = load float*, float** %139, align 8
  %141 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %138, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @draw_detections(float* %140, i64 %142, i32* %131, i32 %132, float %133, i8** %134, %struct.TYPE_19__** %135, i32 %137)
  %144 = load i32*, i32** %31, align 8
  %145 = load i32, i32* %30, align 4
  %146 = call i32 @free_detections(i32* %144, i32 %145)
  %147 = load i8*, i8** %15, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %157

149:                                              ; preds = %130
  %150 = load i8*, i8** %15, align 8
  %151 = bitcast %struct.TYPE_19__* %26 to { float*, i64 }*
  %152 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %151, i32 0, i32 0
  %153 = load float*, float** %152, align 8
  %154 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %151, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @save_image(float* %153, i64 %155, i8* %150)
  br label %164

157:                                              ; preds = %130
  %158 = bitcast %struct.TYPE_19__* %26 to { float*, i64 }*
  %159 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %158, i32 0, i32 0
  %160 = load float*, float** %159, align 8
  %161 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %158, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @save_image(float* %160, i64 %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %164

164:                                              ; preds = %157, %149
  %165 = bitcast %struct.TYPE_19__* %26 to { float*, i64 }*
  %166 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %165, i32 0, i32 0
  %167 = load float*, float** %166, align 8
  %168 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %165, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @free_image(float* %167, i64 %169)
  %171 = bitcast %struct.TYPE_19__* %27 to { float*, i64 }*
  %172 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %171, i32 0, i32 0
  %173 = load float*, float** %172, align 8
  %174 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %171, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @free_image(float* %173, i64 %175)
  %177 = load i8*, i8** %12, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %164
  br label %181

180:                                              ; preds = %164
  br label %46

181:                                              ; preds = %62, %179
  ret void
}

declare dso_local i32* @read_data_cfg(i8*) #1

declare dso_local i8* @option_find_str(i32*, i8*, i8*) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local %struct.TYPE_19__** @load_alphabet(...) #1

declare dso_local %struct.TYPE_17__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strtok(i8*, i8*) #1

declare dso_local { float*, i64 } @load_image_color(i8*, i32, i32) #1

declare dso_local { float*, i64 } @letterbox_image(float*, i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local double @what_time_is_it_now(...) #1

declare dso_local i32 @network_predict(%struct.TYPE_17__*, float*) #1

declare dso_local i32* @get_network_boxes(%struct.TYPE_17__*, i32, i32, float, float, i32, i32, i32*) #1

declare dso_local i32 @do_nms_sort(i32*, i32, i32, float) #1

declare dso_local i32 @draw_detections(float*, i64, i32*, i32, float, i8**, %struct.TYPE_19__**, i32) #1

declare dso_local i32 @free_detections(i32*, i32) #1

declare dso_local i32 @save_image(float*, i64, i8*) #1

declare dso_local i32 @free_image(float*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
