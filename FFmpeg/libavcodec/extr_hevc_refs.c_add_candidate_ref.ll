; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_refs.c_add_candidate_ref.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_refs.c_add_candidate_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__**, i32* }

@HEVC_MAX_REFS = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_11__*, i32, i32)* @add_candidate_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_candidate_ref(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.TYPE_12__* @find_ref_idx(%struct.TYPE_13__* %11, i32 %12)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %10, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = icmp eq %struct.TYPE_12__* %14, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HEVC_MAX_REFS, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %4
  %26 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %26, i32* %5, align 4
  br label %66

27:                                               ; preds = %19
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.TYPE_12__* @generate_missing_ref(%struct.TYPE_13__* %31, i32 %32)
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %10, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %66

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %27
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %43, i32* %50, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %53, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %54, i64 %57
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @mark_ref(%struct.TYPE_12__* %63, i32 %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %40, %36, %25
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_12__* @find_ref_idx(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_12__* @generate_missing_ref(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @mark_ref(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
