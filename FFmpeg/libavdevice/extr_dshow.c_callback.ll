; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_callback.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.dshow_ctx* }
%struct.dshow_ctx = type { i32*, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }

@INFINITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*, i32, i32, i32)* @callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callback(i8* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.dshow_ctx*, align 8
  %15 = alloca %struct.TYPE_7__**, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %13, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.dshow_ctx*, %struct.dshow_ctx** %20, align 8
  store %struct.dshow_ctx* %21, %struct.dshow_ctx** %14, align 8
  %22 = load %struct.dshow_ctx*, %struct.dshow_ctx** %14, align 8
  %23 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @INFINITE, align 4
  %26 = call i32 @WaitForSingleObject(i32 %24, i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @shall_we_drop(%struct.TYPE_8__* %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  br label %96

33:                                               ; preds = %6
  %34 = call %struct.TYPE_7__* @av_mallocz(i32 24)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %16, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %96

38:                                               ; preds = %33
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @av_new_packet(%struct.TYPE_9__* %40, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %46 = call i32 @av_free(%struct.TYPE_7__* %45)
  br label %96

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @memcpy(i32 %59, i32* %60, i32 %61)
  %63 = load %struct.dshow_ctx*, %struct.dshow_ctx** %14, align 8
  %64 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %63, i32 0, i32 3
  store %struct.TYPE_7__** %64, %struct.TYPE_7__*** %15, align 8
  br label %65

65:                                               ; preds = %70, %47
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store %struct.TYPE_7__** %73, %struct.TYPE_7__*** %15, align 8
  br label %65

74:                                               ; preds = %65
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %76 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.dshow_ctx*, %struct.dshow_ctx** %14, align 8
  %79 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %77
  store i32 %85, i32* %83, align 4
  %86 = load %struct.dshow_ctx*, %struct.dshow_ctx** %14, align 8
  %87 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SetEvent(i32 %90)
  %92 = load %struct.dshow_ctx*, %struct.dshow_ctx** %14, align 8
  %93 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ReleaseMutex(i32 %94)
  br label %101

96:                                               ; preds = %44, %37, %32
  %97 = load %struct.dshow_ctx*, %struct.dshow_ctx** %14, align 8
  %98 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ReleaseMutex(i32 %99)
  br label %101

101:                                              ; preds = %96, %74
  ret void
}

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i64 @shall_we_drop(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @av_mallocz(i32) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i32 @ReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
