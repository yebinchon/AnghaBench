; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_rnn.c_test_tactic_rnn.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_rnn.c_test_tactic_rnn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_tactic_rnn(i8* %0, i8* %1, i32 %2, float %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i8** null, i8*** %13, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i8*, i8** %12, align 8
  %28 = call i8** @read_tokens(i8* %27, i64* %14)
  store i8** %28, i8*** %13, align 8
  br label %29

29:                                               ; preds = %26, %6
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @srand(i32 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @basecfg(i8* %32)
  store i8* %33, i8** %15, align 8
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %15, align 8
  %36 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call %struct.TYPE_6__* @load_network(i8* %37, i8* %38, i32 0)
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %16, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %43

43:                                               ; preds = %58, %29
  %44 = load i32, i32* %18, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load float, float* %10, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store float %50, float* %57, align 4
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %18, align 4
  br label %43

61:                                               ; preds = %43
  store i32 0, i32* %20, align 4
  %62 = load i32, i32* %17, align 4
  %63 = call float* @calloc(i32 %62, i32 4)
  store float* %63, float** %21, align 8
  store float* null, float** %22, align 8
  br label %64

64:                                               ; preds = %69, %61
  %65 = load i32, i32* @stdin, align 4
  %66 = call i32 @getc(i32 %65)
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* @EOF, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load float*, float** %21, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  store float 1.000000e+00, float* %73, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %75 = load float*, float** %21, align 8
  %76 = call float* @network_predict(%struct.TYPE_6__* %74, float* %75)
  store float* %76, float** %22, align 8
  %77 = load float*, float** %21, align 8
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  store float 0.000000e+00, float* %80, align 4
  br label %64

81:                                               ; preds = %64
  store i32 0, i32* %18, align 4
  br label %82

82:                                               ; preds = %134, %81
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %137

86:                                               ; preds = %82
  store i32 0, i32* %19, align 4
  br label %87

87:                                               ; preds = %105, %86
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load float*, float** %22, align 8
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %92, i64 %94
  %96 = load float, float* %95, align 4
  %97 = fpext float %96 to double
  %98 = fcmp olt double %97, 1.000000e-04
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load float*, float** %22, align 8
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %100, i64 %102
  store float 0.000000e+00, float* %103, align 4
  br label %104

104:                                              ; preds = %99, %91
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %19, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %19, align 4
  br label %87

108:                                              ; preds = %87
  %109 = load float*, float** %22, align 8
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @sample_array(float* %109, i32 %110)
  store i32 %111, i32* %23, align 4
  %112 = load i32, i32* %20, align 4
  %113 = icmp eq i32 %112, 46
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* %23, align 4
  %116 = icmp eq i32 %115, 10
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %137

118:                                              ; preds = %114, %108
  %119 = load i32, i32* %23, align 4
  store i32 %119, i32* %20, align 4
  %120 = load i32, i32* %20, align 4
  %121 = load i8**, i8*** %13, align 8
  %122 = call i32 @print_symbol(i32 %120, i8** %121)
  %123 = load float*, float** %21, align 8
  %124 = load i32, i32* %20, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %123, i64 %125
  store float 1.000000e+00, float* %126, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %128 = load float*, float** %21, align 8
  %129 = call float* @network_predict(%struct.TYPE_6__* %127, float* %128)
  store float* %129, float** %22, align 8
  %130 = load float*, float** %21, align 8
  %131 = load i32, i32* %20, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  store float 0.000000e+00, float* %133, align 4
  br label %134

134:                                              ; preds = %118
  %135 = load i32, i32* %18, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %18, align 4
  br label %82

137:                                              ; preds = %117, %82
  %138 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i8** @read_tokens(i8*, i64*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @load_network(i8*, i8*, i32) #1

declare dso_local float* @calloc(i32, i32) #1

declare dso_local i32 @getc(i32) #1

declare dso_local float* @network_predict(%struct.TYPE_6__*, float*) #1

declare dso_local i32 @sample_array(float*, i32) #1

declare dso_local i32 @print_symbol(i32, i8**) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
