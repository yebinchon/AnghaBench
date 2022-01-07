; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_lsd.c_inter_dcgan.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_lsd.c_inter_dcgan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { float*, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: Predicted in %f seconds.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"out%05d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inter_dcgan(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_19__, align 8
  %19 = alloca float*, align 8
  %20 = alloca %struct.TYPE_19__, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call %struct.TYPE_18__* @load_network(i8* %21, i8* %22, i32 0)
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %5, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = call i32 @set_batch_network(%struct.TYPE_18__* %24, i32 1)
  %26 = call i32 @srand(i32 2222222)
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  store i8* %27, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %49, %2
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %52

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %28

52:                                               ; preds = %44, %28
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  call void @random_unit_vector_image(%struct.TYPE_19__* sret %11, i32 %55, i32 %58, i32 %61)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  call void @random_unit_vector_image(%struct.TYPE_19__* sret %12, i32 %64, i32 %67, i32 %70)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  call void @make_image(%struct.TYPE_19__* sret %13, i32 %73, i32 %76, i32 %79)
  call void @copy_image(%struct.TYPE_19__* sret %14, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %11)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 15, i32* %17, align 4
  br label %80

80:                                               ; preds = %52, %113
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %80
  store i32 0, i32* %16, align 4
  %87 = call i32 @free_image(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %11)
  %88 = bitcast %struct.TYPE_19__* %11 to i8*
  %89 = bitcast %struct.TYPE_19__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 24, i1 false)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  call void @random_unit_vector_image(%struct.TYPE_19__* sret %18, i32 %92, i32 %95, i32 %98)
  %99 = bitcast %struct.TYPE_19__* %12 to i8*
  %100 = bitcast %struct.TYPE_19__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 24, i1 false)
  %101 = load i32, i32* %15, align 4
  %102 = icmp sgt i32 %101, 300
  br i1 %102, label %103, label %106

103:                                              ; preds = %86
  %104 = bitcast %struct.TYPE_19__* %12 to i8*
  %105 = bitcast %struct.TYPE_19__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 24, i1 false)
  br label %106

106:                                              ; preds = %103, %86
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 300, %108
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  ret void

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %80
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %16, align 4
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %117 = load float*, float** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %119 = load float*, float** %118, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sitofp i32 %120 to float
  %122 = load i32, i32* %17, align 4
  %123 = sitofp i32 %122 to float
  %124 = fdiv float %121, %123
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %126, %128
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %129, %131
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %134 = load float*, float** %133, align 8
  %135 = call i32 @slerp(float* %117, float* %119, float %124, i32 %132, float* %134)
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %137 = load float*, float** %136, align 8
  store float* %137, float** %19, align 8
  %138 = call i64 (...) @clock()
  store i64 %138, i64* %6, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %140 = load float*, float** %19, align 8
  %141 = call i32 @network_predict(%struct.TYPE_18__* %139, float* %140)
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %143 = load i32, i32* %10, align 4
  call void @get_network_image_layer(%struct.TYPE_19__* sret %20, %struct.TYPE_18__* %142, i32 %143)
  %144 = call i32 @normalize_image(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %20)
  %145 = load i8*, i8** %8, align 8
  %146 = call i64 (...) @clock()
  %147 = load i64, i64* %6, align 8
  %148 = sub nsw i64 %146, %147
  %149 = call double @sec(i64 %148)
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %145, double %149)
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @sprintf(i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = call i32 @save_image(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %156 = call i32 @save_image(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %20, i8* %155)
  %157 = call i32 @show_image(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %80
}

declare dso_local %struct.TYPE_18__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local void @random_unit_vector_image(%struct.TYPE_19__* sret, i32, i32, i32) #1

declare dso_local void @make_image(%struct.TYPE_19__* sret, i32, i32, i32) #1

declare dso_local void @copy_image(%struct.TYPE_19__* sret, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8) #1

declare dso_local i32 @free_image(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @slerp(float*, float*, float, i32, float*) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @network_predict(%struct.TYPE_18__*, float*) #1

declare dso_local void @get_network_image_layer(%struct.TYPE_19__* sret, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @normalize_image(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8) #1

declare dso_local double @sec(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @save_image(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, i8*) #1

declare dso_local i32 @show_image(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
