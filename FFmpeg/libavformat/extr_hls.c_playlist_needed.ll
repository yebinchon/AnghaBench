; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_playlist_needed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_playlist_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { i32, %struct.TYPE_4__**, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64, i32, i32* }

@AVDISCARD_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.playlist*)* @playlist_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playlist_needed(%struct.playlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.playlist*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.playlist* %0, %struct.playlist** %3, align 8
  %10 = load %struct.playlist*, %struct.playlist** %3, align 8
  %11 = getelementptr inbounds %struct.playlist, %struct.playlist* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.playlist*, %struct.playlist** %3, align 8
  %14 = getelementptr inbounds %struct.playlist, %struct.playlist* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.playlist*, %struct.playlist** %3, align 8
  %19 = getelementptr inbounds %struct.playlist, %struct.playlist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %1
  store i32 1, i32* %2, align 4
  br label %106

23:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %44, %23
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.playlist*, %struct.playlist** %3, align 8
  %27 = getelementptr inbounds %struct.playlist, %struct.playlist* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.playlist*, %struct.playlist** %3, align 8
  %32 = getelementptr inbounds %struct.playlist, %struct.playlist* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AVDISCARD_ALL, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  br label %47

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %24

47:                                               ; preds = %42, %24
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %106

51:                                               ; preds = %47
  %52 = load %struct.playlist*, %struct.playlist** %3, align 8
  %53 = getelementptr inbounds %struct.playlist, %struct.playlist* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %102, %51
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %105

65:                                               ; preds = %59
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %68, i64 %70
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %9, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AVDISCARD_ALL, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %97, %78
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 1, i32* %2, align 4
  br label %106

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %79

100:                                              ; preds = %79
  br label %101

101:                                              ; preds = %100, %65
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %59

105:                                              ; preds = %59
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %95, %50, %22
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
