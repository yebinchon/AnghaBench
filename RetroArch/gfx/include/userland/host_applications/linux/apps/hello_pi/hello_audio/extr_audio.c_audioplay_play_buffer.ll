; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_audio/extr_audio.c_audioplay_play_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_audio/extr_audio.c_audioplay_play_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i64, %struct.TYPE_5__*, i32* }

@OMX_ErrorNone = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audioplay_play_buffer(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  store i32 -1, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = srem i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %95

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = call i32 @sem_wait(i32* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %8, align 8
  br label %27

27:                                               ; preds = %44, %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br label %42

42:                                               ; preds = %36, %30, %27
  %43 = phi i1 [ false, %30 ], [ false, %27 ], [ %41, %36 ]
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %9, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %8, align 8
  br label %27

49:                                               ; preds = %42
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = icmp ne %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %60, align 8
  br label %67

61:                                               ; preds = %52
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %66, align 8
  br label %67

67:                                               ; preds = %61, %55
  br label %68

68:                                               ; preds = %67, %49
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = call i32 @sem_post(i32* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = icmp ne %struct.TYPE_5__* %72, null
  br i1 %73, label %74, label %93

74:                                               ; preds = %68
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ILC_GET_HANDLE(i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = call i64 @OMX_EmptyThisBuffer(i32 %85, %struct.TYPE_5__* %86)
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* @OMX_ErrorNone, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  br label %93

93:                                               ; preds = %74, %68
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %18
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @sem_post(i32*) #1

declare dso_local i64 @OMX_EmptyThisBuffer(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ILC_GET_HANDLE(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
