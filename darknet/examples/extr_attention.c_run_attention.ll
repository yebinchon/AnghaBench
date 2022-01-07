; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_attention.c_run_attention.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_attention.c_run_attention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"usage: %s %s [train/test/valid] [cfg] [weights (optional)]\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-gpus\00", align 1
@gpu_index = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-clear\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"predict\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"validmulti\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_attention(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
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
  br label %123

26:                                               ; preds = %2
  %27 = load i32, i32* %3, align 4
  %28 = load i8**, i8*** %4, align 8
  %29 = call i8* @find_char_arg(i32 %27, i8** %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @gpu_index, align 4
  %32 = call i32* @read_intlist(i8* %30, i32* %6, i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i8**, i8*** %4, align 8
  %35 = call i32 @find_int_arg(i32 %33, i8** %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i8**, i8*** %4, align 8
  %38 = call i32 @find_arg(i32 %36, i8** %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %38, i32* %9, align 4
  %39 = load i8**, i8*** %4, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 3
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %10, align 8
  %42 = load i8**, i8*** %4, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 4
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %11, align 8
  %45 = load i32, i32* %3, align 4
  %46 = icmp sgt i32 %45, 5
  br i1 %46, label %47, label %51

47:                                               ; preds = %26
  %48 = load i8**, i8*** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 5
  %50 = load i8*, i8** %49, align 8
  br label %52

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i8* [ %50, %47 ], [ null, %51 ]
  store i8* %53, i8** %12, align 8
  %54 = load i32, i32* %3, align 4
  %55 = icmp sgt i32 %54, 6
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8**, i8*** %4, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 6
  %59 = load i8*, i8** %58, align 8
  br label %61

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i8* [ %59, %56 ], [ null, %60 ]
  store i8* %62, i8** %13, align 8
  %63 = load i32, i32* %3, align 4
  %64 = icmp sgt i32 %63, 7
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8**, i8*** %4, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 7
  %68 = load i8*, i8** %67, align 8
  br label %70

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i8* [ %68, %65 ], [ null, %69 ]
  store i8* %71, i8** %14, align 8
  %72 = load i8**, i8*** %4, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp eq i64 0, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @predict_attention(i8* %78, i8* %79, i8* %80, i8* %81, i32 %82)
  br label %123

84:                                               ; preds = %70
  %85 = load i8**, i8*** %4, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %89 = icmp eq i64 0, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @train_attention(i8* %91, i8* %92, i8* %93, i32* %94, i32 %95, i32 %96)
  br label %122

98:                                               ; preds = %84
  %99 = load i8**, i8*** %4, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %103 = icmp eq i64 0, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @validate_attention_single(i8* %105, i8* %106, i8* %107)
  br label %121

109:                                              ; preds = %98
  %110 = load i8**, i8*** %4, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 2
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %114 = icmp eq i64 0, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i8*, i8** %10, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @validate_attention_multi(i8* %116, i8* %117, i8* %118)
  br label %120

120:                                              ; preds = %115, %109
  br label %121

121:                                              ; preds = %120, %104
  br label %122

122:                                              ; preds = %121, %90
  br label %123

123:                                              ; preds = %17, %122, %77
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @find_char_arg(i32, i8**, i8*, i32) #1

declare dso_local i32* @read_intlist(i8*, i32*, i32) #1

declare dso_local i32 @find_int_arg(i32, i8**, i8*, i32) #1

declare dso_local i32 @find_arg(i32, i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @predict_attention(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @train_attention(i8*, i8*, i8*, i32*, i32, i32) #1

declare dso_local i32 @validate_attention_single(i8*, i8*, i8*) #1

declare dso_local i32 @validate_attention_multi(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
