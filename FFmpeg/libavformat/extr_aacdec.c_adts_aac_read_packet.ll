; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aacdec.c_adts_aac_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aacdec.c_adts_aac_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }

@ADTS_HEADER_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ID3v2_HEADER_SIZE = common dso_local global i32 0, align 4
@ID3v2_DEFAULT_MAGIC = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @adts_aac_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adts_aac_read_packet(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  br label %9

9:                                                ; preds = %79, %2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = load i32, i32* @ADTS_HEADER_SIZE, align 4
  %15 = call i32 @av_get_packet(i32 %12, %struct.TYPE_11__* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %113

20:                                               ; preds = %9
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ADTS_HEADER_SIZE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = call i32 @av_packet_unref(%struct.TYPE_11__* %25)
  %27 = load i32, i32* @EIO, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %113

29:                                               ; preds = %20
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @AV_RB16(i64 %32)
  %34 = ashr i32 %33, 4
  %35 = icmp ne i32 %34, 4095
  br i1 %35, label %36, label %80

36:                                               ; preds = %29
  %37 = load i32, i32* @ID3v2_HEADER_SIZE, align 4
  %38 = load i32, i32* @ADTS_HEADER_SIZE, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @av_assert2(i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @av_append_packet(i32 %46, %struct.TYPE_11__* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %36
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = call i32 @av_packet_unref(%struct.TYPE_11__* %54)
  %56 = load i32, i32* @EIO, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %113

58:                                               ; preds = %36
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @ID3v2_DEFAULT_MAGIC, align 4
  %63 = call i32 @ff_id3v2_match(i64 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = call i32 @av_packet_unref(%struct.TYPE_11__* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = call i32 @adts_aac_resync(%struct.TYPE_12__* %68)
  store i32 %69, i32* %6, align 4
  br label %74

70:                                               ; preds = %58
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = call i32 @handle_id3(%struct.TYPE_12__* %71, %struct.TYPE_11__* %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %113

79:                                               ; preds = %74
  br label %9

80:                                               ; preds = %29
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 3
  %85 = call i32 @AV_RB32(i64 %84)
  %86 = ashr i32 %85, 13
  %87 = and i32 %86, 8191
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @ADTS_HEADER_SIZE, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %80
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = call i32 @av_packet_unref(%struct.TYPE_11__* %92)
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %3, align 4
  br label %113

95:                                               ; preds = %80
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %100, %103
  %105 = call i32 @av_append_packet(i32 %98, %struct.TYPE_11__* %99, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %95
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = call i32 @av_packet_unref(%struct.TYPE_11__* %109)
  br label %111

111:                                              ; preds = %108, %95
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %91, %77, %53, %24, %18
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @av_get_packet(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_11__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_RB16(i64) #1

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @av_append_packet(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ff_id3v2_match(i64, i32) #1

declare dso_local i32 @adts_aac_resync(%struct.TYPE_12__*) #1

declare dso_local i32 @handle_id3(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @AV_RB32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
