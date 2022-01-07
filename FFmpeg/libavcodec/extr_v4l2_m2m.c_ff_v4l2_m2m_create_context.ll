; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_m2m.c_ff_v4l2_m2m_create_context.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_m2m.c_ff_v4l2_m2m_create_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@v4l2_m2m_destroy_context = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_v4l2_m2m_create_context(%struct.TYPE_11__* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %5, align 8
  %6 = call %struct.TYPE_12__* @av_mallocz(i32 32)
  %7 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %7, align 8
  %8 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = call i32 @AVERROR(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %66

14:                                               ; preds = %2
  %15 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = bitcast %struct.TYPE_12__* %16 to i32*
  %18 = call i64 @av_buffer_create(i32* %17, i32 32, i32* @v4l2_m2m_destroy_context, i32* null, i32 0)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %27 = call i32 @av_freep(%struct.TYPE_12__** %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %66

30:                                               ; preds = %14
  %31 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 4
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i64 %57, i64* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %30, %25, %11
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_12__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_buffer_create(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
