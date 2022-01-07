; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_filter.c_chroma_tc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_filter.c_chroma_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@chroma_tc.qp_c = internal constant [14 x i32] [i32 29, i32 30, i32 31, i32 32, i32 33, i32 33, i32 34, i32 34, i32 35, i32 35, i32 36, i32 36, i32 37, i32 37], align 16
@DEFAULT_INTRA_TC_OFFSET = common dso_local global i32 0, align 4
@tctable = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32)* @chroma_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chroma_tc(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  br label %29

22:                                               ; preds = %4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %22, %15
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @av_clip(i32 %32, i32 0, i32 57)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %60

41:                                               ; preds = %29
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 30
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %9, align 4
  br label %59

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %47, 43
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 6
  store i32 %51, i32* %9, align 4
  br label %58

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 30
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [14 x i32], [14 x i32]* @chroma_tc.qp_c, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %52, %49
  br label %59

59:                                               ; preds = %58, %44
  br label %63

60:                                               ; preds = %29
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @av_clip(i32 %61, i32 0, i32 51)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @DEFAULT_INTRA_TC_OFFSET, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @av_clip(i32 %68, i32 0, i32 53)
  store i32 %69, i32* %12, align 4
  %70 = load i32*, i32** @tctable, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  ret i32 %74
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
