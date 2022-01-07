; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_frame.c_av_frame_new_side_data_from_buf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_frame.c_av_frame_new_side_data_from_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_12__ = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @av_frame_new_side_data_from_buf(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %77

13:                                               ; preds = %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* @INT_MAX, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 8
  %21 = sub i64 %20, 1
  %22 = icmp ugt i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %77

24:                                               ; preds = %13
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call %struct.TYPE_10__** @av_realloc(%struct.TYPE_10__** %27, i32 %34)
  store %struct.TYPE_10__** %35, %struct.TYPE_10__*** %9, align 8
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %37 = icmp ne %struct.TYPE_10__** %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %77

39:                                               ; preds = %24
  %40 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  store %struct.TYPE_10__** %40, %struct.TYPE_10__*** %42, align 8
  %43 = call %struct.TYPE_10__* @av_mallocz(i32 24)
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %8, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %77

47:                                               ; preds = %39
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %69, i64 %74
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %4, align 8
  br label %77

77:                                               ; preds = %47, %46, %38, %23, %12
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %78
}

declare dso_local %struct.TYPE_10__** @av_realloc(%struct.TYPE_10__**, i32) #1

declare dso_local %struct.TYPE_10__* @av_mallocz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
