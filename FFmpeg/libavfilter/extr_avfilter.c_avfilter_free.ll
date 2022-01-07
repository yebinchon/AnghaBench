; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_avfilter_free.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_avfilter_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*, i64, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64, i32 (%struct.TYPE_12__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avfilter_free(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = icmp ne %struct.TYPE_12__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %128

7:                                                ; preds = %1
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 14
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 14
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = call i32 @ff_filter_graph_remove_filter(i64 %15, %struct.TYPE_12__* %16)
  br label %18

18:                                               ; preds = %12, %7
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 13
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_12__*)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 13
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = call i32 %30(%struct.TYPE_12__* %31)
  br label %33

33:                                               ; preds = %25, %18
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %45
  %47 = call i32 @free_link(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %46)
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %34

51:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %66, %51
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 7
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 %63
  %65 = call i32 @free_link(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %64)
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %52

69:                                               ; preds = %52
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 13
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = call i32 @av_opt_free(%struct.TYPE_12__* %79)
  br label %81

81:                                               ; preds = %76, %69
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 12
  %84 = call i32 @av_buffer_unref(i32* %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 11
  %87 = call i32 @av_freep(%struct.TYPE_12__** %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 10
  %90 = call i32 @av_freep(%struct.TYPE_12__** %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 9
  %93 = call i32 @av_freep(%struct.TYPE_12__** %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 8
  %96 = call i32 @av_freep(%struct.TYPE_12__** %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 7
  %99 = call i32 @av_freep(%struct.TYPE_12__** %98)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 6
  %102 = call i32 @av_freep(%struct.TYPE_12__** %101)
  br label %103

103:                                              ; preds = %108, %81
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %110 = call i32 @ff_command_queue_pop(%struct.TYPE_12__* %109)
  br label %103

111:                                              ; preds = %103
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %113 = call i32 @av_opt_free(%struct.TYPE_12__* %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @av_expr_free(i32* %116)
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 4
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = call i32 @av_freep(%struct.TYPE_12__** %121)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = call i32 @av_freep(%struct.TYPE_12__** %124)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %127 = call i32 @av_free(%struct.TYPE_12__* %126)
  br label %128

128:                                              ; preds = %111, %6
  ret void
}

declare dso_local i32 @ff_filter_graph_remove_filter(i64, %struct.TYPE_12__*) #1

declare dso_local i32 @free_link(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

declare dso_local i32 @av_opt_free(%struct.TYPE_12__*) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @av_freep(%struct.TYPE_12__**) #1

declare dso_local i32 @ff_command_queue_pop(%struct.TYPE_12__*) #1

declare dso_local i32 @av_expr_free(i32*) #1

declare dso_local i32 @av_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
