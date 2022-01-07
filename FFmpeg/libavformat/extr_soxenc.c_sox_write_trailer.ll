; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_soxenc.c_sox_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_soxenc.c_sox_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_12__**, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S32LE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @sox_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sox_write_trailer(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %4, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %16, i64 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %5, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = call i32 @avio_tell(%struct.TYPE_14__* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = sub nsw i64 %37, 4
  %39 = ashr i64 %38, 2
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = load i32, i32* @SEEK_SET, align 4
  %43 = call i32 @avio_seek(%struct.TYPE_14__* %41, i32 8, i32 %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AV_CODEC_ID_PCM_S32LE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %29
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @avio_wl64(%struct.TYPE_14__* %50, i32 %51)
  br label %57

53:                                               ; preds = %29
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @avio_wb64(%struct.TYPE_14__* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SEEK_SET, align 4
  %61 = call i32 @avio_seek(%struct.TYPE_14__* %58, i32 %59, i32 %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = call i32 @avio_flush(%struct.TYPE_14__* %62)
  br label %64

64:                                               ; preds = %57, %1
  ret i32 0
}

declare dso_local i32 @avio_tell(%struct.TYPE_14__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @avio_wl64(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @avio_wb64(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @avio_flush(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
