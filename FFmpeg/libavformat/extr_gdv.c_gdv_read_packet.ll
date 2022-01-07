; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gdv.c_gdv_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gdv.c_gdv_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*)* @gdv_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdv_read_packet(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %17 = call i64 @avio_feof(%struct.TYPE_15__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @AVERROR_EOF, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %27, %24 ], [ %29, %28 ]
  store i32 %31, i32* %3, align 4
  br label %112

32:                                               ; preds = %2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @av_get_packet(%struct.TYPE_15__* %43, %struct.TYPE_14__* %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %112

53:                                               ; preds = %42
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  br label %111

58:                                               ; preds = %37, %32
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = call i32 @avio_rl16(%struct.TYPE_15__* %59)
  %61 = icmp ne i32 %60, 4869
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %63, i32* %3, align 4
  br label %112

64:                                               ; preds = %58
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = call i32 @avio_rl16(%struct.TYPE_15__* %67)
  %69 = add nsw i32 4, %68
  %70 = call i32 @av_get_packet(%struct.TYPE_15__* %65, %struct.TYPE_14__* %66, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %112

75:                                               ; preds = %64
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %75
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %87 = load i32, i32* @AVPALETTE_SIZE, align 4
  %88 = call i32* @av_packet_new_side_data(%struct.TYPE_14__* %85, i32 %86, i32 %87)
  store i32* %88, i32** %9, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %84
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = call i32 @av_packet_unref(%struct.TYPE_14__* %92)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = call i32 @AVERROR(i32 %94)
  store i32 %95, i32* %3, align 4
  br label %112

96:                                               ; preds = %84
  %97 = load i32*, i32** %9, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @AVPALETTE_SIZE, align 4
  %102 = call i32 @memcpy(i32* %97, i32 %100, i32 %101)
  %103 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %96, %75
  br label %111

111:                                              ; preds = %110, %53
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %91, %73, %62, %51, %30
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @avio_feof(%struct.TYPE_15__*) #1

declare dso_local i32 @av_get_packet(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @avio_rl16(%struct.TYPE_15__*) #1

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_14__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
