; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_anullsrc.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_anullsrc.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 -1, i32* %15, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 -1, i32* %20, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %23 = call i32 @ff_all_formats(i32 %22)
  %24 = call i32 @ff_set_common_formats(%struct.TYPE_7__* %21, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %29 = call i32 @avfilter_make_format64_list(i32* %28)
  %30 = call i32 @ff_set_common_channel_layouts(%struct.TYPE_7__* %27, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %35 = call i32 @ff_make_format_list(i32* %34)
  %36 = call i32 @ff_set_common_samplerates(%struct.TYPE_7__* %33, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %26, %1
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ff_all_formats(i32) #1

declare dso_local i32 @ff_set_common_channel_layouts(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @avfilter_make_format64_list(i32*) #1

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ff_make_format_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
