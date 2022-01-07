; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_cifar.c_test_cifar_multi.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_cifar.c_test_cifar_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { float** }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"data/cifar/cifar-10-batches-bin/test_batch.bin\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%4d: %.2f%%\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_cifar_multi(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca [10 x float], align 16
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @load_network(i8* %14, i8* %15, i32 0)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @set_batch_network(i32* %17, i32 1)
  %19 = call i32 @time(i32 0)
  %20 = call i32 @srand(i32 %19)
  store float 0.000000e+00, float* %6, align 4
  call void @load_cifar10_data(%struct.TYPE_12__* sret %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %85, %2
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %88

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @float_to_image(i32 32, i32 32, i32 3, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = bitcast [10 x float]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 40, i1 false)
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call float* @network_predict(i32* %38, i32 %40)
  store float* %41, float** %11, align 8
  %42 = load float*, float** %11, align 8
  %43 = getelementptr inbounds [10 x float], [10 x float]* %10, i64 0, i64 0
  %44 = call i32 @axpy_cpu(i32 10, i32 1, float* %42, i32 1, float* %43, i32 1)
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @flip_image(i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call float* @network_predict(i32* %48, i32 %50)
  store float* %51, float** %11, align 8
  %52 = load float*, float** %11, align 8
  %53 = getelementptr inbounds [10 x float], [10 x float]* %10, i64 0, i64 0
  %54 = call i32 @axpy_cpu(i32 10, i32 1, float* %52, i32 1, float* %53, i32 1)
  %55 = getelementptr inbounds [10 x float], [10 x float]* %10, i64 0, i64 0
  %56 = call i32 @max_index(float* %55, i32 10)
  store i32 %56, i32* %12, align 4
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load float**, float*** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float*, float** %59, i64 %61
  %63 = load float*, float** %62, align 8
  %64 = call i32 @max_index(float* %63, i32 10)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %27
  %69 = load float, float* %6, align 4
  %70 = fadd float %69, 1.000000e+00
  store float %70, float* %6, align 4
  br label %71

71:                                               ; preds = %68, %27
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @free_image(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load float, float* %6, align 4
  %77 = fpext float %76 to double
  %78 = fmul double 1.000000e+02, %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  %81 = sitofp i32 %80 to double
  %82 = fdiv double %78, %81
  %83 = fptosi double %82 to i32
  %84 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %83)
  br label %85

85:                                               ; preds = %71
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %21

88:                                               ; preds = %21
  ret void
}

declare dso_local i32* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(i32*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local void @load_cifar10_data(%struct.TYPE_12__* sret, i8*) #1

declare dso_local i32 @float_to_image(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local float* @network_predict(i32*, i32) #1

declare dso_local i32 @axpy_cpu(i32, i32, float*, i32, float*, i32) #1

declare dso_local i32 @flip_image(i32) #1

declare dso_local i32 @max_index(float*, i32) #1

declare dso_local i32 @free_image(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
