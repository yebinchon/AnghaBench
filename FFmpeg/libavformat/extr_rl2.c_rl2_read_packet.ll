; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rl2.c_rl2_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rl2.c_rl2_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_10__**, i32*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_12__ = type { i32, i32 }

@INT64_MAX = common dso_local global i64 0, align 8
@AVERROR_EOF = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__*)* @rl2_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rl2_read_packet(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %19 = load i64, i64* @INT64_MAX, align 8
  store i64 %19, i64* %12, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %89, %2
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %92

26:                                               ; preds = %20
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %36, i64 %38
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %33, %42
  br i1 %43, label %44, label %88

44:                                               ; preds = %26
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %47, i64 %49
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %44
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %69, i64 %71
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i64 %82
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %8, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %12, align 8
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %66, %44, %26
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %20

92:                                               ; preds = %20
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %96, i32* %3, align 4
  br label %138

97:                                               ; preds = %92
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @SEEK_SET, align 4
  %111 = call i32 @avio_seek(i32* %106, i64 %109, i32 %110)
  %112 = load i32*, i32** %7, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @av_get_packet(i32* %112, %struct.TYPE_12__* %113, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %97
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = call i32 @av_packet_unref(%struct.TYPE_12__* %124)
  %126 = load i32, i32* @EIO, align 4
  %127 = call i32 @AVERROR(i32 %126)
  store i32 %127, i32* %3, align 4
  br label %138

128:                                              ; preds = %97
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %128, %123, %95
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_12__*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
