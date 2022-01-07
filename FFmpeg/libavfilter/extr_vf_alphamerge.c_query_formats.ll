; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_alphamerge.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_alphamerge.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__**, %struct.TYPE_9__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }

@query_formats.main_fmts = internal constant [9 x i32] [i32 128, i32 129, i32 130, i32 134, i32 131, i32 135, i32 136, i32 137, i32 132], align 16
@query_formats.alpha_fmts = internal constant [2 x i32] [i32 133, i32 132], align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  %7 = call %struct.TYPE_11__* @ff_make_format_list(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @query_formats.main_fmts, i64 0, i64 0))
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %4, align 8
  %8 = icmp ne %struct.TYPE_11__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call %struct.TYPE_11__* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.alpha_fmts, i64 0, i64 0))
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %5, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = call i32 @AVERROR(i32 %13)
  store i32 %14, i32* %6, align 4
  br label %47

15:                                               ; preds = %9
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %19, i64 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = call i32 @ff_formats_ref(%struct.TYPE_11__* %16, i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %15
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %29, i64 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = call i32 @ff_formats_ref(%struct.TYPE_11__* %26, i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %25
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %39, i64 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = call i32 @ff_formats_ref(%struct.TYPE_11__* %36, i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35, %25, %15
  br label %47

46:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %65

47:                                               ; preds = %45, %12
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = call i32 @av_freep(%struct.TYPE_11__** %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = call i32 @av_freep(%struct.TYPE_11__** %4)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = icmp ne %struct.TYPE_11__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = call i32 @av_freep(%struct.TYPE_11__** %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = call i32 @av_freep(%struct.TYPE_11__** %5)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %46
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_11__* @ff_make_format_list(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_formats_ref(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @av_freep(%struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
