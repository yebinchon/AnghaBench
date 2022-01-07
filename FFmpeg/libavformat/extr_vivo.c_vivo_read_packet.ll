; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vivo.c_vivo_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vivo.c_vivo_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown packet type %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @vivo_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivo_read_packet(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %45, %2
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @avio_feof(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %29, i32* %3, align 4
  br label %122

30:                                               ; preds = %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %48 [
    i32 0, label %34
    i32 1, label %46
    i32 2, label %46
    i32 3, label %47
    i32 4, label %47
  ]

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @avio_skip(i32* %35, i32 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = call i32 @vivo_get_packet_header(%struct.TYPE_13__* %40)
  store i32 %41, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %3, align 4
  br label %122

45:                                               ; preds = %34
  br label %24

46:                                               ; preds = %30, %30
  store i32 0, i32* %10, align 4
  br label %56

47:                                               ; preds = %30, %30
  store i32 1, i32* %10, align 4
  br label %56

48:                                               ; preds = %30
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @av_log(%struct.TYPE_13__* %49, i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %3, align 4
  br label %122

56:                                               ; preds = %47, %46
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @av_get_packet(i32* %57, %struct.TYPE_12__* %58, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %114

65:                                               ; preds = %56
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = call i32 @vivo_get_packet_header(%struct.TYPE_13__* %66)
  store i32 %67, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %114

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %109, %70
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub i32 %80, 1
  %82 = lshr i32 %81, 1
  %83 = load i32, i32* %9, align 4
  %84 = sub i32 %83, 1
  %85 = lshr i32 %84, 1
  %86 = icmp eq i32 %82, %85
  br label %87

87:                                               ; preds = %77, %71
  %88 = phi i1 [ false, %71 ], [ %86, %77 ]
  br i1 %88, label %89, label %110

89:                                               ; preds = %87
  %90 = load i32*, i32** %7, align 8
  %91 = call i64 @avio_feof(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %94, i32* %11, align 4
  br label %110

95:                                               ; preds = %89
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @av_append_packet(i32* %96, %struct.TYPE_12__* %97, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %110

104:                                              ; preds = %95
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = call i32 @vivo_get_packet_header(%struct.TYPE_13__* %105)
  store i32 %106, i32* %11, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %110

109:                                              ; preds = %104
  br label %71

110:                                              ; preds = %108, %103, %93, %87
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %69, %64
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = call i32 @av_packet_unref(%struct.TYPE_12__* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %48, %43, %28
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @vivo_get_packet_header(%struct.TYPE_13__*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_append_packet(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
