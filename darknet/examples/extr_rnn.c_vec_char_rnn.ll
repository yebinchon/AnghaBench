; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_rnn.c_vec_char_rnn.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_rnn.c_vec_char_rnn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { double*, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%g\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vec_char_rnn(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @basecfg(i8* %17)
  store i8* %18, i8** %7, align 8
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call %struct.TYPE_6__* @load_network(i8* %22, i8* %23, i32 0)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call float* @calloc(i32 %30, i32 4)
  store float* %31, float** %12, align 8
  br label %32

32:                                               ; preds = %130, %3
  %33 = load i32, i32* @stdin, align 4
  %34 = call i8* @fgetl(i32 %33)
  store i8* %34, i8** %14, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %132

36:                                               ; preds = %32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = call i32 @reset_network_state(%struct.TYPE_6__* %37, i32 0)
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %61, %36
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load float*, float** %12, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  store float 1.000000e+00, float* %53, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = load float*, float** %12, align 8
  %56 = call i32 @network_predict(%struct.TYPE_6__* %54, float* %55)
  %57 = load float*, float** %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  store float 0.000000e+00, float* %60, align 4
  br label %61

61:                                               ; preds = %43
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %39

64:                                               ; preds = %39
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @strip(i8* %65)
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 @strlen(i8* %67)
  store i32 %68, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %91, %64
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %69
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  store i32 %79, i32* %10, align 4
  %80 = load float*, float** %12, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  store float 1.000000e+00, float* %83, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = load float*, float** %12, align 8
  %86 = call i32 @network_predict(%struct.TYPE_6__* %84, float* %85)
  %87 = load float*, float** %12, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  store float 0.000000e+00, float* %90, align 4
  br label %91

91:                                               ; preds = %73
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %69

94:                                               ; preds = %69
  store i32 32, i32* %10, align 4
  %95 = load float*, float** %12, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  store float 1.000000e+00, float* %98, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = load float*, float** %12, align 8
  %101 = call i32 @network_predict(%struct.TYPE_6__* %99, float* %100)
  %102 = load float*, float** %12, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %102, i64 %104
  store float 0.000000e+00, float* %105, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 0
  %110 = bitcast %struct.TYPE_7__* %16 to i8*
  %111 = bitcast %struct.TYPE_7__* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 16, i1 false)
  %112 = load i8*, i8** %14, align 8
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %112)
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %127, %94
  %115 = load i32, i32* %13, align 4
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %121 = load double*, double** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %121, i64 %123
  %125 = load double, double* %124, align 8
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %125)
  br label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %114

130:                                              ; preds = %114
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %32

132:                                              ; preds = %32
  ret void
}

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local float* @calloc(i32, i32) #1

declare dso_local i8* @fgetl(i32) #1

declare dso_local i32 @reset_network_state(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @network_predict(%struct.TYPE_6__*, float*) #1

declare dso_local i32 @strip(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
