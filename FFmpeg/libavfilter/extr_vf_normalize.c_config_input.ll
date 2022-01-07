; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_normalize.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_normalize.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_14__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %4, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_14__* @av_pix_fmt_desc_get(i32 %14)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %5, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ff_fill_rgba_map(i32 %18, i32 %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = call i32 @av_get_padded_bits_per_pixel(%struct.TYPE_14__* %28)
  %30 = ashr i32 %29, 3
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 6
  %43 = call i32* @av_malloc(i32 %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %1
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %99

53:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %95, %53
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %98

57:                                               ; preds = %54
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %61, 2
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %60, i64 %67
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32* %68, i32** %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 %79, 2
  %81 = add nsw i32 %80, 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %78, i64 %86
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i32* %87, i32** %94, align 8
  br label %95

95:                                               ; preds = %57
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %54

98:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %50
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_14__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @ff_fill_rgba_map(i32, i32) #1

declare dso_local i32 @av_get_padded_bits_per_pixel(%struct.TYPE_14__*) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
