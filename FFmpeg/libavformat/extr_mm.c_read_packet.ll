; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mm.c_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mm.c_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@MM_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown chunk type 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_packet(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32, i32* @MM_PREAMBLE_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  br label %23

23:                                               ; preds = %117, %2
  br label %24

24:                                               ; preds = %23
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @MM_PREAMBLE_SIZE, align 4
  %27 = call i32 (i32*, ...) @avio_read(i32* %25, i8* %22, i32 %26)
  %28 = load i32, i32* @MM_PREAMBLE_SIZE, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EIO, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %118

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %22, i64 0
  %35 = call i32 @AV_RL16(i8* %34)
  store i32 %35, i32* %10, align 4
  %36 = getelementptr inbounds i8, i8* %22, i64 2
  %37 = call i32 @AV_RL16(i8* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %109 [
    i32 128, label %39
    i32 134, label %39
    i32 131, label %39
    i32 130, label %39
    i32 133, label %39
    i32 129, label %39
    i32 132, label %39
    i32 135, label %89
  ]

39:                                               ; preds = %33, %33, %33, %33, %33, %33, %33
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @MM_PREAMBLE_SIZE, align 4
  %43 = add i32 %41, %42
  %44 = call i32 @av_new_packet(%struct.TYPE_10__* %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %118

49:                                               ; preds = %39
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MM_PREAMBLE_SIZE, align 4
  %54 = call i32 @memcpy(i32 %52, i8* %22, i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MM_PREAMBLE_SIZE, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (i32*, ...) @avio_read(i32* %55, i32 %60, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32, i32* @EIO, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %118

68:                                               ; preds = %49
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @MM_PREAMBLE_SIZE, align 4
  %71 = add i32 %69, %70
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store i32 0, i32* %75, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 128
  br i1 %82, label %83, label %88

83:                                               ; preds = %68
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %68
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %118

89:                                               ; preds = %33
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @av_get_packet(i32* %92, %struct.TYPE_10__* %93, i32 %94)
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = call i32 @AVERROR(i32 %98)
  store i32 %99, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %118

100:                                              ; preds = %89
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  store i32 1, i32* %102, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %118

109:                                              ; preds = %33
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = load i32, i32* @AV_LOG_INFO, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @av_log(%struct.TYPE_11__* %110, i32 %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @avio_skip(i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %109
  br label %23

118:                                              ; preds = %100, %97, %88, %65, %46, %30
  %119 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @avio_read(i32*, ...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @AV_RL16(i8*) #2

declare dso_local i32 @av_new_packet(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i32) #2

declare dso_local i32 @avio_skip(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
