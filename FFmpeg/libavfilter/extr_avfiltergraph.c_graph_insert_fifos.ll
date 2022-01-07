; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_graph_insert_fifos.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_graph_insert_fifos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"afifo\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"auto_fifo_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @graph_insert_fifos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_insert_fifos(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [32 x i8], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %93, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %96

21:                                               ; preds = %15
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %24, i64 %26
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %6, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %89, %21
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %92

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %38, i64 %40
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %11, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %89

50:                                               ; preds = %35
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %53, i64 %55
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = call i32* @avfilter_get_by_name(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %66

64:                                               ; preds = %50
  %65 = call i32* @avfilter_get_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32* [ %63, %62 ], [ %65, %64 ]
  store i32* %67, i32** %13, align 8
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = call i32 @snprintf(i8* %68, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = call i32 @avfilter_graph_create_filter(%struct.TYPE_13__** %12, i32* %72, i8* %73, i32* null, i32* null, %struct.TYPE_12__* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %97

80:                                               ; preds = %66
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %83 = call i32 @avfilter_insert_filter(%struct.TYPE_11__* %81, %struct.TYPE_13__* %82, i32 0, i32 0)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %97

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %49
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %29

92:                                               ; preds = %29
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %15

96:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %86, %78
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32* @avfilter_get_by_name(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @avfilter_graph_create_filter(%struct.TYPE_13__**, i32*, i8*, i32*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @avfilter_insert_filter(%struct.TYPE_11__*, %struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
