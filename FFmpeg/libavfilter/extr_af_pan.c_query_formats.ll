; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_pan.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_pan.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__**, %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32 }

@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %15, i64 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %6, align 8
  store i32* null, i32** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = call i32 @are_gains_pure(%struct.TYPE_8__* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %29 = call i32 @ff_all_formats(i32 %28)
  %30 = call i32 @ff_set_common_formats(%struct.TYPE_10__* %27, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %2, align 4
  br label %76

34:                                               ; preds = %1
  %35 = call i32* (...) @ff_all_samplerates()
  store i32* %35, i32** %7, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @ff_set_common_samplerates(%struct.TYPE_10__* %36, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %2, align 4
  br label %76

42:                                               ; preds = %34
  %43 = call i32* (...) @ff_all_channel_counts()
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = call i32 @ff_channel_layouts_ref(i32* %44, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %2, align 4
  br label %76

51:                                               ; preds = %42
  store i32* null, i32** %8, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  br label %65

60:                                               ; preds = %51
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @FF_COUNT2LAYOUT(i32 %63)
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i64 [ %59, %56 ], [ %64, %60 ]
  %67 = call i32 @ff_add_channel_layout(i32** %8, i64 %66)
  store i32 %67, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %2, align 4
  br label %76

71:                                               ; preds = %65
  %72 = load i32*, i32** %8, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = call i32 @ff_channel_layouts_ref(i32* %72, i32* %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %69, %49, %40, %32
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @are_gains_pure(%struct.TYPE_8__*) #1

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ff_all_formats(i32) #1

declare dso_local i32* @ff_all_samplerates(...) #1

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_10__*, i32*) #1

declare dso_local i32* @ff_all_channel_counts(...) #1

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #1

declare dso_local i32 @ff_add_channel_layout(i32**, i64) #1

declare dso_local i64 @FF_COUNT2LAYOUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
