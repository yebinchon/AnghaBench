; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_rnn.c_valid_char_rnn.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_rnn.c_valid_char_rnn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Out of range character\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"%d BPC: %4.4f   Perplexity: %4.4f    Word Perplexity: %4.4f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @valid_char_rnn(i8* %0, i8* %1, i8* %2) #0 {
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
  %19 = alloca float*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @basecfg(i8* %20)
  store i8* %21, i8** %7, align 8
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call %struct.TYPE_4__* @load_network(i8* %25, i8* %26, i32 0)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %8, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call float* @calloc(i32 %33, i32 4)
  store float* %34, float** %14, align 8
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %57, %3
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load float*, float** %14, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  store float 1.000000e+00, float* %49, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = load float*, float** %14, align 8
  %52 = call float* @network_predict(%struct.TYPE_4__* %50, float* %51)
  %53 = load float*, float** %14, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  store float 0.000000e+00, float* %56, align 4
  br label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %35

60:                                               ; preds = %35
  store float 0.000000e+00, float* %16, align 4
  %61 = load i32, i32* @stdin, align 4
  %62 = call i32 @getc(i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = call float @log(float 2.000000e+00)
  store float %63, float* %17, align 4
  br label %64

64:                                               ; preds = %97, %60
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @EOF, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %139

68:                                               ; preds = %64
  %69 = load i32, i32* @stdin, align 4
  %70 = call i32 @getc(i32 %69)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* @EOF, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %139

75:                                               ; preds = %68
  %76 = load i32, i32* %18, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %18, align 4
  %80 = icmp sge i32 %79, 255
  br i1 %80, label %81, label %83

81:                                               ; preds = %78, %75
  %82 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp eq i32 %86, 32
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %18, align 4
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %18, align 4
  %93 = icmp eq i32 %92, 9
  br i1 %93, label %94, label %97

94:                                               ; preds = %91, %88, %83
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load float*, float** %14, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  store float 1.000000e+00, float* %101, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %103 = load float*, float** %14, align 8
  %104 = call float* @network_predict(%struct.TYPE_4__* %102, float* %103)
  store float* %104, float** %19, align 8
  %105 = load float*, float** %14, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  store float 0.000000e+00, float* %108, align 4
  %109 = load float*, float** %19, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %109, i64 %111
  %113 = load float, float* %112, align 4
  %114 = call float @log(float %113)
  %115 = load float, float* %17, align 4
  %116 = fdiv float %114, %115
  %117 = load float, float* %16, align 4
  %118 = fadd float %117, %116
  store float %118, float* %16, align 4
  %119 = load i32, i32* %18, align 4
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load float, float* %16, align 4
  %122 = fneg float %121
  %123 = load i32, i32* %10, align 4
  %124 = sitofp i32 %123 to float
  %125 = fdiv float %122, %124
  %126 = load float, float* %16, align 4
  %127 = fneg float %126
  %128 = load i32, i32* %10, align 4
  %129 = sitofp i32 %128 to float
  %130 = fdiv float %127, %129
  %131 = call double @pow(i32 2, float %130)
  %132 = load float, float* %16, align 4
  %133 = fneg float %132
  %134 = load i32, i32* %11, align 4
  %135 = sitofp i32 %134 to float
  %136 = fdiv float %133, %135
  %137 = call double @pow(i32 2, float %136)
  %138 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %120, float %125, double %131, double %137)
  br label %64

139:                                              ; preds = %74, %64
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

declare dso_local i32 @printf(i8*, i32, float, double, double) #1

declare dso_local double @pow(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
