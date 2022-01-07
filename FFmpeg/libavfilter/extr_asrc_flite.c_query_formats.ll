; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_flite.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_flite.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@AV_SAMPLE_FMT_S16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  store i32* null, i32** %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @av_get_default_channel_layout(i32 %17)
  store i32 %18, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ff_add_channel_layout(i32** %6, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @ff_set_common_channel_layouts(%struct.TYPE_10__* %23, i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @AV_SAMPLE_FMT_S16, align 4
  %29 = call i32 @ff_add_format(i32** %8, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @ff_set_common_formats(%struct.TYPE_10__* %32, i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ff_add_format(i32** %9, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @ff_set_common_samplerates(%struct.TYPE_10__* %45, i32* %46)
  store i32 %47, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %36, %31, %27, %22, %1
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %49
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @av_get_default_channel_layout(i32) #1

declare dso_local i32 @ff_add_channel_layout(i32**, i32) #1

declare dso_local i32 @ff_set_common_channel_layouts(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ff_add_format(i32**, i32) #1

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
