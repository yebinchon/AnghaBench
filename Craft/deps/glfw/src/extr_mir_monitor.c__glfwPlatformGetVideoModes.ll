; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_mir_monitor.c__glfwPlatformGetVideoModes.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_mir_monitor.c__glfwPlatformGetVideoModes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @_glfwPlatformGetVideoModes(%struct.TYPE_19__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0), align 4
  %10 = call %struct.TYPE_21__* @mir_connection_create_display_config(i32 %9)
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %7, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %111, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %114

17:                                               ; preds = %11
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i64 %22
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %8, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %111

33:                                               ; preds = %17
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_22__* @calloc(i32 %36, i32 12)
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %6, align 8
  %38 = load i32*, i32** %4, align 8
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %106, %33
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %110

46:                                               ; preds = %39
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 2
  store i32 %55, i32* %61, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 1
  store i32 %70, i32* %76, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  store i32 %85, i32* %91, align 4
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i64 %95
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @FillInRGBBitsFromPixelFormat(%struct.TYPE_22__* %96, i32 %104)
  br label %106

106:                                              ; preds = %46
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %39

110:                                              ; preds = %39
  br label %114

111:                                              ; preds = %32
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %11

114:                                              ; preds = %110, %11
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %116 = call i32 @mir_display_config_destroy(%struct.TYPE_21__* %115)
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  ret %struct.TYPE_22__* %117
}

declare dso_local %struct.TYPE_21__* @mir_connection_create_display_config(i32) #1

declare dso_local %struct.TYPE_22__* @calloc(i32, i32) #1

declare dso_local i32 @FillInRGBBitsFromPixelFormat(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @mir_display_config_destroy(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
