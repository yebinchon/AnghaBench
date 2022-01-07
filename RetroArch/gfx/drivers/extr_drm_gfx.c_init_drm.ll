; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_init_drm.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_init_drm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_13__*, i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32*, i64, i32*, i64 }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.modeset_buf = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"/dev/dri/card0\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@drm = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"DRM: could not open drm device\0A\00", align 1
@DRM_CLIENT_CAP_UNIVERSAL_PLANES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"DRM: can't set UNIVERSAL PLANES cap.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"DRM: UNIVERSAL PLANES cap set\0A\00", align 1
@DRM_CLIENT_CAP_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"DRM: can't set ATOMIC caps: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"DRM: ATOMIC caps set\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"DRM: drmModeGetResources failed\0A\00", align 1
@DRM_MODE_CONNECTED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"DRM: no connected connector found\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"DRM: no encoder found.\0A\00", align 1
@g_drm_mode = common dso_local global %struct.TYPE_13__* null, align 8
@DRM_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"DRM: can't create dumb fb\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"DRM: failed to set mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_drm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_drm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.modeset_buf, align 4
  %6 = load i32, i32* @O_RDWR, align 4
  %7 = call i64 @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %150

12:                                               ; preds = %0
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 8
  %14 = load i32, i32* @DRM_CLIENT_CAP_UNIVERSAL_PLANES, align 4
  %15 = call i32 @drmSetClientCap(i64 %13, i32 %14, i32 1)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %22

20:                                               ; preds = %12
  %21 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 8
  %24 = load i32, i32* @DRM_CLIENT_CAP_ATOMIC, align 4
  %25 = call i32 @drmSetClientCap(i64 %23, i32 %24, i32 1)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  br label %34

32:                                               ; preds = %22
  %33 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 8
  %36 = call %struct.TYPE_14__* @drmModeGetResources(i64 %35)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 6), align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 6), align 8
  %38 = icmp ne %struct.TYPE_14__* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %150

41:                                               ; preds = %34
  store i64 0, i64* %4, align 8
  br label %42

42:                                               ; preds = %66, %41
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 6), align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 6), align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_12__* @drmModeGetConnector(i64 %49, i32 %55)
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %3, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DRM_MODE_CONNECTED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %69

63:                                               ; preds = %48
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = call i32 @drmModeFreeConnector(%struct.TYPE_12__* %64)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %4, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %4, align 8
  br label %42

69:                                               ; preds = %62, %42
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = icmp ne %struct.TYPE_12__* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %150

74:                                               ; preds = %69
  store i64 0, i64* %4, align 8
  br label %75

75:                                               ; preds = %101, %74
  %76 = load i64, i64* %4, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 6), align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %75
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 6), align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %4, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.TYPE_15__* @drmModeGetEncoder(i64 %82, i32 %88)
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 5), align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 5), align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %81
  br label %104

98:                                               ; preds = %81
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 5), align 8
  %100 = call i32 @drmModeFreeEncoder(%struct.TYPE_15__* %99)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 5), align 8
  br label %101

101:                                              ; preds = %98
  %102 = load i64, i64* %4, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %4, align 8
  br label %75

104:                                              ; preds = %97, %75
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 5), align 8
  %106 = icmp ne %struct.TYPE_15__* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %150

109:                                              ; preds = %104
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 5), align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 3), align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 2), align 8
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 5), align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call %struct.TYPE_16__* @drmModeGetCrtc(i64 %116, i32 %119)
  store %struct.TYPE_16__* %120, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 4), align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 4), align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  store %struct.TYPE_13__* %122, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 1), align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 1), align 8
  store %struct.TYPE_13__* %123, %struct.TYPE_13__** @g_drm_mode, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 1), align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.modeset_buf, %struct.modeset_buf* %5, i32 0, i32 2
  store i32 %126, i32* %127, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 1), align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.modeset_buf, %struct.modeset_buf* %5, i32 0, i32 1
  store i32 %130, i32* %131, align 4
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 8
  %133 = load i32, i32* @DRM_FORMAT_XRGB8888, align 4
  %134 = call i32 @modeset_create_dumbfb(i64 %132, %struct.modeset_buf* %5, i32 4, i32 %133)
  store i32 %134, i32* %2, align 4
  %135 = load i32, i32* %2, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %109
  %138 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %109
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 8
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 3), align 4
  %142 = getelementptr inbounds %struct.modeset_buf, %struct.modeset_buf* %5, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 1), align 8
  %145 = call i64 @drmModeSetCrtc(i64 %140, i32 %141, i32 %143, i32 0, i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 2), i32 1, %struct.TYPE_13__* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %150

149:                                              ; preds = %139
  store i32 1, i32* %1, align 4
  br label %150

150:                                              ; preds = %149, %147, %107, %72, %39, %10
  %151 = load i32, i32* %1, align 4
  ret i32 %151
}

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i32 @drmSetClientCap(i64, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.TYPE_14__* @drmModeGetResources(i64) #1

declare dso_local %struct.TYPE_12__* @drmModeGetConnector(i64, i32) #1

declare dso_local i32 @drmModeFreeConnector(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_15__* @drmModeGetEncoder(i64, i32) #1

declare dso_local i32 @drmModeFreeEncoder(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @drmModeGetCrtc(i64, i32) #1

declare dso_local i32 @modeset_create_dumbfb(i64, %struct.modeset_buf*, i32, i32) #1

declare dso_local i64 @drmModeSetCrtc(i64, i32, i32, i32, i32, i32*, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
