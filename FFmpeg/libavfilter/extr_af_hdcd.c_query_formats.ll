; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__**, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32 }

@query_formats.sample_rates = internal constant [7 x i32] [i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000, i32 -1], align 16
@query_formats.sample_fmts_in = internal constant [5 x i32] [i32 131, i32 130, i32 129, i32 128, i32 132], align 16
@query_formats.sample_fmts_out = internal constant [2 x i32] [i32 129, i32 132], align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* null, i32** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %12, i64 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %17, i64 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %8, align 8
  %20 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  %21 = call i32 @ff_add_channel_layout(i32** %6, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %2, align 4
  br label %65

26:                                               ; preds = %1
  %27 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %28 = call i32 @ff_add_channel_layout(i32** %6, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %2, align 4
  br label %65

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @ff_set_common_channel_layouts(%struct.TYPE_7__* %34, i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %2, align 4
  br label %65

41:                                               ; preds = %33
  %42 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @query_formats.sample_fmts_in, i64 0, i64 0))
  store i32* %42, i32** %4, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = call i32 @ff_formats_ref(i32* %43, i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %2, align 4
  br label %65

51:                                               ; preds = %41
  %52 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.sample_fmts_out, i64 0, i64 0))
  store i32* %52, i32** %5, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @ff_formats_ref(i32* %53, i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %2, align 4
  br label %65

61:                                               ; preds = %51
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @query_formats.sample_rates, i64 0, i64 0))
  %64 = call i32 @ff_set_common_samplerates(%struct.TYPE_7__* %62, i32* %63)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %59, %49, %39, %31, %24
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ff_add_channel_layout(i32**, i32) #1

declare dso_local i32 @ff_set_common_channel_layouts(%struct.TYPE_7__*, i32*) #1

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @ff_formats_ref(i32*, i32*) #1

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
