; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_lsd.c_test_dcgan.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_lsd.c_test_dcgan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, float* }

@.str = private unnamed_addr constant [30 x i8] c"%s: Predicted in %f seconds.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_dcgan(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call %struct.TYPE_13__* @load_network(i8* %14, i8* %15, i32 0)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = call i32 @set_batch_network(%struct.TYPE_13__* %17, i32 1)
  %19 = call i32 @srand(i32 2222222)
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  store i8* %20, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %2, %56
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  call void @make_image(%struct.TYPE_14__* sret %10, i32 %28, i32 %31, i32 %34)
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %53, %25
  %36 = load i32, i32* %11, align 4
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %38, %40
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %41, %43
  %45 = icmp slt i32 %36, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %35
  %47 = call float (...) @rand_normal()
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 3
  %49 = load float*, float** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  store float %47, float* %52, align 4
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %35

56:                                               ; preds = %35
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 3
  %58 = load float*, float** %57, align 8
  store float* %58, float** %12, align 8
  %59 = call i64 (...) @clock()
  store i64 %59, i64* %6, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = load float*, float** %12, align 8
  %62 = call i32 @network_predict(%struct.TYPE_13__* %60, float* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = load i32, i32* %9, align 4
  call void @get_network_image_layer(%struct.TYPE_14__* sret %13, %struct.TYPE_13__* %63, i32 %64)
  %65 = call i32 @normalize_image(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %13)
  %66 = load i8*, i8** %8, align 8
  %67 = call i64 (...) @clock()
  %68 = load i64, i64* %6, align 8
  %69 = sub nsw i64 %67, %68
  %70 = call double @sec(i64 %69)
  %71 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %66, double %70)
  %72 = call i32 @save_image(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 @show_image(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %74 = call i32 @free_image(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %10)
  br label %25
}

declare dso_local %struct.TYPE_13__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local void @make_image(%struct.TYPE_14__* sret, i32, i32, i32) #1

declare dso_local float @rand_normal(...) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @network_predict(%struct.TYPE_13__*, float*) #1

declare dso_local void @get_network_image_layer(%struct.TYPE_14__* sret, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @normalize_image(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i32 @printf(i8*, i8*, double) #1

declare dso_local double @sec(i64) #1

declare dso_local i32 @save_image(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8, i8*) #1

declare dso_local i32 @show_image(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8, i8*, i32) #1

declare dso_local i32 @free_image(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
