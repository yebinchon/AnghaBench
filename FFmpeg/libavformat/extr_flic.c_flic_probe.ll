; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flic.c_flic_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flic.c_flic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@FLIC_HEADER_SIZE = common dso_local global i64 0, align 8
@FLIC_FILE_MAGIC_1 = common dso_local global i32 0, align 4
@FLIC_FILE_MAGIC_2 = common dso_local global i32 0, align 4
@FLIC_FILE_MAGIC_3 = common dso_local global i32 0, align 4
@FLIC_CHUNK_MAGIC_1 = common dso_local global i32 0, align 4
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @flic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flic_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FLIC_HEADER_SIZE, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = call i32 @AV_RL16(i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @FLIC_FILE_MAGIC_1, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @FLIC_FILE_MAGIC_2, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FLIC_FILE_MAGIC_3, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %64

29:                                               ; preds = %24, %20, %11
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 16
  %34 = call i32 @AV_RL16(i32* %33)
  %35 = load i32, i32* @FLIC_CHUNK_MAGIC_1, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 16
  %42 = call i32 @AV_RL32(i32* %41)
  %43 = icmp sgt i32 %42, 2000
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %64

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %29
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 8
  %51 = call i32 @AV_RL16(i32* %50)
  %52 = icmp sgt i32 %51, 4096
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 10
  %58 = call i32 @AV_RL16(i32* %57)
  %59 = icmp sgt i32 %58, 4096
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %46
  store i32 0, i32* %2, align 4
  br label %64

61:                                               ; preds = %53
  %62 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %60, %44, %28, %10
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @AV_RL32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
