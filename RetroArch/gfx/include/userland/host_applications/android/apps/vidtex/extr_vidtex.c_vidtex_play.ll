; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_vidtex.c_vidtex_play.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_vidtex.c_vidtex_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, i64, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }

@vidtex_video_frame_cb = common dso_local global i32 0, align 4
@vidtex_stop_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"video frames decoded: %6u\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"EGL buffer swaps:     %6u\00", align 1
@SVP_STOP_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"vidtex exiting on error\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"vidtex completed with no EGL buffer swaps\00", align 1
@VT_MAX_FRAME_DISPARITY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [63 x i8] c"vidtex completed with %u EGL buffer swaps, but %u video frames\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)* @vidtex_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidtex_play(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__, align 4
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  store i32 -1, i32* %10, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  br label %23

23:                                               ; preds = %19, %18
  %24 = phi i8* [ null, %18 ], [ %22, %19 ]
  store i8* %24, i8** %5, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %31, align 8
  %32 = load i32, i32* @vidtex_video_frame_cb, align 4
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @vidtex_stop_cb, align 4
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32* @svp_create(i8* %40, %struct.TYPE_18__* %6, %struct.TYPE_17__* %8)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %129

44:                                               ; preds = %23
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @svp_start(i32* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %126

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %73, %50
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = call i32 @vidtex_set_quit(%struct.TYPE_14__* %52, i32 0)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 4
  %59 = call i32 @vcos_semaphore_wait(i32* %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @vidtex_draw(%struct.TYPE_14__* %65, i64 %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = call i32 @vcos_semaphore_post(i32* %71)
  br label %73

73:                                               ; preds = %64, %56
  br label %51

74:                                               ; preds = %51
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = call i32 @vcos_semaphore_post(i32* %76)
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @svp_get_stats(i32* %78, %struct.TYPE_16__* %9)
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @vcos_log_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @vcos_log_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SVP_STOP_ERROR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %74
  %94 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %125

95:                                               ; preds = %74
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %124

102:                                              ; preds = %95
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = sub nsw i32 %106, %109
  %111 = call i64 @abs(i32 %110)
  %112 = load i64, i64* @VT_MAX_FRAME_DISPARITY, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %102
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i64 %117, i32 %120)
  br label %123

122:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %122, %114
  br label %124

124:                                              ; preds = %123, %100
  br label %125

125:                                              ; preds = %124, %93
  br label %126

126:                                              ; preds = %125, %44
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @svp_destroy(i32* %127)
  br label %129

129:                                              ; preds = %126, %23
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %131 = call i32 @vidtex_flush_gl(%struct.TYPE_14__* %130)
  %132 = load i32, i32* %10, align 4
  ret i32 %132
}

declare dso_local i32* @svp_create(i8*, %struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i64 @svp_start(i32*) #1

declare dso_local i32 @vidtex_set_quit(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @vcos_semaphore_wait(i32*) #1

declare dso_local i32 @vidtex_draw(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @vcos_semaphore_post(i32*) #1

declare dso_local i32 @svp_get_stats(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @vcos_log_info(i8*, i64) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @svp_destroy(i32*) #1

declare dso_local i32 @vidtex_flush_gl(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
