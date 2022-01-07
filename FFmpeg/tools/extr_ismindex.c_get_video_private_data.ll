; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_get_video_private_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_get_video_private_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Track = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32* }

@AV_CODEC_ID_VC1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Track*, %struct.TYPE_4__*)* @get_video_private_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_video_private_data(%struct.Track* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Track*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Track* %0, %struct.Track** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AV_CODEC_ID_VC1, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.Track*, %struct.Track** %4, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = call i32 @get_private_data(%struct.Track* %16, %struct.TYPE_4__* %17)
  store i32 %18, i32* %3, align 4
  br label %99

19:                                               ; preds = %2
  %20 = call i32 @avio_open_dyn_buf(i32** %6)
  store i32 %20, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %91

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = call i32 @AVERROR(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 11
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %23
  br label %91

38:                                               ; preds = %30
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 6
  %43 = call i32 @AV_RB16(i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 11, %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %91

51:                                               ; preds = %38
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @avio_wb32(i32* %52, i32 1)
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @avio_write(i32* %54, i32* %58, i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 9, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = call i32 @AV_RB16(i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 11, %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %51
  br label %91

78:                                               ; preds = %51
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @avio_wb32(i32* %79, i32 1)
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 11, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @avio_write(i32* %81, i32* %88, i32 %89)
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %78, %77, %50, %37, %22
  %92 = load i32*, i32** %6, align 8
  %93 = load %struct.Track*, %struct.Track** %4, align 8
  %94 = getelementptr inbounds %struct.Track, %struct.Track* %93, i32 0, i32 0
  %95 = call i32 @avio_close_dyn_buf(i32* %92, i32* %94)
  %96 = load %struct.Track*, %struct.Track** %4, align 8
  %97 = getelementptr inbounds %struct.Track, %struct.Track* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %91, %15
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @get_private_data(%struct.Track*, %struct.TYPE_4__*) #1

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
