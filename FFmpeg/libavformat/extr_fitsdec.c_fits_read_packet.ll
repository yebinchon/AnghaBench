; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_fitsdec.c_fits_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_fitsdec.c_fits_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_18__ = type { i32 }

@STATE_SIMPLE = common dso_local global i32 0, align 4
@STATE_XTENSION = common dso_local global i32 0, align 4
@FITS_BLOCK_SIZE = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @fits_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fits_read_packet(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %9, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @STATE_SIMPLE, align 4
  %22 = call i32 @avpriv_fits_header_init(i32* %10, i32 %21)
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @STATE_XTENSION, align 4
  %25 = call i32 @avpriv_fits_header_init(i32* %10, i32 %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @FITS_BLOCK_SIZE, align 4
  %28 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %29 = call i32 @av_bprint_init(%struct.TYPE_18__* %11, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %46, %26
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %33 = call i64 @is_image(%struct.TYPE_17__* %31, %struct.TYPE_15__* %32, i32* %10, %struct.TYPE_18__* %11, i64* %8)
  store i64 %33, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @avio_skip(i32 %38, i64 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %148

46:                                               ; preds = %35
  %47 = call i64 @av_bprint_finalize(%struct.TYPE_18__* %11, i8** null)
  %48 = load i32, i32* @FITS_BLOCK_SIZE, align 4
  %49 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %50 = call i32 @av_bprint_init(%struct.TYPE_18__* %11, i32 %48, i32 %49)
  %51 = load i32, i32* @STATE_XTENSION, align 4
  %52 = call i32 @avpriv_fits_header_init(i32* %10, i32 %51)
  br label %30

53:                                               ; preds = %30
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %144

57:                                               ; preds = %53
  %58 = call i32 @av_bprint_is_complete(%struct.TYPE_18__* %11)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = call i64 @AVERROR(i32 %61)
  store i64 %62, i64* %7, align 8
  br label %144

63:                                               ; preds = %57
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 80
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i64 @av_new_packet(%struct.TYPE_16__* %64, i64 %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %144

75:                                               ; preds = %63
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = call i64 @av_bprint_finalize(%struct.TYPE_18__* %11, i8** %12)
  store i64 %83, i64* %7, align 8
  %84 = load i64, i64* %7, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = call i32 @av_packet_unref(%struct.TYPE_16__* %87)
  %89 = load i64, i64* %7, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %3, align 4
  br label %148

91:                                               ; preds = %75
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 80
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 80
  %100 = call i32 @memcpy(i64 %94, i8* %96, i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 80
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = call i32 @av_freep(i8** %12)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %112, %116
  %118 = load i64, i64* %8, align 8
  %119 = call i64 @avio_read(i32 %109, i64 %117, i64 %118)
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* %7, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %91
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = call i32 @av_packet_unref(%struct.TYPE_16__* %123)
  %125 = load i64, i64* %7, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %3, align 4
  br label %148

127:                                              ; preds = %91
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %128
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %130, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  store i32 0, i32* %3, align 4
  br label %148

144:                                              ; preds = %74, %60, %56
  %145 = call i64 @av_bprint_finalize(%struct.TYPE_18__* %11, i8** null)
  %146 = load i64, i64* %7, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %127, %122, %86, %43
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @avpriv_fits_header_init(i32*, i32) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @is_image(%struct.TYPE_17__*, %struct.TYPE_15__*, i32*, %struct.TYPE_18__*, i64*) #1

declare dso_local i64 @avio_skip(i32, i64) #1

declare dso_local i64 @av_bprint_finalize(%struct.TYPE_18__*, i8**) #1

declare dso_local i32 @av_bprint_is_complete(%struct.TYPE_18__*) #1

declare dso_local i64 @AVERROR(i32) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_16__*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i64 @avio_read(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
