; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tak.c_ff_tak_decode_frame_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tak.c_ff_tak_decode_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }

@TAK_FRAME_HEADER_SYNC_ID_BITS = common dso_local global i32 0, align 4
@TAK_FRAME_HEADER_SYNC_ID = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"missing sync id\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@TAK_FRAME_HEADER_FLAGS_BITS = common dso_local global i32 0, align 4
@TAK_FRAME_HEADER_NO_BITS = common dso_local global i32 0, align 4
@TAK_FRAME_FLAG_IS_LAST = common dso_local global i32 0, align 4
@TAK_FRAME_HEADER_SAMPLE_COUNT_BITS = common dso_local global i32 0, align 4
@TAK_FRAME_FLAG_HAS_INFO = common dso_local global i32 0, align 4
@TAK_FRAME_FLAG_HAS_METADATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_tak_decode_frame_header(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* @TAK_FRAME_HEADER_SYNC_ID_BITS, align 4
  %12 = call i64 @get_bits(i32* %10, i32 %11)
  %13 = load i64, i64* @TAK_FRAME_HEADER_SYNC_ID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* @AV_LOG_ERROR, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i32 @av_log(i32* %16, i64 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %22, i32* %5, align 4
  br label %85

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @TAK_FRAME_HEADER_FLAGS_BITS, align 4
  %26 = call i64 @get_bits(i32* %24, i32 %25)
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @TAK_FRAME_HEADER_NO_BITS, align 4
  %32 = call i64 @get_bits(i32* %30, i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TAK_FRAME_FLAG_IS_LAST, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %23
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @TAK_FRAME_HEADER_SAMPLE_COUNT_BITS, align 4
  %44 = call i64 @get_bits(i32* %42, i32 %43)
  %45 = add nsw i64 %44, 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @skip_bits(i32* %48, i32 2)
  br label %53

50:                                               ; preds = %23
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %41
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TAK_FRAME_FLAG_HAS_INFO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @ff_tak_parse_streaminfo(%struct.TYPE_4__* %61, i32* %62)
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @get_bits(i32* %64, i32 6)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @skip_bits(i32* %68, i32 25)
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @align_get_bits(i32* %71)
  br label %73

73:                                               ; preds = %70, %53
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TAK_FRAME_FLAG_HAS_METADATA, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %81, i32* %5, align 4
  br label %85

82:                                               ; preds = %73
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @skip_bits(i32* %83, i32 24)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %80, %15
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i64, i8*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @ff_tak_parse_streaminfo(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @align_get_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
