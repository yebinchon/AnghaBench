; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_yolo.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_yolo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, float*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"jitter\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ignore_thresh\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"truth_thresh\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"anchors\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_yolo(%struct.TYPE_7__* noalias sret %0, i32* %1, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @option_find_int(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 20)
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @option_find_int(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i8* @option_find_str(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32* @parse_yolo_mask(i8* %22, i32* %7)
  store i32* %23, i32** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %5, align 4
  call void @make_yolo_layer(%struct.TYPE_7__* sret %0, i32 %25, i32 %27, i32 %29, i32 %30, i32 %31, i32* %32, i32 %33)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @option_find_int_quiet(i32* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 90)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 7
  store i8* %42, i8** %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @option_find_float(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 6
  store i8* %45, i8** %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i8* @option_find_float(i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 5
  store i8* %48, i8** %49, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i8* @option_find_float(i32* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  store i8* %51, i8** %52, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i8* @option_find_int_quiet(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  store i8* %54, i8** %55, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i8* @option_find_str(i32* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 0)
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %3
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @read_map(i8* %61)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %3
  %65 = load i32*, i32** %4, align 8
  %66 = call i8* @option_find_str(i32* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 0)
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %112

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @strlen(i8* %70)
  store i32 %71, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %88, %69
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 44
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %84, %76
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %72

91:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %108, %91
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load i8*, i8** %8, align 8
  %98 = call float @atof(i8* %97)
  store float %98, float* %14, align 4
  %99 = load float, float* %14, align 4
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %101 = load float*, float** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %101, i64 %103
  store float %99, float* %104, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = call i8* @strchr(i8* %105, i8 signext 44)
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  store i8* %107, i8** %8, align 8
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %92

111:                                              ; preds = %92
  br label %112

112:                                              ; preds = %111, %64
  ret void
}

declare dso_local i32 @option_find_int(i32*, i8*, i32) #1

declare dso_local i8* @option_find_str(i32*, i8*, i32) #1

declare dso_local i32* @parse_yolo_mask(i8*, i32*) #1

declare dso_local void @make_yolo_layer(%struct.TYPE_7__* sret, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @option_find_int_quiet(i32*, i8*, i32) #1

declare dso_local i8* @option_find_float(i32*, i8*, i32) #1

declare dso_local i32 @read_map(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local float @atof(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
