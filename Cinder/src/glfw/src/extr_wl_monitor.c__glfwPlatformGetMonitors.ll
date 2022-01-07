; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_monitor.c__glfwPlatformGetMonitors.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_monitor.c__glfwPlatformGetMonitors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__** @_glfwPlatformGetMonitors(i32* %0) #0 {
  %2 = alloca %struct.TYPE_9__**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %56

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  %15 = call i8* @calloc(i32 %14, i32 8)
  %16 = bitcast i8* %15 to %struct.TYPE_9__**
  store %struct.TYPE_9__** %16, %struct.TYPE_9__*** %4, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %49, %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1), align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %22, i64 %24
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %8, align 8
  %27 = call i8* @calloc(i32 1, i32 8)
  %28 = bitcast i8* %27 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %5, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = call i32 @_glfwPlatformGetVideoModes(%struct.TYPE_9__* %29, i32* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = load %struct.TYPE_9__**, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1), align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %37, i64 %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = bitcast %struct.TYPE_9__* %36 to i8*
  %43 = bitcast %struct.TYPE_9__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 8, i1 false)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %45, i64 %47
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %48, align 8
  br label %49

49:                                               ; preds = %21
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %17

52:                                               ; preds = %17
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %3, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__** %55, %struct.TYPE_9__*** %2, align 8
  br label %58

56:                                               ; preds = %12
  %57 = load i32*, i32** %3, align 8
  store i32 0, i32* %57, align 4
  store %struct.TYPE_9__** null, %struct.TYPE_9__*** %2, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  ret %struct.TYPE_9__** %59
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @_glfwPlatformGetVideoModes(%struct.TYPE_9__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
