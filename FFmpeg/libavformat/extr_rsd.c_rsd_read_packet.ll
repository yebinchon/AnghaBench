; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rsd.c_rsd_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rsd.c_rsd_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i64, i32 }
%struct.TYPE_10__ = type { i32*, i32, i32, i64, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_IMA_RAD = common dso_local global i64 0, align 8
@AV_CODEC_ID_ADPCM_PSX = common dso_local global i64 0, align 8
@AV_CODEC_ID_ADPCM_IMA_WAV = common dso_local global i64 0, align 8
@AV_CODEC_ID_XMA2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @rsd_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsd_read_packet(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %14, i64 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %6, align 8
  store i32 1024, i32* %8, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @avio_feof(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %25, i32* %3, align 4
  br label %172

26:                                               ; preds = %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @avio_tell(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AV_CODEC_ID_ADPCM_IMA_RAD, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %54, label %36

36:                                               ; preds = %26
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AV_CODEC_ID_ADPCM_PSX, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AV_CODEC_ID_ADPCM_IMA_WAV, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AV_CODEC_ID_XMA2, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48, %42, %36, %26
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @av_get_packet(i32 %57, %struct.TYPE_10__* %58, i32 %61)
  store i32 %62, i32* %7, align 4
  br label %144

63:                                               ; preds = %48
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @MKTAG(i8 signext 87, i8 signext 65, i8 signext 68, i8 signext 80)
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %136

69:                                               ; preds = %63
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %136

74:                                               ; preds = %69
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @av_new_packet(%struct.TYPE_10__* %75, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %172

84:                                               ; preds = %74
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %132, %84
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 4
  br i1 %87, label %88, label %135

88:                                               ; preds = %85
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %128, %88
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %131

95:                                               ; preds = %89
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @avio_r8(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 %104, 8
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 %106, 2
  %108 = add nsw i32 %105, %107
  %109 = add nsw i32 %108, 0
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %103, i64 %110
  store i32 %100, i32* %111, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @avio_r8(i32 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = mul nsw i32 %120, 8
  %122 = load i32, i32* %10, align 4
  %123 = mul nsw i32 %122, 2
  %124 = add nsw i32 %121, %123
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %119, i64 %126
  store i32 %116, i32* %127, align 4
  br label %128

128:                                              ; preds = %95
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %89

131:                                              ; preds = %89
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %85

135:                                              ; preds = %85
  store i32 0, i32* %7, align 4
  br label %143

136:                                              ; preds = %69, %63
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @av_get_packet(i32 %139, %struct.TYPE_10__* %140, i32 %141)
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %136, %135
  br label %144

144:                                              ; preds = %143, %54
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AV_CODEC_ID_XMA2, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %144
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp sge i32 %153, 1
  br i1 %154, label %155, label %165

155:                                              ; preds = %150
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = ashr i32 %160, 2
  %162 = mul nsw i32 %161, 512
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %155, %150, %144
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 3
  store i64 0, i64* %170, align 8
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %165, %82, %24
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @avio_feof(i32) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @av_get_packet(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @avio_r8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
