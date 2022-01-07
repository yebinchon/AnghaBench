; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_jvdec.c_read_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_jvdec.c_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@AVSEEK_FLAG_BYTE = common dso_local global i32 0, align 4
@AVSEEK_FLAG_FRAME = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@JV_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, i32)* @read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_seek(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %10, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %18, i64 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @AVSEEK_FLAG_BYTE, align 4
  %23 = load i32, i32* @AVSEEK_FLAG_FRAME, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOSYS, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %73

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %39 [
    i32 0, label %32
    i32 1, label %37
  ]

32:                                               ; preds = %30
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @av_index_search_timestamp(%struct.TYPE_9__* %33, i32 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  br label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %12, align 4
  br label %40

39:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %73

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %40
  store i32 0, i32* %5, align 4
  br label %73

50:                                               ; preds = %43
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SEEK_SET, align 4
  %63 = call i64 @avio_seek(i32 %53, i32 %61, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %73

66:                                               ; preds = %50
  %67 = load i32, i32* @JV_AUDIO, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %66, %65, %49, %39, %27
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_index_search_timestamp(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @avio_seek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
