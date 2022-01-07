; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_drm_common.c_drm_get_encoder.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_drm_common.c_drm_get_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@g_drm_resources = common dso_local global %struct.TYPE_8__* null, align 8
@g_drm_encoder = common dso_local global %struct.TYPE_9__* null, align 8
@g_drm_connector = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"[DRM]: Couldn't find DRM encoder.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"[DRM]: Mode %d: (%s) %d x %d, %u Hz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_get_encoder(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_drm_resources, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %5
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_drm_resources, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_9__* @drmModeGetEncoder(i32 %12, i32 %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** @g_drm_encoder, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_encoder, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  br label %36

24:                                               ; preds = %11
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_encoder, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_drm_connector, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %39

33:                                               ; preds = %24
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_encoder, align 8
  %35 = call i32 @drmModeFreeEncoder(%struct.TYPE_9__* %34)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** @g_drm_encoder, align 8
  br label %36

36:                                               ; preds = %33, %23
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %5

39:                                               ; preds = %32, %5
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_encoder, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %90

44:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %86, %44
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_drm_connector, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %89

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_drm_connector, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_drm_connector, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_drm_connector, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_drm_connector, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %60, i32 %68, i32 %76, i32 %84)
  br label %86

86:                                               ; preds = %51
  %87 = load i32, i32* %4, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %45

89:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %42
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_9__* @drmModeGetEncoder(i32, i32) #1

declare dso_local i32 @drmModeFreeEncoder(%struct.TYPE_9__*) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
