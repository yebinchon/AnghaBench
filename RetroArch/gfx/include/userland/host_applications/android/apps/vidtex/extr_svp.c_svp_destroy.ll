; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_svp.c_svp_destroy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_svp.c_svp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i32*, i32*, i32* }

@SVP_CREATED_WD_TIMER = common dso_local global i32 0, align 4
@SVP_CREATED_TIMER = common dso_local global i32 0, align 4
@SVP_CREATED_MUTEX = common dso_local global i32 0, align 4
@SVP_CREATED_SEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svp_destroy(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca [3 x i32*], align 16
  %4 = alloca i32**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %132

7:                                                ; preds = %1
  %8 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 10
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %8, align 8
  %12 = getelementptr inbounds i32*, i32** %8, i64 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 9
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds i32*, i32** %12, i64 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %16, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = call i32 @svp_stop(%struct.TYPE_5__* %20)
  %22 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 0
  store i32** %22, i32*** %4, align 8
  br label %23

23:                                               ; preds = %35, %7
  %24 = load i32**, i32*** %4, align 8
  %25 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 0
  %26 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 0
  %27 = call i32 @vcos_countof(i32** %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %25, i64 %28
  %30 = icmp ult i32** %24, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load i32**, i32*** %4, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @mmal_component_disable(i32* %33)
  br label %35

35:                                               ; preds = %31
  %36 = load i32**, i32*** %4, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i32 1
  store i32** %37, i32*** %4, align 8
  br label %23

38:                                               ; preds = %23
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @mmal_connection_destroy(i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 0
  store i32** %49, i32*** %4, align 8
  br label %50

50:                                               ; preds = %62, %48
  %51 = load i32**, i32*** %4, align 8
  %52 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 0
  %53 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 0
  %54 = call i32 @vcos_countof(i32** %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %52, i64 %55
  %57 = icmp ult i32** %51, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i32**, i32*** %4, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @mmal_component_destroy(i32* %60)
  br label %62

62:                                               ; preds = %58
  %63 = load i32**, i32*** %4, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i32 1
  store i32** %64, i32*** %4, align 8
  br label %50

65:                                               ; preds = %50
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @mmal_pool_destroy(i64 %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @mmal_queue_destroy(i64 %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SVP_CREATED_WD_TIMER, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = call i32 @vcos_timer_delete(i32* %94)
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @SVP_CREATED_TIMER, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = call i32 @vcos_timer_delete(i32* %105)
  br label %107

107:                                              ; preds = %103, %96
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @SVP_CREATED_MUTEX, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = call i32 @vcos_mutex_delete(i32* %116)
  br label %118

118:                                              ; preds = %114, %107
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SVP_CREATED_SEM, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = call i32 @vcos_semaphore_delete(i32* %127)
  br label %129

129:                                              ; preds = %125, %118
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %131 = call i32 @vcos_free(%struct.TYPE_5__* %130)
  br label %132

132:                                              ; preds = %129, %1
  ret void
}

declare dso_local i32 @svp_stop(%struct.TYPE_5__*) #1

declare dso_local i32 @vcos_countof(i32**) #1

declare dso_local i32 @mmal_component_disable(i32*) #1

declare dso_local i32 @mmal_connection_destroy(i64) #1

declare dso_local i32 @mmal_component_destroy(i32*) #1

declare dso_local i32 @mmal_pool_destroy(i64) #1

declare dso_local i32 @mmal_queue_destroy(i64) #1

declare dso_local i32 @vcos_timer_delete(i32*) #1

declare dso_local i32 @vcos_mutex_delete(i32*) #1

declare dso_local i32 @vcos_semaphore_delete(i32*) #1

declare dso_local i32 @vcos_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
