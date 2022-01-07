; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__**, %struct.TYPE_5__*, %struct.TYPE_6__** }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@query_formats.pix_fmts = internal constant [2 x i32] [i32 130, i32 131], align 4
@query_formats.sample_fmts = internal constant [2 x i32] [i32 129, i32 128], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %13, i64 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %4, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %18, i64 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %31, i64 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %10, align 8
  %34 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.pix_fmts, i64 0, i64 0))
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  %38 = call i32 @ff_formats_ref(i32* %35, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %2, align 4
  br label %89

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %1
  %44 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.sample_fmts, i64 0, i64 0))
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 5
  %48 = call i32 @ff_formats_ref(i32* %45, i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = call i32 @ff_formats_ref(i32* %51, i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50, %43
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %2, align 4
  br label %89

58:                                               ; preds = %50
  %59 = call i32* (...) @ff_all_channel_counts()
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = call i32 @ff_channel_layouts_ref(i32* %60, i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = call i32 @ff_channel_layouts_ref(i32* %66, i32* %68)
  store i32 %69, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65, %58
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %2, align 4
  br label %89

73:                                               ; preds = %65
  %74 = call i32* (...) @ff_all_samplerates()
  store i32* %74, i32** %7, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = call i32 @ff_formats_ref(i32* %75, i32* %77)
  store i32 %78, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %73
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = call i32 @ff_formats_ref(i32* %81, i32* %83)
  store i32 %84, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80, %73
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %2, align 4
  br label %89

88:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %86, %71, %56, %40
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @ff_formats_ref(i32*, i32*) #1

declare dso_local i32* @ff_all_channel_counts(...) #1

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #1

declare dso_local i32* @ff_all_samplerates(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
