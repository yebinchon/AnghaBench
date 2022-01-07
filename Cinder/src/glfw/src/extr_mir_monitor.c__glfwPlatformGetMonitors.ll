; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_monitor.c__glfwPlatformGetMonitors.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_monitor.c__glfwPlatformGetMonitors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i32, i32, i32, i32, i32, i64, i64 }

@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__** @_glfwPlatformGetMonitors(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__**, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_17__** null, %struct.TYPE_17__*** %5, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 4
  %9 = call %struct.TYPE_19__* @mir_connection_create_display_config(i32 %8)
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %6, align 8
  %10 = load i32*, i32** %2, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %125, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %128

17:                                               ; preds = %11
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i64 %22
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %7, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %124

28:                                               ; preds = %17
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %124

33:                                               ; preds = %28
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %124

38:                                               ; preds = %33
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %124

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  %49 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 8, %51
  %53 = trunc i64 %52 to i32
  %54 = call %struct.TYPE_17__** @realloc(%struct.TYPE_17__** %49, i32 %53)
  store %struct.TYPE_17__** %54, %struct.TYPE_17__*** %5, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.TYPE_17__* @_glfwAllocMonitor(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %62, i64 %64
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %65, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %69, i64 %71
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 3
  store i32 %68, i32* %75, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %79, i64 %81
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  store i32 %78, i32* %85, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %89, i64 %91
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  store i32 %88, i32* %95, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %99, i64 %101
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i64 %98, i64* %105, align 8
  %106 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %106, i64 %108
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %111, i64 %113
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = call i32 @_glfwPlatformGetVideoModes(%struct.TYPE_17__* %110, i32* %116)
  %118 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %118, i64 %120
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  store i32 %117, i32* %123, align 4
  br label %124

124:                                              ; preds = %46, %38, %33, %28, %17
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %3, align 4
  br label %11

128:                                              ; preds = %11
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %130 = call i32 @mir_display_config_destroy(%struct.TYPE_19__* %129)
  %131 = load i32, i32* %4, align 4
  %132 = load i32*, i32** %2, align 8
  store i32 %131, i32* %132, align 4
  %133 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  ret %struct.TYPE_17__** %133
}

declare dso_local %struct.TYPE_19__* @mir_connection_create_display_config(i32) #1

declare dso_local %struct.TYPE_17__** @realloc(%struct.TYPE_17__**, i32) #1

declare dso_local %struct.TYPE_17__* @_glfwAllocMonitor(i8*, i32, i32) #1

declare dso_local i32 @_glfwPlatformGetVideoModes(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @mir_display_config_destroy(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
