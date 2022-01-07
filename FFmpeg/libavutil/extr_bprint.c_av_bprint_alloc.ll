; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_bprint.c_av_bprint_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_bprint.c_av_bprint_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i8* }

@EIO = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @av_bprint_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av_bprint_alloc(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = call i32 @AVERROR(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %107

20:                                               ; preds = %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = call i32 @av_bprint_is_complete(%struct.TYPE_5__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %25, i32* %3, align 4
  br label %107

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* @UINT_MAX, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @FFMIN(i32 %36, i32 %37)
  %39 = add nsw i32 %30, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 2
  %47 = icmp sgt i32 %42, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  br label %57

52:                                               ; preds = %26
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %55, 2
  br label %57

57:                                               ; preds = %52, %48
  %58 = phi i32 [ %51, %48 ], [ %56, %52 ]
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @FFMIN(i32 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = call i64 @av_bprint_is_allocated(%struct.TYPE_5__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  br label %77

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i8* [ %75, %72 ], [ null, %76 ]
  store i8* %78, i8** %6, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i8* @av_realloc(i8* %79, i32 %80)
  store i8* %81, i8** %7, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = call i32 @AVERROR(i32 %85)
  store i32 %86, i32* %3, align 4
  br label %107

87:                                               ; preds = %77
  %88 = load i8*, i8** %6, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = load i8*, i8** %7, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  %99 = call i32 @memcpy(i8* %91, i8* %94, i32 %98)
  br label %100

100:                                              ; preds = %90, %87
  %101 = load i8*, i8** %7, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %100, %84, %24, %17
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_bprint_is_complete(%struct.TYPE_5__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @av_bprint_is_allocated(%struct.TYPE_5__*) #1

declare dso_local i8* @av_realloc(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
