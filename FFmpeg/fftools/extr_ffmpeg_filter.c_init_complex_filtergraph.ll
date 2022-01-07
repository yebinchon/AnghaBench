; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_init_complex_filtergraph.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_init_complex_filtergraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__**, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_21__*, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.TYPE_21__*, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_complex_filtergraph(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = call %struct.TYPE_22__* (...) @avfilter_graph_alloc()
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %7, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %11 = icmp ne %struct.TYPE_22__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = call i32 @AVERROR(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %155

15:                                               ; preds = %1
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @avfilter_graph_parse2(%struct.TYPE_22__* %18, i32 %21, %struct.TYPE_21__** %4, %struct.TYPE_21__** %5)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %151

26:                                               ; preds = %15
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %6, align 8
  br label %28

28:                                               ; preds = %35, %26
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %30 = icmp ne %struct.TYPE_21__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %34 = call i32 @init_input_filter(%struct.TYPE_20__* %32, %struct.TYPE_21__* %33)
  br label %35

35:                                               ; preds = %31
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  store %struct.TYPE_21__* %38, %struct.TYPE_21__** %6, align 8
  br label %28

39:                                               ; preds = %28
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %6, align 8
  br label %41

41:                                               ; preds = %75, %39
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = icmp ne %struct.TYPE_21__* %42, null
  br i1 %43, label %44, label %150

44:                                               ; preds = %41
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %46, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @GROW_ARRAY(%struct.TYPE_18__** %47, i32 %50)
  %52 = call %struct.TYPE_18__* @av_mallocz(i32 24)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %54, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %55, i64 %60
  store %struct.TYPE_18__* %52, %struct.TYPE_18__** %61, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %63, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %64, i64 %69
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = icmp ne %struct.TYPE_18__* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %44
  %74 = call i32 @exit_program(i32 1)
  br label %75

75:                                               ; preds = %73, %44
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %78, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %79, i64 %84
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 3
  store %struct.TYPE_20__* %76, %struct.TYPE_20__** %87, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %90, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %91, i64 %96
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  store %struct.TYPE_21__* %88, %struct.TYPE_21__** %99, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @avfilter_pad_get_type(i32 %104, i32 %107)
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %110, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %111, i64 %116
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  store i32 %108, i32* %119, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %122 = call i32 @describe_filter_link(%struct.TYPE_20__* %120, %struct.TYPE_21__* %121, i32 0)
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %124, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %125, i64 %130
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  store i32 %122, i32* %133, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  store %struct.TYPE_21__* %136, %struct.TYPE_21__** %6, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %138, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %139, i64 %144
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %149, align 8
  br label %41

150:                                              ; preds = %41
  br label %151

151:                                              ; preds = %150, %25
  %152 = call i32 @avfilter_inout_free(%struct.TYPE_21__** %4)
  %153 = call i32 @avfilter_graph_free(%struct.TYPE_22__** %7)
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %151, %12
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.TYPE_22__* @avfilter_graph_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avfilter_graph_parse2(%struct.TYPE_22__*, i32, %struct.TYPE_21__**, %struct.TYPE_21__**) #1

declare dso_local i32 @init_input_filter(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @GROW_ARRAY(%struct.TYPE_18__**, i32) #1

declare dso_local %struct.TYPE_18__* @av_mallocz(i32) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @avfilter_pad_get_type(i32, i32) #1

declare dso_local i32 @describe_filter_link(%struct.TYPE_20__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @avfilter_inout_free(%struct.TYPE_21__**) #1

declare dso_local i32 @avfilter_graph_free(%struct.TYPE_22__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
