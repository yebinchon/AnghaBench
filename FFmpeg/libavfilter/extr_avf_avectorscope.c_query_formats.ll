; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_avectorscope.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_avectorscope.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__**, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@query_formats.sample_fmts = internal constant [3 x i32] [i32 128, i32 130, i32 129], align 4
@query_formats.pix_fmts = internal constant [2 x i32] [i32 131, i32 132], align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %11, i64 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %7, align 8
  %19 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @query_formats.sample_fmts, i64 0, i64 0))
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = call i32 @ff_formats_ref(i32* %20, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %27 = call i32 @ff_add_channel_layout(i32** %5, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = call i32 @ff_channel_layouts_ref(i32* %30, i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %25, %1
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %56

37:                                               ; preds = %29
  %38 = call i32* (...) @ff_all_samplerates()
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = call i32 @ff_formats_ref(i32* %39, i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %56

46:                                               ; preds = %37
  %47 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.pix_fmts, i64 0, i64 0))
  store i32* %47, i32** %4, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @ff_formats_ref(i32* %48, i32* %50)
  store i32 %51, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %53, %44, %35
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @ff_formats_ref(i32*, i32*) #1

declare dso_local i32 @ff_add_channel_layout(i32**, i32) #1

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #1

declare dso_local i32* @ff_all_samplerates(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
