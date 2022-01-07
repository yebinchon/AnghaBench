; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_rnn.c_test_tactic_rnn_multi.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_rnn.c_test_tactic_rnn_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { float }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_tactic_rnn_multi(i8* %0, i8* %1, i32 %2, float %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
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
  %39 = call %struct.TYPE_7__* @load_network(i8* %37, i8* %38, i32 0)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %16, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %43

43:                                               ; preds = %58, %29
  %44 = load i32, i32* %18, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load float, float* %10, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
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

64:                                               ; preds = %61, %145
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %66 = call i32 @reset_network_state(%struct.TYPE_7__* %65, i32 0)
  br label %67

67:                                               ; preds = %77, %64
  %68 = load i32, i32* @stdin, align 4
  %69 = call i32 @getc(i32 %68)
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* @EOF, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %20, align 4
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi i1 [ false, %67 ], [ %74, %72 ]
  br i1 %76, label %77, label %89

77:                                               ; preds = %75
  %78 = load float*, float** %21, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %78, i64 %80
  store float 1.000000e+00, float* %81, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %83 = load float*, float** %21, align 8
  %84 = call float* @network_predict(%struct.TYPE_7__* %82, float* %83)
  store float* %84, float** %22, align 8
  %85 = load float*, float** %21, align 8
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  store float 0.000000e+00, float* %88, align 4
  br label %67

89:                                               ; preds = %75
  store i32 0, i32* %18, align 4
  br label %90

90:                                               ; preds = %142, %89
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %145

94:                                               ; preds = %90
  store i32 0, i32* %19, align 4
  br label %95

95:                                               ; preds = %113, %94
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %95
  %100 = load float*, float** %22, align 8
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %100, i64 %102
  %104 = load float, float* %103, align 4
  %105 = fpext float %104 to double
  %106 = fcmp olt double %105, 1.000000e-04
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load float*, float** %22, align 8
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %108, i64 %110
  store float 0.000000e+00, float* %111, align 4
  br label %112

112:                                              ; preds = %107, %99
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %19, align 4
  br label %95

116:                                              ; preds = %95
  %117 = load float*, float** %22, align 8
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @sample_array(float* %117, i32 %118)
  store i32 %119, i32* %23, align 4
  %120 = load i32, i32* %20, align 4
  %121 = icmp eq i32 %120, 46
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32, i32* %23, align 4
  %124 = icmp eq i32 %123, 10
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %145

126:                                              ; preds = %122, %116
  %127 = load i32, i32* %23, align 4
  store i32 %127, i32* %20, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i8**, i8*** %13, align 8
  %130 = call i32 @print_symbol(i32 %128, i8** %129)
  %131 = load float*, float** %21, align 8
  %132 = load i32, i32* %20, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %131, i64 %133
  store float 1.000000e+00, float* %134, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %136 = load float*, float** %21, align 8
  %137 = call float* @network_predict(%struct.TYPE_7__* %135, float* %136)
  store float* %137, float** %22, align 8
  %138 = load float*, float** %21, align 8
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %138, i64 %140
  store float 0.000000e+00, float* %141, align 4
  br label %142

142:                                              ; preds = %126
  %143 = load i32, i32* %18, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %18, align 4
  br label %90

145:                                              ; preds = %125, %90
  %146 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %64
}

declare dso_local i8** @read_tokens(i8*, i64*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @load_network(i8*, i8*, i32) #1

declare dso_local float* @calloc(i32, i32) #1

declare dso_local i32 @reset_network_state(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @getc(i32) #1

declare dso_local float* @network_predict(%struct.TYPE_7__*, float*) #1

declare dso_local i32 @sample_array(float*, i32) #1

declare dso_local i32 @print_symbol(i32, i8**) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
