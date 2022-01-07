; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_s337m.c_s337m_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_s337m.c_s337m_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @s337m_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s337m_read_packet(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %34, %2
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @IS_LE_MARKER(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @avio_r8(i32* %26)
  %28 = or i32 %25, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @avio_feof(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %33, i32* %3, align 4
  br label %140

34:                                               ; preds = %23
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @IS_16LE_MARKER(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @avio_rl16(i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @avio_rl16(i32* %42)
  store i32 %43, i32* %10, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @avio_rl24(i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @avio_rl24(i32* %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @avio_tell(i32* %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @s337m_get_offset_and_codec(%struct.TYPE_15__* %52, i32 %53, i32 %54, i32 %55, i32* %11, i32* %12)
  store i32 %56, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %140

60:                                               ; preds = %49
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @av_new_packet(%struct.TYPE_14__* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %140

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @avio_read(i32* %71, i64 %74, i32 %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %67
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = call i32 @av_packet_unref(%struct.TYPE_14__* %84)
  %86 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %86, i32* %3, align 4
  br label %140

87:                                               ; preds = %67
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @IS_16LE_MARKER(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i32*
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = ashr i32 %102, 1
  %104 = call i32 @ff_spdif_bswap_buf16(i32* %95, i32* %99, i32 %103)
  br label %113

105:                                              ; preds = %87
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @bswap_buf24(i64 %108, i32 %111)
  br label %113

113:                                              ; preds = %105, %91
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %139, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_15__* %119, i32* null)
  store %struct.TYPE_13__* %120, %struct.TYPE_13__** %14, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %122 = icmp ne %struct.TYPE_13__* %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %125 = call i32 @av_packet_unref(%struct.TYPE_14__* %124)
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = call i32 @AVERROR(i32 %126)
  store i32 %127, i32* %3, align 4
  br label %140

128:                                              ; preds = %118
  %129 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  store i32 %129, i32* %133, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %128, %113
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %123, %83, %65, %58, %32
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @IS_LE_MARKER(i32) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i64 @IS_16LE_MARKER(i32) #1

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @avio_rl24(i32*) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @s337m_get_offset_and_codec(%struct.TYPE_15__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @avio_read(i32*, i64, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_14__*) #1

declare dso_local i32 @ff_spdif_bswap_buf16(i32*, i32*, i32) #1

declare dso_local i32 @bswap_buf24(i64, i32) #1

declare dso_local %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
