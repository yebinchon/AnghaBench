; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_resample.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_resample.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__**, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %5, align 8
  %23 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %24 = call i32* @ff_all_formats(i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %1
  %27 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %28 = call i32* @ff_all_formats(i32 %27)
  store i32* %28, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = call i32* (...) @ff_all_samplerates()
  store i32* %31, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = call i32* (...) @ff_all_samplerates()
  store i32* %34, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = call i32* (...) @ff_all_channel_layouts()
  store i32* %37, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = call i32* (...) @ff_all_channel_layouts()
  store i32* %40, i32** %11, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39, %36, %33, %30, %26, %1
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %84

45:                                               ; preds = %39
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  %49 = call i32 @ff_formats_ref(i32* %46, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %81, label %51

51:                                               ; preds = %45
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = call i32 @ff_formats_ref(i32* %52, i32* %54)
  store i32 %55, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %51
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = call i32 @ff_formats_ref(i32* %58, i32* %60)
  store i32 %61, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %57
  %64 = load i32*, i32** %9, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = call i32 @ff_formats_ref(i32* %64, i32* %66)
  store i32 %67, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %63
  %70 = load i32*, i32** %10, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = call i32 @ff_channel_layouts_ref(i32* %70, i32* %72)
  store i32 %73, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i32*, i32** %11, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @ff_channel_layouts_ref(i32* %76, i32* %78)
  store i32 %79, i32* %12, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75, %69, %63, %57, %51, %45
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %2, align 4
  br label %84

83:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %81, %42
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32* @ff_all_formats(i32) #1

declare dso_local i32* @ff_all_samplerates(...) #1

declare dso_local i32* @ff_all_channel_layouts(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_formats_ref(i32*, i32*) #1

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
