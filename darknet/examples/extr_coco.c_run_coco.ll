; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_coco.c_run_coco.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_coco.c_run_coco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"-prefix\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"-thresh\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"usage: %s %s [train/test/valid] [cfg] [weights (optional)]\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"-avg\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"recall\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"demo\00", align 1
@coco_classes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_coco(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i8**, i8*** %4, align 8
  %15 = call i8* @find_char_arg(i32 %13, i8** %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8* %15, i8** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = call float @find_float_arg(i32 %16, i8** %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), double 2.000000e-01)
  store float %18, float* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = call i32 @find_int_arg(i32 %19, i8** %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i8**, i8*** %4, align 8
  %24 = call i32 @find_int_arg(i32 %22, i8** %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8**, i8*** %4, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** %4, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* %31, i8* %34)
  br label %123

36:                                               ; preds = %2
  %37 = load i8**, i8*** %4, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 3
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %9, align 8
  %40 = load i32, i32* %3, align 4
  %41 = icmp sgt i32 %40, 4
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 4
  %45 = load i8*, i8** %44, align 8
  br label %47

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i8* [ %45, %42 ], [ null, %46 ]
  store i8* %48, i8** %10, align 8
  %49 = load i32, i32* %3, align 4
  %50 = icmp sgt i32 %49, 5
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8**, i8*** %4, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 5
  %54 = load i8*, i8** %53, align 8
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i8* [ %54, %51 ], [ null, %55 ]
  store i8* %57, i8** %11, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i8**, i8*** %4, align 8
  %60 = call i32 @find_int_arg(i32 %58, i8** %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %60, i32* %12, align 4
  %61 = load i8**, i8*** %4, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %65 = icmp eq i64 0, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load float, float* %6, align 4
  %71 = call i32 @test_coco(i8* %67, i8* %68, i8* %69, float %70)
  br label %123

72:                                               ; preds = %56
  %73 = load i8**, i8*** %4, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %77 = icmp eq i64 0, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @train_coco(i8* %79, i8* %80)
  br label %122

82:                                               ; preds = %72
  %83 = load i8**, i8*** %4, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %87 = icmp eq i64 0, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i8*, i8** %9, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @validate_coco(i8* %89, i8* %90)
  br label %121

92:                                               ; preds = %82
  %93 = load i8**, i8*** %4, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %97 = icmp eq i64 0, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i8*, i8** %9, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @validate_coco_recall(i8* %99, i8* %100)
  br label %120

102:                                              ; preds = %92
  %103 = load i8**, i8*** %4, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %107 = icmp eq i64 0, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load i8*, i8** %9, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load float, float* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i8*, i8** %11, align 8
  %114 = load i32, i32* @coco_classes, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @demo(i8* %109, i8* %110, float %111, i32 %112, i8* %113, i32 %114, i32 80, i32 %115, i8* %116, i32 %117, double 5.000000e-01, i32 0, i32 0, i32 0, i32 0)
  br label %119

119:                                              ; preds = %108, %102
  br label %120

120:                                              ; preds = %119, %98
  br label %121

121:                                              ; preds = %120, %88
  br label %122

122:                                              ; preds = %121, %78
  br label %123

123:                                              ; preds = %27, %122, %66
  ret void
}

declare dso_local i8* @find_char_arg(i32, i8**, i8*, i32) #1

declare dso_local float @find_float_arg(i32, i8**, i8*, double) #1

declare dso_local i32 @find_int_arg(i32, i8**, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @test_coco(i8*, i8*, i8*, float) #1

declare dso_local i32 @train_coco(i8*, i8*) #1

declare dso_local i32 @validate_coco(i8*, i8*) #1

declare dso_local i32 @validate_coco_recall(i8*, i8*) #1

declare dso_local i32 @demo(i8*, i8*, float, i32, i8*, i32, i32, i32, i8*, i32, double, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
