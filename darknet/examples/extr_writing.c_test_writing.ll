; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_writing.c_test_writing.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_writing.c_test_writing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, float* }

@.str = private unnamed_addr constant [19 x i8] c"Enter Image Path: \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: Predicted in %f seconds.\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"prediction\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"orig\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_writing(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @parse_network_cfg(i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @load_weights(i32* %7, i8* %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = call i32 @set_batch_network(i32* %7, i32 1)
  %25 = call i32 @srand(i32 2222222)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %23, %88
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strncpy(i8* %31, i8* %32, i32 256)
  br label %47

34:                                               ; preds = %27
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 @fflush(i32 %36)
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* @stdin, align 4
  %40 = call i8* @fgets(i8* %38, i32 256, i32 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %89

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @strtok(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %30
  %48 = load i8*, i8** %10, align 8
  call void @load_image_color(%struct.TYPE_10__* sret %11, i8* %48, i32 0, i32 0)
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @resize_network(i32* %7, i32 %50, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %57, i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %62 = load float*, float** %61, align 8
  store float* %62, float** %12, align 8
  %63 = call i64 (...) @clock()
  store i64 %63, i64* %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load float*, float** %12, align 8
  %66 = call i32 @network_predict(i32 %64, float* %65)
  %67 = load i8*, i8** %10, align 8
  %68 = call i64 (...) @clock()
  %69 = load i64, i64* %8, align 8
  %70 = sub nsw i64 %68, %69
  %71 = call double @sec(i64 %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %67, double %71)
  %73 = load i32, i32* %7, align 4
  call void @get_network_image(%struct.TYPE_10__* sret %13, i32 %73)
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  call void @resize_image(%struct.TYPE_10__* sret %14, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %13, i32 %75, i32 %77)
  call void @threshold_image(%struct.TYPE_10__* sret %15, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %14, double 5.000000e-01)
  %78 = bitcast %struct.TYPE_10__* %13 to i8*
  %79 = bitcast %struct.TYPE_10__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 24, i1 false)
  %80 = call i32 @show_image(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %81 = call i32 @show_image(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %82 = call i32 @free_image(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %14)
  %83 = call i32 @free_image(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %15)
  %84 = call i32 @free_image(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %11)
  %85 = load i8*, i8** %6, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %47
  br label %89

88:                                               ; preds = %47
  br label %27

89:                                               ; preds = %43, %87
  ret void
}

declare dso_local i32 @parse_network_cfg(i8*) #1

declare dso_local i32 @load_weights(i32*, i8*) #1

declare dso_local i32 @set_batch_network(i32*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strtok(i8*, i8*) #1

declare dso_local void @load_image_color(%struct.TYPE_10__* sret, i8*, i32, i32) #1

declare dso_local i32 @resize_network(i32*, i32, i32) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @network_predict(i32, float*) #1

declare dso_local double @sec(i64) #1

declare dso_local void @get_network_image(%struct.TYPE_10__* sret, i32) #1

declare dso_local void @resize_image(%struct.TYPE_10__* sret, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8, i32, i32) #1

declare dso_local void @threshold_image(%struct.TYPE_10__* sret, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @show_image(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8, i8*) #1

declare dso_local i32 @free_image(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
