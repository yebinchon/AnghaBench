; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_avdevice.c_avdevice_capabilities_free.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_avdevice.c_avdevice_capabilities_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i32*)* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avdevice_capabilities_free(i32** %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32**, i32*** %3, align 8
  %9 = icmp ne i32** %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32**, i32*** %3, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %7, %2
  br label %72

15:                                               ; preds = %10
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ true, %15 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @av_assert0(i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %25
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %37, align 8
  %39 = icmp ne i32 (%struct.TYPE_9__*, i32*)* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = load i32**, i32*** %3, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 %45(%struct.TYPE_9__* %46, i32* %48)
  br label %50

50:                                               ; preds = %40, %33
  br label %69

51:                                               ; preds = %25
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %55, align 8
  %57 = icmp ne i32 (%struct.TYPE_9__*, i32*)* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = load i32**, i32*** %3, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 %63(%struct.TYPE_9__* %64, i32* %66)
  br label %68

68:                                               ; preds = %58, %51
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i32**, i32*** %3, align 8
  %71 = call i32 @av_freep(i32** %70)
  br label %72

72:                                               ; preds = %69, %14
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
