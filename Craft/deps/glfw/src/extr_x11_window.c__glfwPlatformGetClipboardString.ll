; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformGetClipboardString.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformGetClipboardString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@XA_STRING = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4
@SelectionNotify = common dso_local global i32 0, align 4
@None = common dso_local global i64 0, align 8
@GLFW_FORMAT_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"X11: Failed to convert clipboard to string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_glfwPlatformGetClipboardString(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 5), align 8
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 4), align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @XA_STRING, align 4
  store i32 %14, i32* %13, align 4
  store i64 3, i64* %6, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3), align 8
  %17 = call i32 @XGetSelectionOwner(i32 %15, i32 %16)
  %18 = call i64 @findWindowByHandle(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  store i8* %21, i8** %2, align 8
  br label %97

22:                                               ; preds = %1
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %24 = call i32 @free(i8* %23)
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  store i64 0, i64* %4, align 8
  br label %25

25:                                               ; preds = %86, %22
  %26 = load i64, i64* %4, align 8
  %27 = icmp ult i64 %26, 3
  br i1 %27, label %28, label %89

28:                                               ; preds = %25
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3), align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 2), align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CurrentTime, align 4
  %40 = call i32 @XConvertSelection(i32 %29, i32 %30, i32 %33, i32 %34, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %47, %28
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 8
  %43 = load i32, i32* @SelectionNotify, align 4
  %44 = call i32 @XCheckTypedEvent(i32 %42, i32 %43, %struct.TYPE_13__* %8)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @selectDisplayConnection(i32* null)
  br label %41

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @None, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %86

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @_glfwGetWindowProperty(i32 %59, i64 %62, i32 %65, i8** %7)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i8*, i8** %7, align 8
  %70 = call i8* @strdup(i8* %69)
  store i8* %70, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  br label %71

71:                                               ; preds = %68, %56
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @XFree(i8* %72)
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @XDeleteProperty(i32 %74, i32 %77, i64 %80)
  %82 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %89

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %55
  %87 = load i64, i64* %4, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %4, align 8
  br label %25

89:                                               ; preds = %84, %25
  %90 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @GLFW_FORMAT_UNAVAILABLE, align 4
  %94 = call i32 @_glfwInputError(i32 %93, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  store i8* %96, i8** %2, align 8
  br label %97

97:                                               ; preds = %95, %20
  %98 = load i8*, i8** %2, align 8
  ret i8* %98
}

declare dso_local i64 @findWindowByHandle(i32) #1

declare dso_local i32 @XGetSelectionOwner(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @XConvertSelection(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XCheckTypedEvent(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @selectDisplayConnection(i32*) #1

declare dso_local i64 @_glfwGetWindowProperty(i32, i64, i32, i8**) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @XFree(i8*) #1

declare dso_local i32 @XDeleteProperty(i32, i32, i64) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
