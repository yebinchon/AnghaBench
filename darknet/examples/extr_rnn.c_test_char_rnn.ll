; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_rnn.c_test_char_rnn.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_rnn.c_test_char_rnn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_char_rnn(i8* %0, i8* %1, i32 %2, i8* %3, float %4, i32 %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store float %4, float* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  store i8** null, i8*** %15, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load i8*, i8** %14, align 8
  %30 = call i8** @read_tokens(i8* %29, i64* %16)
  store i8** %30, i8*** %15, align 8
  br label %31

31:                                               ; preds = %28, %7
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @srand(i32 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @basecfg(i8* %34)
  store i8* %35, i8** %17, align 8
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** %17, align 8
  %38 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call %struct.TYPE_6__* @load_network(i8* %39, i8* %40, i32 0)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %18, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %45

45:                                               ; preds = %60, %31
  %46 = load i32, i32* %20, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load float, float* %12, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %20, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store float %52, float* %59, align 4
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %20, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %20, align 4
  br label %45

63:                                               ; preds = %45
  store i32 0, i32* %22, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @strlen(i8* %64)
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %19, align 4
  %67 = call float* @calloc(i32 %66, i32 4)
  store float* %67, float** %24, align 8
  store i32 0, i32* %20, align 4
  br label %68

68:                                               ; preds = %94, %63
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %23, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %68
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  store i32 %79, i32* %22, align 4
  %80 = load float*, float** %24, align 8
  %81 = load i32, i32* %22, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  store float 1.000000e+00, float* %83, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %85 = load float*, float** %24, align 8
  %86 = call float* @network_predict(%struct.TYPE_6__* %84, float* %85)
  %87 = load float*, float** %24, align 8
  %88 = load i32, i32* %22, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  store float 0.000000e+00, float* %90, align 4
  %91 = load i32, i32* %22, align 4
  %92 = load i8**, i8*** %15, align 8
  %93 = call i32 @print_symbol(i32 %91, i8** %92)
  br label %94

94:                                               ; preds = %73
  %95 = load i32, i32* %20, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %20, align 4
  br label %68

97:                                               ; preds = %68
  %98 = load i32, i32* %23, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i8*, i8** %11, align 8
  %102 = load i32, i32* %23, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  store i32 %107, i32* %22, align 4
  br label %108

108:                                              ; preds = %100, %97
  %109 = load i32, i32* %22, align 4
  %110 = load i8**, i8*** %15, align 8
  %111 = call i32 @print_symbol(i32 %109, i8** %110)
  store i32 0, i32* %20, align 4
  br label %112

112:                                              ; preds = %164, %108
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %167

116:                                              ; preds = %112
  %117 = load float*, float** %24, align 8
  %118 = load i32, i32* %22, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %117, i64 %119
  store float 1.000000e+00, float* %120, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %122 = load float*, float** %24, align 8
  %123 = call float* @network_predict(%struct.TYPE_6__* %121, float* %122)
  store float* %123, float** %25, align 8
  %124 = load float*, float** %24, align 8
  %125 = load i32, i32* %22, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %124, i64 %126
  store float 0.000000e+00, float* %127, align 4
  store i32 32, i32* %21, align 4
  br label %128

128:                                              ; preds = %132, %116
  %129 = load i32, i32* %21, align 4
  %130 = icmp slt i32 %129, 127
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %21, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %21, align 4
  br label %128

135:                                              ; preds = %128
  store i32 0, i32* %21, align 4
  br label %136

136:                                              ; preds = %154, %135
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* %19, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %136
  %141 = load float*, float** %25, align 8
  %142 = load i32, i32* %21, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  %145 = load float, float* %144, align 4
  %146 = fpext float %145 to double
  %147 = fcmp olt double %146, 1.000000e-04
  br i1 %147, label %148, label %153

148:                                              ; preds = %140
  %149 = load float*, float** %25, align 8
  %150 = load i32, i32* %21, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %149, i64 %151
  store float 0.000000e+00, float* %152, align 4
  br label %153

153:                                              ; preds = %148, %140
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %21, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %21, align 4
  br label %136

157:                                              ; preds = %136
  %158 = load float*, float** %25, align 8
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @sample_array(float* %158, i32 %159)
  store i32 %160, i32* %22, align 4
  %161 = load i32, i32* %22, align 4
  %162 = load i8**, i8*** %15, align 8
  %163 = call i32 @print_symbol(i32 %161, i8** %162)
  br label %164

164:                                              ; preds = %157
  %165 = load i32, i32* %20, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %20, align 4
  br label %112

167:                                              ; preds = %112
  %168 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i8** @read_tokens(i8*, i64*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local float* @calloc(i32, i32) #1

declare dso_local float* @network_predict(%struct.TYPE_6__*, float*) #1

declare dso_local i32 @print_symbol(i32, i8**) #1

declare dso_local i32 @sample_array(float*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
