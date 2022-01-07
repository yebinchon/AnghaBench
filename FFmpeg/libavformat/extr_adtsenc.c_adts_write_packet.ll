; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_adtsenc.c_adts_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_adtsenc.c_adts_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.TYPE_13__**, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32*, i64 }
%struct.TYPE_14__ = type { i32, i32* }

@ADTS_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_PKT_DATA_NEW_EXTRADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @adts_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adts_write_packet(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %21, i64 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %7, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %8, align 8
  %29 = load i32, i32* @ADTS_HEADER_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %9, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %10, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

38:                                               ; preds = %2
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %75, label %43

43:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = load i32, i32* @AV_PKT_DATA_NEW_EXTRADATA, align 4
  %46 = call i32* @av_packet_get_side_data(%struct.TYPE_14__* %44, i32 %45, i32* %13)
  store i32* %46, i32** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %43
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @adts_decode_extradata(%struct.TYPE_15__* %50, %struct.TYPE_17__* %51, i32* %52, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

59:                                               ; preds = %49
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @ff_alloc_extradata(%struct.TYPE_16__* %60, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

67:                                               ; preds = %59
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @memcpy(i32 %70, i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %43
  br label %75

75:                                               ; preds = %74, %38
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %113

80:                                               ; preds = %75
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @adts_write_frame_header(%struct.TYPE_17__* %81, i32* %32, i32 %84, i32 %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

93:                                               ; preds = %80
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* @ADTS_HEADER_SIZE, align 4
  %96 = call i32 @avio_write(i32* %94, i32* %32, i32 %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %93
  %102 = load i32*, i32** %8, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @avio_write(i32* %102, i32* %105, i32 %108)
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %101, %93
  br label %113

113:                                              ; preds = %112, %75
  %114 = load i32*, i32** %8, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @avio_write(i32* %114, i32* %117, i32 %120)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

122:                                              ; preds = %113, %91, %65, %57, %37
  %123 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_14__*, i32, i32*) #2

declare dso_local i32 @adts_decode_extradata(%struct.TYPE_15__*, %struct.TYPE_17__*, i32*, i32) #2

declare dso_local i32 @ff_alloc_extradata(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @adts_write_frame_header(%struct.TYPE_17__*, i32*, i32, i32) #2

declare dso_local i32 @avio_write(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
