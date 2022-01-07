; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ifv.c_read_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ifv.c_read_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i64)* @read_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_index(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32*, i32** %28, i64 %31
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  br label %46

34:                                               ; preds = %3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %13, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32**, i32*** %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32*, i32** %40, i64 %43
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %9, align 8
  br label %46

46:                                               ; preds = %34, %22
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %14, align 8
  br label %48

48:                                               ; preds = %96, %46
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %99

52:                                               ; preds = %48
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @avio_feof(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %59, i32* %4, align 4
  br label %100

60:                                               ; preds = %52
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @avio_rl32(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @avio_rl32(i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @avio_skip(i32 %71, i32 8)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @avio_rl32(i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @av_add_index_entry(i32* %77, i32 %78, i32 %79, i32 %80, i32 0, i32 0)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %60
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %4, align 4
  br label %100

86:                                               ; preds = %60
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 8, i32 4
  %95 = call i32 @avio_skip(i32 %89, i32 %94)
  br label %96

96:                                               ; preds = %86
  %97 = load i64, i64* %14, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %14, align 8
  br label %48

99:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %84, %58
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @avio_feof(i32) #1

declare dso_local i32 @avio_rl32(i32) #1

declare dso_local i32 @avio_skip(i32, i32) #1

declare dso_local i32 @av_add_index_entry(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
