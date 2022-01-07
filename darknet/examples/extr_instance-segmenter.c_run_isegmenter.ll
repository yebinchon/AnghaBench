; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_instance-segmenter.c_run_isegmenter.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_instance-segmenter.c_run_isegmenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"usage: %s %s [train/test/valid] [cfg] [weights (optional)]\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-gpus\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@gpu_index = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-clear\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"-display\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"demo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_isegmenter(i32 %0, i8** %1) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %27)
  br label %157

29:                                               ; preds = %2
  %30 = load i32, i32* %3, align 4
  %31 = load i8**, i8*** %4, align 8
  %32 = call i8* @find_char_arg(i32 %30, i8** %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %32, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %80

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %56, %35
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 44
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load i32, i32* %8, align 4
  %61 = call i32* @calloc(i32 %60, i32 4)
  store i32* %61, i32** %6, align 8
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %76, %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @atoi(i8* %67)
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = call i8* @strchr(i8* %73, i8 signext 44)
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8* %75, i8** %5, align 8
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %62

79:                                               ; preds = %62
  br label %82

80:                                               ; preds = %29
  %81 = load i32, i32* @gpu_index, align 4
  store i32 %81, i32* %7, align 4
  store i32* %7, i32** %6, align 8
  store i32 1, i32* %8, align 4
  br label %82

82:                                               ; preds = %80, %79
  %83 = load i32, i32* %3, align 4
  %84 = load i8**, i8*** %4, align 8
  %85 = call i32 @find_int_arg(i32 %83, i8** %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i8**, i8*** %4, align 8
  %88 = call i32 @find_arg(i32 %86, i8** %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load i8**, i8*** %4, align 8
  %91 = call i32 @find_arg(i32 %89, i8** %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %91, i32* %13, align 4
  %92 = load i8**, i8*** %4, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 3
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %14, align 8
  %95 = load i8**, i8*** %4, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 4
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %15, align 8
  %98 = load i32, i32* %3, align 4
  %99 = icmp sgt i32 %98, 5
  br i1 %99, label %100, label %104

100:                                              ; preds = %82
  %101 = load i8**, i8*** %4, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 5
  %103 = load i8*, i8** %102, align 8
  br label %105

104:                                              ; preds = %82
  br label %105

105:                                              ; preds = %104, %100
  %106 = phi i8* [ %103, %100 ], [ null, %104 ]
  store i8* %106, i8** %16, align 8
  %107 = load i32, i32* %3, align 4
  %108 = icmp sgt i32 %107, 6
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i8**, i8*** %4, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 6
  %112 = load i8*, i8** %111, align 8
  br label %114

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %109
  %115 = phi i8* [ %112, %109 ], [ null, %113 ]
  store i8* %115, i8** %17, align 8
  %116 = load i8**, i8*** %4, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 2
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %120 = icmp eq i64 0, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load i8*, i8** %14, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = load i8*, i8** %16, align 8
  %125 = load i8*, i8** %17, align 8
  %126 = call i32 @predict_isegmenter(i8* %122, i8* %123, i8* %124, i8* %125)
  br label %157

127:                                              ; preds = %114
  %128 = load i8**, i8*** %4, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 2
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %132 = icmp eq i64 0, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %127
  %134 = load i8*, i8** %14, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @train_isegmenter(i8* %134, i8* %135, i8* %136, i32* %137, i32 %138, i32 %139, i32 %140)
  br label %156

142:                                              ; preds = %127
  %143 = load i8**, i8*** %4, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @strcmp(i8* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %147 = icmp eq i64 0, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = load i8*, i8** %14, align 8
  %150 = load i8*, i8** %15, align 8
  %151 = load i8*, i8** %16, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load i8*, i8** %17, align 8
  %154 = call i32 @demo_isegmenter(i8* %149, i8* %150, i8* %151, i32 %152, i8* %153)
  br label %155

155:                                              ; preds = %148, %142
  br label %156

156:                                              ; preds = %155, %133
  br label %157

157:                                              ; preds = %20, %156, %121
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

declare dso_local i32 @predict_isegmenter(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @train_isegmenter(i8*, i8*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @demo_isegmenter(i8*, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
