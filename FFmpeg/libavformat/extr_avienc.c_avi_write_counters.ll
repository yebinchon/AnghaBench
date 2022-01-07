; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_write_counters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_write_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_11__**, %struct.TYPE_8__*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @avi_write_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_write_counters(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %11, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @avio_tell(i32* %21)
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %95, %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %98

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %32, i64 %34
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %14, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @av_assert0(i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %45, i64 %47
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %13, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SEEK_SET, align 4
  %57 = call i32 @avio_seek(i32* %52, i32 %55, i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %60, i64 %62
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = call i32 @ff_parse_specific_params(%struct.TYPE_11__* %64, i32* %8, i32* %9, i32* %10)
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %29
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @avio_wl32(i32* %69, i32 %72)
  br label %82

74:                                               ; preds = %29
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sdiv i32 %78, %79
  %81 = call i32 @avio_wl32(i32* %75, i32 %80)
  br label %82

82:                                               ; preds = %74, %68
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @FFMAX(i32 %89, i32 %92)
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %88, %82
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %23

98:                                               ; preds = %23
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %115

101:                                              ; preds = %98
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @av_assert0(i32 %104)
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SEEK_SET, align 4
  %111 = call i32 @avio_seek(i32* %106, i32 %109, i32 %110)
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @avio_wl32(i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %101, %98
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @SEEK_SET, align 4
  %119 = call i32 @avio_seek(i32* %116, i32 %117, i32 %118)
  ret i32 0
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @ff_parse_specific_params(%struct.TYPE_11__*, i32*, i32*, i32*) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
