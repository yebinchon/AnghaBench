; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_regressor.c_run_regressor.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_regressor.c_run_regressor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"usage: %s %s [train/test/valid] [cfg] [weights (optional)]\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-gpus\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@gpu_index = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-clear\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"demo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_regressor(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %26)
  br label %151

28:                                               ; preds = %2
  %29 = load i32, i32* %3, align 4
  %30 = load i8**, i8*** %4, align 8
  %31 = call i8* @find_char_arg(i32 %29, i8** %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %31, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %79

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strlen(i8* %37)
  store i32 %38, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %55, %34
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 44
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %39

58:                                               ; preds = %39
  %59 = load i32, i32* %8, align 4
  %60 = call i32* @calloc(i32 %59, i32 4)
  store i32* %60, i32** %6, align 8
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %75, %58
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @atoi(i8* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 44)
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8* %74, i8** %5, align 8
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %61

78:                                               ; preds = %61
  br label %81

79:                                               ; preds = %28
  %80 = load i32, i32* @gpu_index, align 4
  store i32 %80, i32* %7, align 4
  store i32* %7, i32** %6, align 8
  store i32 1, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = load i32, i32* %3, align 4
  %83 = load i8**, i8*** %4, align 8
  %84 = call i32 @find_int_arg(i32 %82, i8** %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i8**, i8*** %4, align 8
  %87 = call i32 @find_arg(i32 %85, i8** %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %87, i32* %12, align 4
  %88 = load i8**, i8*** %4, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 3
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %13, align 8
  %91 = load i8**, i8*** %4, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 4
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %14, align 8
  %94 = load i32, i32* %3, align 4
  %95 = icmp sgt i32 %94, 5
  br i1 %95, label %96, label %100

96:                                               ; preds = %81
  %97 = load i8**, i8*** %4, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 5
  %99 = load i8*, i8** %98, align 8
  br label %101

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i8* [ %99, %96 ], [ null, %100 ]
  store i8* %102, i8** %15, align 8
  %103 = load i32, i32* %3, align 4
  %104 = icmp sgt i32 %103, 6
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i8**, i8*** %4, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 6
  %108 = load i8*, i8** %107, align 8
  br label %110

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %105
  %111 = phi i8* [ %108, %105 ], [ null, %109 ]
  store i8* %111, i8** %16, align 8
  %112 = load i8**, i8*** %4, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 2
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %116 = icmp eq i64 0, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load i8*, i8** %13, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @predict_regressor(i8* %118, i8* %119, i8* %120)
  br label %151

122:                                              ; preds = %110
  %123 = load i8**, i8*** %4, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 2
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %127 = icmp eq i64 0, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load i8*, i8** %13, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @train_regressor(i8* %129, i8* %130, i8* %131, i32* %132, i32 %133, i32 %134)
  br label %150

136:                                              ; preds = %122
  %137 = load i8**, i8*** %4, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @strcmp(i8* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %141 = icmp eq i64 0, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = load i8*, i8** %13, align 8
  %144 = load i8*, i8** %14, align 8
  %145 = load i8*, i8** %15, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i8*, i8** %16, align 8
  %148 = call i32 @demo_regressor(i8* %143, i8* %144, i8* %145, i32 %146, i8* %147)
  br label %149

149:                                              ; preds = %142, %136
  br label %150

150:                                              ; preds = %149, %128
  br label %151

151:                                              ; preds = %19, %150, %117
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @find_char_arg(i32, i8**, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @find_int_arg(i32, i8**, i8*, i32) #1

declare dso_local i32 @find_arg(i32, i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @predict_regressor(i8*, i8*, i8*) #1

declare dso_local i32 @train_regressor(i8*, i8*, i8*, i32*, i32, i32) #1

declare dso_local i32 @demo_regressor(i8*, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
