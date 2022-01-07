; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_westwood_aud.c_wsaud_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_westwood_aud.c_wsaud_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__**, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { i8*, i32, i32 }

@AUD_CHUNK_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AUD_CHUNK_SIGNATURE = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_WESTWOOD_SND1 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid number of channels %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @wsaud_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsaud_read_packet(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32, i32* @AUD_CHUNK_PREAMBLE_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %23, i64 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %11, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @AUD_CHUNK_PREAMBLE_SIZE, align 4
  %28 = call i32 @avio_read(i32* %26, i8* %20, i32 %27)
  %29 = load i32, i32* @AUD_CHUNK_PREAMBLE_SIZE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EIO, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

34:                                               ; preds = %2
  %35 = getelementptr inbounds i8, i8* %20, i64 4
  %36 = call i64 @AV_RL32(i8* %35)
  %37 = load i64, i64* @AUD_CHUNK_SIGNATURE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

41:                                               ; preds = %34
  %42 = getelementptr inbounds i8, i8* %20, i64 0
  %43 = call i8* @AV_RL16(i8* %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AV_CODEC_ID_WESTWOOD_SND1, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %99

52:                                               ; preds = %41
  %53 = getelementptr inbounds i8, i8* %20, i64 2
  %54 = call i8* @AV_RL16(i8* %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %13, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 4
  %59 = call i32 @av_new_packet(%struct.TYPE_12__* %56, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

63:                                               ; preds = %52
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @avio_read(i32* %64, i8* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %63
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  br label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EIO, align 4
  %80 = call i32 @AVERROR(i32 %79)
  br label %81

81:                                               ; preds = %78, %76
  %82 = phi i32 [ %77, %76 ], [ %80, %78 ]
  store i32 %82, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

83:                                               ; preds = %63
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @AV_WL16(i8* %87, i32 %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @AV_WL16(i8* %93, i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  br label %138

99:                                               ; preds = %41
  %100 = load i32*, i32** %6, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @av_get_packet(i32* %100, %struct.TYPE_12__* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @EIO, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

110:                                              ; preds = %99
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp ule i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %110
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %119 = load i32, i32* @AV_LOG_ERROR, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @av_log(%struct.TYPE_13__* %118, i32 %119, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %126, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

127:                                              ; preds = %110
  %128 = load i32, i32* %9, align 4
  %129 = mul i32 %128, 2
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = udiv i32 %129, %134
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %127, %83
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

145:                                              ; preds = %138, %117, %107, %81, %61, %39, %31
  %146 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @avio_read(i32*, i8*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i64 @AV_RL32(i8*) #2

declare dso_local i8* @AV_RL16(i8*) #2

declare dso_local i32 @av_new_packet(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @AV_WL16(i8*, i32) #2

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
