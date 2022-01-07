; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_remap.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_remap.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__**, %struct.TYPE_10__**, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_13__* }

@query_formats.pix_fmts = internal constant [32 x i32] [i32 132, i32 138, i32 128, i32 142, i32 163, i32 164, i32 165, i32 140, i32 161, i32 155, i32 159, i32 133, i32 137, i32 136, i32 135, i32 134, i32 129, i32 131, i32 130, i32 150, i32 154, i32 153, i32 152, i32 151, i32 158, i32 157, i32 156, i32 141, i32 162, i32 139, i32 160, i32 143], align 16
@query_formats.gray_pix_fmts = internal constant [7 x i32] [i32 145, i32 144, i32 149, i32 148, i32 147, i32 146, i32 143], align 16
@query_formats.map_fmts = internal constant [2 x i32] [i32 146, i32 143], align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @query_formats.gray_pix_fmts, i64 0, i64 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @query_formats.pix_fmts, i64 0, i64 0)
  %17 = call %struct.TYPE_13__* @ff_make_format_list(i32* %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %5, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = call %struct.TYPE_13__* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.map_fmts, i64 0, i64 0))
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %6, align 8
  %21 = icmp ne %struct.TYPE_13__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = call i32 @AVERROR(i32 %23)
  store i32 %24, i32* %7, align 4
  br label %67

25:                                               ; preds = %19
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %29, i64 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = call i32 @ff_formats_ref(%struct.TYPE_13__* %26, i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %25
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %39, i64 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = call i32 @ff_formats_ref(%struct.TYPE_13__* %36, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %35
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = call i32 @ff_formats_ref(%struct.TYPE_13__* %46, i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %45
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %59, i64 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = call i32 @ff_formats_ref(%struct.TYPE_13__* %56, i32* %62)
  store i32 %63, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55, %45, %35, %25
  br label %67

66:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %85

67:                                               ; preds = %65, %22
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = icmp ne %struct.TYPE_13__* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = call i32 @av_freep(%struct.TYPE_13__** %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = call i32 @av_freep(%struct.TYPE_13__** %5)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = icmp ne %struct.TYPE_13__* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = call i32 @av_freep(%struct.TYPE_13__** %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = call i32 @av_freep(%struct.TYPE_13__** %6)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %66
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_13__* @ff_make_format_list(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_formats_ref(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @av_freep(%struct.TYPE_13__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
