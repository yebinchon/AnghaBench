; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_can_merge_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_can_merge_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_13__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32)* @can_merge_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_merge_formats(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = icmp eq %struct.TYPE_13__* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %84

17:                                               ; preds = %4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = call %struct.TYPE_13__* @clone_filter_formats(%struct.TYPE_13__* %18)
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %10, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = call %struct.TYPE_13__* @clone_filter_formats(%struct.TYPE_13__* %20)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %11, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %23 = icmp ne %struct.TYPE_13__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %26 = icmp ne %struct.TYPE_13__* %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %24, %17
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %29 = icmp ne %struct.TYPE_13__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = call i32 @av_freep(%struct.TYPE_13__** %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %36 = icmp ne %struct.TYPE_13__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = call i32 @av_freep(%struct.TYPE_13__** %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = call i32 @av_freep(%struct.TYPE_13__** %10)
  %43 = call i32 @av_freep(%struct.TYPE_13__** %11)
  store i32 0, i32* %5, align 4
  br label %84

44:                                               ; preds = %24
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %50 = call %struct.TYPE_13__* @ff_merge_samplerates(%struct.TYPE_13__* %48, %struct.TYPE_13__* %49)
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %12, align 8
  br label %56

51:                                               ; preds = %44
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call %struct.TYPE_13__* @ff_merge_formats(%struct.TYPE_13__* %52, %struct.TYPE_13__* %53, i32 %54)
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %12, align 8
  br label %56

56:                                               ; preds = %51, %47
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %58 = icmp ne %struct.TYPE_13__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = call i32 @av_freep(%struct.TYPE_13__** %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = call i32 @av_freep(%struct.TYPE_13__** %64)
  %66 = call i32 @av_freep(%struct.TYPE_13__** %12)
  store i32 1, i32* %5, align 4
  br label %84

67:                                               ; preds = %56
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %69 = icmp ne %struct.TYPE_13__* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = call i32 @av_freep(%struct.TYPE_13__** %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %76 = icmp ne %struct.TYPE_13__* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = call i32 @av_freep(%struct.TYPE_13__** %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = call i32 @av_freep(%struct.TYPE_13__** %10)
  %83 = call i32 @av_freep(%struct.TYPE_13__** %11)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %59, %41, %16
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_13__* @clone_filter_formats(%struct.TYPE_13__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_13__**) #1

declare dso_local %struct.TYPE_13__* @ff_merge_samplerates(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @ff_merge_formats(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
