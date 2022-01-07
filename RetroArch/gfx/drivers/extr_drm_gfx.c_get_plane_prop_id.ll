; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_get_plane_prop_id.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_get_plane_prop_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_12__ = type { i64, i32 }

@drm = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@DRM_MODE_OBJECT_PLANE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"DRM: plane %d fb property ID with name %s not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*)* @get_plane_prop_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_plane_prop_id(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_12__**, align 8
  %12 = alloca [5 x i8], align 1
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 4
  %14 = call %struct.TYPE_13__* @drmModeGetPlaneResources(i32 %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %8, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %110, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %113

21:                                               ; preds = %15
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_14__* @drmModeGetPlane(i32 %22, i32 %29)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %9, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %110

37:                                               ; preds = %21
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @DRM_MODE_OBJECT_PLANE, align 4
  %43 = call %struct.TYPE_15__* @drmModeObjectGetProperties(i32 %38, i64 %41, i32 %42)
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %10, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = call %struct.TYPE_12__** @malloc(i32 %49)
  store %struct.TYPE_12__** %50, %struct.TYPE_12__*** %11, align 8
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %71, %37
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @drm, i32 0, i32 0), align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_12__* @drmModeGetProperty(i32 %58, i32 %65)
  %67 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %67, i64 %69
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %70, align 8
  br label %71

71:                                               ; preds = %57
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %51

74:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %101, %74
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %75
  %82 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %82, i64 %84
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = call i64 @string_is_equal(i32 %88, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %81
  %93 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %93, i64 %95
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %3, align 8
  br label %114

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %75

104:                                              ; preds = %75
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %107, i8* %108)
  br label %110

110:                                              ; preds = %104, %36
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %15

113:                                              ; preds = %15
  store i64 0, i64* %3, align 8
  br label %114

114:                                              ; preds = %113, %92
  %115 = load i64, i64* %3, align 8
  ret i64 %115
}

declare dso_local %struct.TYPE_13__* @drmModeGetPlaneResources(i32) #1

declare dso_local %struct.TYPE_14__* @drmModeGetPlane(i32, i32) #1

declare dso_local %struct.TYPE_15__* @drmModeObjectGetProperties(i32, i64, i32) #1

declare dso_local %struct.TYPE_12__** @malloc(i32) #1

declare dso_local %struct.TYPE_12__* @drmModeGetProperty(i32, i32) #1

declare dso_local i64 @string_is_equal(i32, i8*) #1

declare dso_local i32 @RARCH_ERR(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
