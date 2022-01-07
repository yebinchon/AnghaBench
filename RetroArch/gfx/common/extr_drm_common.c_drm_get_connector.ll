; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_drm_common.c_drm_get_connector.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_drm_common.c_drm_get_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"[DRM]: Found %d connectors.\0A\00", align 1
@g_drm_resources = common dso_local global %struct.TYPE_10__* null, align 8
@DRM_MODE_CONNECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"[DRM]: Connector %d connected: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"[DRM]: Connector %d has %d modes.\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"[DRM]: Connector %d assigned to monitor index: #%u.\0A\00", align 1
@g_drm_connector = common dso_local global %struct.TYPE_9__* null, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"[DRM]: Couldn't get device connector.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_get_connector(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @MAX(i32 %13, i32 1)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_drm_resources, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %72, %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_drm_resources, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_drm_resources, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_9__* @drmModeGetConnector(i32 %26, i32 %33)
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %9, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %71

37:                                               ; preds = %25
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DRM_MODE_CONNECTED, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %49 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %44, i8* %48)
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %37
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ugt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %57, %37
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = call i32 @drmModeFreeConnector(%struct.TYPE_9__* %69)
  br label %71

71:                                               ; preds = %68, %25
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %19

75:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %117, %75
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_drm_resources, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %76
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_drm_resources, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.TYPE_9__* @drmModeGetConnector(i32 %83, i32 %90)
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** @g_drm_connector, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_connector, align 8
  %93 = icmp ne %struct.TYPE_9__* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %82
  br label %117

95:                                               ; preds = %82
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_connector, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DRM_MODE_CONNECTED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %95
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_connector, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ugt i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32, i32* %7, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %120

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %101, %95
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_connector, align 8
  %116 = call i32 @drmModeFreeConnector(%struct.TYPE_9__* %115)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** @g_drm_connector, align 8
  br label %117

117:                                              ; preds = %114, %94
  %118 = load i32, i32* %6, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %76

120:                                              ; preds = %112, %76
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_drm_connector, align 8
  %122 = icmp ne %struct.TYPE_9__* %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %126

125:                                              ; preds = %120
  store i32 1, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %123
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, ...) #1

declare dso_local %struct.TYPE_9__* @drmModeGetConnector(i32, i32) #1

declare dso_local i32 @drmModeFreeConnector(%struct.TYPE_9__*) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
