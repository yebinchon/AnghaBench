; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_add_metadata_from_renditions.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_add_metadata_from_renditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { i32, i32, %struct.rendition**, %struct.TYPE_4__** }
%struct.rendition = type { i32, i32, i64*, i64* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.playlist*, i32)* @add_metadata_from_renditions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_metadata_from_renditions(i32* %0, %struct.playlist* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.playlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.rendition*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.playlist* %1, %struct.playlist** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %101, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.playlist*, %struct.playlist** %5, align 8
  %14 = getelementptr inbounds %struct.playlist, %struct.playlist* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %104

17:                                               ; preds = %11
  %18 = load %struct.playlist*, %struct.playlist** %5, align 8
  %19 = getelementptr inbounds %struct.playlist, %struct.playlist* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %9, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %101

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %90, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.playlist*, %struct.playlist** %5, align 8
  %37 = getelementptr inbounds %struct.playlist, %struct.playlist* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %93

40:                                               ; preds = %34
  %41 = load %struct.playlist*, %struct.playlist** %5, align 8
  %42 = getelementptr inbounds %struct.playlist, %struct.playlist* %41, i32 0, i32 2
  %43 = load %struct.rendition**, %struct.rendition*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.rendition*, %struct.rendition** %43, i64 %45
  %47 = load %struct.rendition*, %struct.rendition** %46, align 8
  store %struct.rendition* %47, %struct.rendition** %10, align 8
  %48 = load %struct.rendition*, %struct.rendition** %10, align 8
  %49 = getelementptr inbounds %struct.rendition, %struct.rendition* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %90

54:                                               ; preds = %40
  %55 = load %struct.rendition*, %struct.rendition** %10, align 8
  %56 = getelementptr inbounds %struct.rendition, %struct.rendition* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.rendition*, %struct.rendition** %10, align 8
  %65 = getelementptr inbounds %struct.rendition, %struct.rendition* %64, i32 0, i32 3
  %66 = load i64*, i64** %65, align 8
  %67 = call i32 @av_dict_set(i32* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64* %66, i32 0)
  br label %68

68:                                               ; preds = %61, %54
  %69 = load %struct.rendition*, %struct.rendition** %10, align 8
  %70 = getelementptr inbounds %struct.rendition, %struct.rendition* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load %struct.rendition*, %struct.rendition** %10, align 8
  %79 = getelementptr inbounds %struct.rendition, %struct.rendition* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = call i32 @av_dict_set(i32* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64* %80, i32 0)
  br label %82

82:                                               ; preds = %75, %68
  %83 = load %struct.rendition*, %struct.rendition** %10, align 8
  %84 = getelementptr inbounds %struct.rendition, %struct.rendition* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %82, %53
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %34

93:                                               ; preds = %34
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.playlist*, %struct.playlist** %5, align 8
  %96 = getelementptr inbounds %struct.playlist, %struct.playlist* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp sge i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %104

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %32
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %11

104:                                              ; preds = %99, %11
  ret void
}

declare dso_local i32 @av_dict_set(i32*, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
