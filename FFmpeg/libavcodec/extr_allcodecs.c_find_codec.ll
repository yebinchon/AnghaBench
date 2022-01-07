; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_allcodecs.c_find_codec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_allcodecs.c_find_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@AV_CODEC_CAP_EXPERIMENTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32 (%struct.TYPE_5__*)*)* @find_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @find_codec(i32 %0, i32 (%struct.TYPE_5__*)* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.TYPE_5__*)*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 (%struct.TYPE_5__*)* %1, i32 (%struct.TYPE_5__*)** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @remap_deprecated_codec_id(i32 %9)
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %41, %19, %2
  %12 = call %struct.TYPE_5__* @av_codec_iterate(i8** %8)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  %15 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = call i32 %15(%struct.TYPE_5__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %11

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AV_CODEC_CAP_EXPERIMENTAL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %7, align 8
  br label %40

38:                                               ; preds = %33, %26
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %3, align 8
  br label %44

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %20
  br label %11

42:                                               ; preds = %11
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %3, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %45
}

declare dso_local i32 @remap_deprecated_codec_id(i32) #1

declare dso_local %struct.TYPE_5__* @av_codec_iterate(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
