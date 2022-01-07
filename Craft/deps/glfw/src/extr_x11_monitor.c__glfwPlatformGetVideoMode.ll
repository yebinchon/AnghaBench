; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_monitor.c__glfwPlatformGetVideoMode.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_monitor.c__glfwPlatformGetVideoMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformGetVideoMode(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3, i32 1), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 2), align 8
  %16 = call i32* @XRRGetScreenResourcesCurrent(i32 %14, i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_19__* @XRRGetCrtcInfo(i32 %17, i32* %18, i32 %22)
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %6, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @getModeInfo(i32* %25, i32 %28)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  call void @vidmodeFromModeInfo(%struct.TYPE_20__* sret %7, i32 %29, %struct.TYPE_19__* %30)
  %31 = bitcast %struct.TYPE_20__* %24 to i8*
  %32 = bitcast %struct.TYPE_20__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %34 = call i32 @XRRFreeCrtcInfo(%struct.TYPE_19__* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @XRRFreeScreenResources(i32* %35)
  br label %60

37:                                               ; preds = %10, %2
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %40 = call i32 @DisplayWidth(i32 %38, i32 %39)
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %45 = call i32 @DisplayHeight(i32 %43, i32 %44)
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %52 = call i32 @DefaultDepth(i32 %50, i32 %51)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = call i32 @_glfwSplitBPP(i32 %52, i32* %54, i32* %56, i32* %58)
  br label %60

60:                                               ; preds = %37, %13
  ret void
}

declare dso_local i32* @XRRGetScreenResourcesCurrent(i32, i32) #1

declare dso_local %struct.TYPE_19__* @XRRGetCrtcInfo(i32, i32*, i32) #1

declare dso_local void @vidmodeFromModeInfo(%struct.TYPE_20__* sret, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @getModeInfo(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @XRRFreeCrtcInfo(%struct.TYPE_19__*) #1

declare dso_local i32 @XRRFreeScreenResources(i32*) #1

declare dso_local i32 @DisplayWidth(i32, i32) #1

declare dso_local i32 @DisplayHeight(i32, i32) #1

declare dso_local i32 @_glfwSplitBPP(i32, i32*, i32*, i32*) #1

declare dso_local i32 @DefaultDepth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
