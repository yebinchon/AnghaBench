; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_hwframe_pool_prealloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_hwframe_pool_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @hwframe_pool_prealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwframe_pool_prealloc(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32** @av_mallocz_array(i32 %14, i32 8)
  store i32** %15, i32*** %5, align 8
  %16 = load i32**, i32*** %5, align 8
  %17 = icmp ne i32** %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %76

21:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %53, %21
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %22
  %29 = call i32* (...) @av_frame_alloc()
  %30 = load i32**, i32*** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  store i32* %29, i32** %33, align 8
  %34 = load i32**, i32*** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  br label %57

41:                                               ; preds = %28
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = load i32**, i32*** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @av_hwframe_get_buffer(%struct.TYPE_6__* %42, i32* %47, i32 0)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %57

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %22

56:                                               ; preds = %22
  br label %57

57:                                               ; preds = %56, %51, %40
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load i32**, i32*** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = call i32 @av_frame_free(i32** %68)
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %58

73:                                               ; preds = %58
  %74 = call i32 @av_freep(i32*** %5)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32** @av_mallocz_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_frame_alloc(...) #1

declare dso_local i32 @av_hwframe_get_buffer(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @av_freep(i32***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
