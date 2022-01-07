; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_smjpegenc.c_smjpeg_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_smjpegenc.c_smjpeg_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SMJPEG_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @smjpeg_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smjpeg_write_trailer(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = call i32 @avio_tell(%struct.TYPE_10__* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i32 @avio_seek(%struct.TYPE_10__* %21, i32 12, i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @avio_wb32(%struct.TYPE_10__* %24, i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SEEK_SET, align 4
  %32 = call i32 @avio_seek(%struct.TYPE_10__* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %18, %1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = load i32, i32* @SMJPEG_DONE, align 4
  %36 = call i32 @avio_wl32(%struct.TYPE_10__* %34, i32 %35)
  ret i32 0
}

declare dso_local i32 @avio_tell(%struct.TYPE_10__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @avio_wb32(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @avio_wl32(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
