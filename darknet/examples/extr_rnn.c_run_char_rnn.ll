; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_rnn.c_run_char_rnn.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_rnn.c_run_char_rnn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"usage: %s %s [train/test/valid] [cfg] [weights (optional)]\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-file\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"data/shakespeare.txt\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-seed\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"-len\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-temp\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"-srand\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"-clear\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"-tokenized\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"-tokens\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"validtactic\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"generate\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"generatetactic\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_char_rnn(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %24)
  br label %143

26:                                               ; preds = %2
  %27 = load i32, i32* %3, align 4
  %28 = load i8**, i8*** %4, align 8
  %29 = call i8* @find_char_arg(i32 %27, i8** %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i8* %29, i8** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i8**, i8*** %4, align 8
  %32 = call i8* @find_char_arg(i32 %30, i8** %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i8* %32, i8** %6, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i8**, i8*** %4, align 8
  %35 = call i32 @find_int_arg(i32 %33, i8** %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 1000)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i8**, i8*** %4, align 8
  %38 = call float @find_float_arg(i32 %36, i8** %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), double 0x3FE6666666666666)
  store float %38, float* %8, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i8**, i8*** %4, align 8
  %41 = call i32 @time(i32 0)
  %42 = call i32 @find_int_arg(i32 %39, i8** %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i8**, i8*** %4, align 8
  %45 = call i32 @find_arg(i32 %43, i8** %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i8**, i8*** %4, align 8
  %48 = call i32 @find_arg(i32 %46, i8** %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i8**, i8*** %4, align 8
  %51 = call i8* @find_char_arg(i32 %49, i8** %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* null)
  store i8* %51, i8** %12, align 8
  %52 = load i8**, i8*** %4, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 3
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %13, align 8
  %55 = load i32, i32* %3, align 4
  %56 = icmp sgt i32 %55, 4
  br i1 %56, label %57, label %61

57:                                               ; preds = %26
  %58 = load i8**, i8*** %4, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 4
  %60 = load i8*, i8** %59, align 8
  br label %62

61:                                               ; preds = %26
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i8* [ %60, %57 ], [ null, %61 ]
  store i8* %63, i8** %14, align 8
  %64 = load i8**, i8*** %4, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %68 = icmp eq i64 0, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load i8*, i8** %13, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @train_char_rnn(i8* %70, i8* %71, i8* %72, i32 %73, i32 %74)
  br label %143

76:                                               ; preds = %62
  %77 = load i8**, i8*** %4, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %81 = icmp eq i64 0, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i8*, i8** %13, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @valid_char_rnn(i8* %83, i8* %84, i8* %85)
  br label %142

87:                                               ; preds = %76
  %88 = load i8**, i8*** %4, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %92 = icmp eq i64 0, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i8*, i8** %13, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @valid_tactic_rnn(i8* %94, i8* %95, i8* %96)
  br label %141

98:                                               ; preds = %87
  %99 = load i8**, i8*** %4, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %103 = icmp eq i64 0, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i8*, i8** %13, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @vec_char_rnn(i8* %105, i8* %106, i8* %107)
  br label %140

109:                                              ; preds = %98
  %110 = load i8**, i8*** %4, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 2
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %114 = icmp eq i64 0, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %109
  %116 = load i8*, i8** %13, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i8*, i8** %6, align 8
  %120 = load float, float* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i8*, i8** %12, align 8
  %123 = call i32 @test_char_rnn(i8* %116, i8* %117, i32 %118, i8* %119, float %120, i32 %121, i8* %122)
  br label %139

124:                                              ; preds = %109
  %125 = load i8**, i8*** %4, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @strcmp(i8* %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %129 = icmp eq i64 0, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %124
  %131 = load i8*, i8** %13, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load float, float* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i8*, i8** %12, align 8
  %137 = call i32 @test_tactic_rnn(i8* %131, i8* %132, i32 %133, float %134, i32 %135, i8* %136)
  br label %138

138:                                              ; preds = %130, %124
  br label %139

139:                                              ; preds = %138, %115
  br label %140

140:                                              ; preds = %139, %104
  br label %141

141:                                              ; preds = %140, %93
  br label %142

142:                                              ; preds = %141, %82
  br label %143

143:                                              ; preds = %17, %142, %69
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @find_char_arg(i32, i8**, i8*, i8*) #1

declare dso_local i32 @find_int_arg(i32, i8**, i8*, i32) #1

declare dso_local float @find_float_arg(i32, i8**, i8*, double) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @find_arg(i32, i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @train_char_rnn(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @valid_char_rnn(i8*, i8*, i8*) #1

declare dso_local i32 @valid_tactic_rnn(i8*, i8*, i8*) #1

declare dso_local i32 @vec_char_rnn(i8*, i8*, i8*) #1

declare dso_local i32 @test_char_rnn(i8*, i8*, i32, i8*, float, i32, i8*) #1

declare dso_local i32 @test_tactic_rnn(i8*, i8*, i32, float, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
