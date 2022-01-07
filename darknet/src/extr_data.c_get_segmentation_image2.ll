; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_get_segmentation_image2.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_get_segmentation_image2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"JPEGImages\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".JPG\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".JPEG\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_segmentation_image2(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [32788 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %20 = call i32 @find_replace(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %23 = call i32 @find_replace(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %26 = call i32 @find_replace(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %29 = call i32 @find_replace(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %28)
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %32 = call i32 @find_replace(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32* @make_image(i32 %33, i32 %34, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32* %37, i32** %38, align 8
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %57, %4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %41, %42
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %47, i64 %55
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %39

60:                                               ; preds = %39
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %62 = call i32* @fopen(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %62, i32** %12, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %67 = call i32 @file_error(i8* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32* @make_image(i32 %69, i32 %70, i32 1)
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32* %71, i32** %72, align 8
  br label %73

73:                                               ; preds = %122, %68
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds [32788 x i8], [32788 x i8]* %13, i64 0, i64 0
  %76 = call i32 @fscanf(i32* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* %14, i8* %75)
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %125

78:                                               ; preds = %73
  store i32 0, i32* %16, align 4
  %79 = getelementptr inbounds [32788 x i8], [32788 x i8]* %13, i64 0, i64 0
  %80 = call i32* @read_intlist(i8* %79, i32* %16, i32 0)
  store i32* %80, i32** %17, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = load i32, i32* %16, align 4
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @load_rle(i32* %84, i32* %81, i32 %82)
  %86 = load i32, i32* %14, align 4
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @or_image(i32* %88, i32* %90, i32 %86)
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %119, %78
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 %94, %95
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* %9, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %108, i64 %116
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %106, %98
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %92

122:                                              ; preds = %92
  %123 = load i32*, i32** %17, align 8
  %124 = call i32 @free(i32* %123)
  br label %73

125:                                              ; preds = %73
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @fclose(i32* %126)
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @free_image(i32* %129)
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  ret i32* %132
}

declare dso_local i32 @find_replace(i8*, i8*, i8*, i8*) #1

declare dso_local i32* @make_image(i32, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @file_error(i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*, i8*) #1

declare dso_local i32* @read_intlist(i8*, i32*, i32) #1

declare dso_local i32 @load_rle(i32*, i32*, i32) #1

declare dso_local i32 @or_image(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free_image(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
