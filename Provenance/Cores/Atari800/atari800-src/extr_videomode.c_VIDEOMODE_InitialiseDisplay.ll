; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_VIDEOMODE_InitialiseDisplay.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_VIDEOMODE_InitialiseDisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@resolutions_size = common dso_local global i64 0, align 8
@resolutions = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"Fatal error: System reports no display resolutions available\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CompareResolutions = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Fatal error: System reports no resolution higher than minimal %ux%u available\00", align 1
@display_modes = common dso_local global %struct.TYPE_8__* null, align 8
@current_resolution = common dso_local global i64 0, align 8
@init_fs_resolution = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"Requested resolution %ux%u is too big, using %ux%u instead.\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"Requested resolution %ux%u is not available, using %ux%u instead.\00", align 1
@VIDEOMODE_host_aspect_ratio_w = common dso_local global double 0.000000e+00, align 8
@VIDEOMODE_host_aspect_ratio_h = common dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Fatal error: Cannot initialise video\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VIDEOMODE_InitialiseDisplay() #0 {
  %1 = alloca i32, align 4
  %2 = call %struct.TYPE_6__* @PLATFORM_AvailableResolutions(i64* @resolutions_size)
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** @resolutions, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @resolutions, align 8
  %4 = icmp eq %struct.TYPE_6__* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %1, align 4
  br label %120

8:                                                ; preds = %0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @resolutions, align 8
  %10 = load i64, i64* @resolutions_size, align 8
  %11 = call i32 @qsort(%struct.TYPE_6__* %9, i64 %10, i32 4, i32* @CompareResolutions)
  %12 = call i32 (...) @RemoveDuplicateResolutions()
  %13 = load i64, i64* @resolutions_size, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @display_modes, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @display_modes, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %23)
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %1, align 4
  br label %120

26:                                               ; preds = %8
  store i64 0, i64* @current_resolution, align 8
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i64, i64* @current_resolution, align 8
  %29 = load i64, i64* @resolutions_size, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @resolutions, align 8
  %33 = load i64, i64* @current_resolution, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @init_fs_resolution, i32 0, i32 0), align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @resolutions, align 8
  %41 = load i64, i64* @current_resolution, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @init_fs_resolution, i32 0, i32 1), align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %52

48:                                               ; preds = %39, %31
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* @current_resolution, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* @current_resolution, align 8
  br label %27

52:                                               ; preds = %47, %27
  %53 = load i64, i64* @current_resolution, align 8
  %54 = load i64, i64* @resolutions_size, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load i64, i64* @resolutions_size, align 8
  %58 = sub i64 %57, 1
  store i64 %58, i64* @current_resolution, align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @init_fs_resolution, i32 0, i32 0), align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @init_fs_resolution, i32 0, i32 1), align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @resolutions, align 8
  %62 = load i64, i64* @current_resolution, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @resolutions, align 8
  %67 = load i64, i64* @current_resolution, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %59, i64 %60, i64 %65, i64 %70)
  br label %103

72:                                               ; preds = %52
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @resolutions, align 8
  %74 = load i64, i64* @current_resolution, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @init_fs_resolution, i32 0, i32 0), align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @resolutions, align 8
  %82 = load i64, i64* @current_resolution, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @init_fs_resolution, i32 0, i32 1), align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %80, %72
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @init_fs_resolution, i32 0, i32 0), align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @init_fs_resolution, i32 0, i32 1), align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @resolutions, align 8
  %92 = load i64, i64* @current_resolution, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @resolutions, align 8
  %97 = load i64, i64* @current_resolution, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i64 %89, i64 %90, i64 %95, i64 %100)
  br label %102

102:                                              ; preds = %88, %80
  br label %103

103:                                              ; preds = %102, %56
  %104 = load double, double* @VIDEOMODE_host_aspect_ratio_w, align 8
  %105 = fcmp oeq double %104, 0.000000e+00
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load double, double* @VIDEOMODE_host_aspect_ratio_h, align 8
  %108 = fcmp oeq double %107, 0.000000e+00
  br i1 %108, label %109, label %111

109:                                              ; preds = %106, %103
  %110 = call i32 @AutodetectHostAspect(double* @VIDEOMODE_host_aspect_ratio_w, double* @VIDEOMODE_host_aspect_ratio_h)
  br label %111

111:                                              ; preds = %109, %106
  %112 = call i32 (...) @UpdateTvSystemSettings()
  %113 = call i32 (...) @VIDEOMODE_Update()
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %1, align 4
  br label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @TRUE, align 4
  store i32 %119, i32* %1, align 4
  br label %120

120:                                              ; preds = %118, %115, %15, %5
  %121 = load i32, i32* %1, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_6__* @PLATFORM_AvailableResolutions(i64*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i32 @qsort(%struct.TYPE_6__*, i64, i32, i32*) #1

declare dso_local i32 @RemoveDuplicateResolutions(...) #1

declare dso_local i32 @AutodetectHostAspect(double*, double*) #1

declare dso_local i32 @UpdateTvSystemSettings(...) #1

declare dso_local i32 @VIDEOMODE_Update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
