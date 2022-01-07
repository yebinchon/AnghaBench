; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vpk.c_vpk_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vpk.c_vpk_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_PSX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @vpk_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpk_read_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = call %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__* %13, i32* null)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = call i32 @AVERROR(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %167

20:                                               ; preds = %1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @avio_skip(i32 %23, i32 4)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @avio_rl32(i32 %27)
  %29 = mul nsw i32 %28, 28
  %30 = sdiv i32 %29, 16
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @avio_rl32(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @AV_CODEC_ID_ADPCM_PSX, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  store i32 %42, i32* %46, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @avio_rl32(i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @avio_rl32(i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %20
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69, %20
  %77 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %77, i32* %2, align 4
  br label %167

78:                                               ; preds = %69
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @avio_rl32(i32 %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  store i32 %82, i32* %86, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %2, align 4
  br label %167

95:                                               ; preds = %78
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sdiv i32 %100, %105
  %107 = sext i32 %106 to i64
  %108 = mul nsw i64 %107, 28
  %109 = sdiv i64 %108, 16
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ule i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %95
  %114 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %114, i32* %2, align 4
  br label %167

115:                                              ; preds = %95
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sub i32 %119, 1
  %121 = add i32 %118, %120
  %122 = load i32, i32* %6, align 4
  %123 = udiv i32 %121, %122
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = urem i32 %128, %129
  %131 = mul i32 %130, 16
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = mul i32 %131, %136
  %138 = udiv i32 %137, 28
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @avio_tell(i32 %144)
  %146 = icmp ult i32 %141, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %115
  %148 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %148, i32* %2, align 4
  br label %167

149:                                              ; preds = %115
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @avio_tell(i32 %156)
  %158 = sub i32 %153, %157
  %159 = call i32 @avio_skip(i32 %152, i32 %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %160, i32 64, i32 1, i32 %165)
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %149, %147, %113, %93, %76, %17
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_skip(i32, i32) #1

declare dso_local i32 @avio_rl32(i32) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
