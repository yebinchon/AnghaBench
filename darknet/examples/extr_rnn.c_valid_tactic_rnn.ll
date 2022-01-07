; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_rnn.c_valid_tactic_rnn.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_rnn.c_valid_tactic_rnn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Out of range character\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"%d %d Perplexity: %4.4f    Word Perplexity: %4.4f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @valid_tactic_rnn(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @basecfg(i8* %21)
  store i8* %22, i8** %7, align 8
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.TYPE_4__* @load_network(i8* %26, i8* %27, i32 0)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %8, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strlen(i8* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call float* @calloc(i32 %34, i32 4)
  store float* %35, float** %14, align 8
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %58, %3
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load float*, float** %14, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  store float 1.000000e+00, float* %50, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = load float*, float** %14, align 8
  %53 = call float* @network_predict(%struct.TYPE_4__* %51, float* %52)
  %54 = load float*, float** %14, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  store float 0.000000e+00, float* %57, align 4
  br label %58

58:                                               ; preds = %40
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %36

61:                                               ; preds = %36
  store float 0.000000e+00, float* %16, align 4
  %62 = load i32, i32* @stdin, align 4
  %63 = call i32 @getc(i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = call float @log(float 2.000000e+00)
  store float %64, float* %17, align 4
  store i32 0, i32* %18, align 4
  br label %65

65:                                               ; preds = %116, %114, %61
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @EOF, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %145

69:                                               ; preds = %65
  %70 = load i32, i32* @stdin, align 4
  %71 = call i32 @getc(i32 %70)
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* @EOF, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %145

76:                                               ; preds = %69
  %77 = load i32, i32* %19, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %19, align 4
  %81 = icmp sge i32 %80, 255
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %76
  %83 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %79
  %85 = load float*, float** %14, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  store float 1.000000e+00, float* %88, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = load float*, float** %14, align 8
  %91 = call float* @network_predict(%struct.TYPE_4__* %89, float* %90)
  store float* %91, float** %20, align 8
  %92 = load float*, float** %14, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %92, i64 %94
  store float 0.000000e+00, float* %95, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %96, 46
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = load i32, i32* %19, align 4
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 0, i32* %18, align 4
  br label %102

102:                                              ; preds = %101, %98, %84
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 62
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32, i32* %19, align 4
  %110 = icmp eq i32 %109, 62
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  store i32 1, i32* %18, align 4
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %111, %108, %105
  %115 = load i32, i32* %19, align 4
  store i32 %115, i32* %12, align 4
  br label %65

116:                                              ; preds = %102
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  %119 = load float*, float** %20, align 8
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %119, i64 %121
  %123 = load float, float* %122, align 4
  %124 = call float @log(float %123)
  %125 = load float, float* %17, align 4
  %126 = fdiv float %124, %125
  %127 = load float, float* %16, align 4
  %128 = fadd float %127, %126
  store float %128, float* %16, align 4
  %129 = load i32, i32* %19, align 4
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load float, float* %16, align 4
  %133 = fneg float %132
  %134 = load i32, i32* %10, align 4
  %135 = sitofp i32 %134 to float
  %136 = fdiv float %133, %135
  %137 = call double @pow(i32 2, float %136)
  %138 = load float, float* %16, align 4
  %139 = fneg float %138
  %140 = load i32, i32* %11, align 4
  %141 = sitofp i32 %140 to float
  %142 = fdiv float %139, %141
  %143 = call double @pow(i32 2, float %142)
  %144 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %131, double %137, double %143)
  br label %65

145:                                              ; preds = %75, %65
  ret void
}

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local float* @calloc(i32, i32) #1

declare dso_local float* @network_predict(%struct.TYPE_4__*, float*) #1

declare dso_local i32 @getc(i32) #1

declare dso_local float @log(float) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, double, double) #1

declare dso_local double @pow(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
