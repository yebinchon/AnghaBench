; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vivo.c_vivo_get_packet_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vivo.c_vivo_get_packet_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown packet type %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"coded length is more than two bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @vivo_get_packet_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivo_get_packet_header(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @avio_feof(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %18, i32* %2, align 4
  br label %94

19:                                               ; preds = %1
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @avio_r8(i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 130
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @avio_r8(i32* %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %6, align 4
  %29 = lshr i32 %28, 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 15
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %50 [
    i32 0, label %39
    i32 1, label %40
    i32 2, label %43
    i32 3, label %44
    i32 4, label %47
  ]

39:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  br label %58

40:                                               ; preds = %27
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32 128, i32* %42, align 4
  br label %58

43:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  br label %58

44:                                               ; preds = %27
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i32 40, i32* %46, align 4
  br label %58

47:                                               ; preds = %27
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 24, i32* %49, align 4
  br label %58

50:                                               ; preds = %27
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %51, i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %2, align 4
  br label %94

58:                                               ; preds = %47, %44, %43, %40, %39
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %58
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @avio_r8(i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 127
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %61
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @avio_r8(i32* %72)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 7
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 127
  %80 = or i32 %77, %79
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 128
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %71
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %87, i32 %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %90, i32* %2, align 4
  br label %94

91:                                               ; preds = %71
  br label %92

92:                                               ; preds = %91, %61
  br label %93

93:                                               ; preds = %92, %58
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %86, %50, %17
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
