; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_swfenc.c_swf_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_swfenc.c_swf_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_13__**, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@TAG_END = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @swf_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swf_write_trailer(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %3, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %43, %1
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %24, i64 %26
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %5, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %6, align 8
  br label %42

38:                                               ; preds = %21
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  %41 = call i32 @av_fifo_freep(i32* %40)
  br label %42

42:                                               ; preds = %38, %36
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %15

46:                                               ; preds = %15
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %48 = load i32, i32* @TAG_END, align 4
  %49 = call i32 @put_swf_tag(%struct.TYPE_16__* %47, i32 %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %51 = call i32 @put_swf_end_tag(%struct.TYPE_16__* %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %46
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = icmp ne %struct.TYPE_17__* %61, null
  br i1 %62, label %63, label %104

63:                                               ; preds = %60
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %65 = call i32 @avio_tell(%struct.TYPE_15__* %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = load i32, i32* @SEEK_SET, align 4
  %68 = call i32 @avio_seek(%struct.TYPE_15__* %66, i32 4, i32 %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @avio_wl32(%struct.TYPE_15__* %69, i32 %70)
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SEEK_SET, align 4
  %77 = call i32 @avio_seek(%struct.TYPE_15__* %72, i32 %75, i32 %76)
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @avio_wl16(%struct.TYPE_15__* %78, i32 %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %63
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SEEK_SET, align 4
  %93 = call i32 @avio_seek(%struct.TYPE_15__* %88, i32 %91, i32 %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @avio_wl16(%struct.TYPE_15__* %94, i32 %97)
  br label %99

99:                                               ; preds = %87, %63
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @SEEK_SET, align 4
  %103 = call i32 @avio_seek(%struct.TYPE_15__* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %60, %46
  ret i32 0
}

declare dso_local i32 @av_fifo_freep(i32*) #1

declare dso_local i32 @put_swf_tag(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @put_swf_end_tag(%struct.TYPE_16__*) #1

declare dso_local i32 @avio_tell(%struct.TYPE_15__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @avio_wl32(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @avio_wl16(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
