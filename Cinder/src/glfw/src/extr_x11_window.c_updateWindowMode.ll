; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c_updateWindowMode.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c_updateWindowMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64, i32, i64, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@_NET_WM_STATE_ADD = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@CWOverrideRedirect = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@XA_CARDINAL = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4
@_NET_WM_STATE_REMOVE = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@GLFW_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @updateWindowMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateWindowMode(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_19__, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %9 = icmp ne %struct.TYPE_14__* %8, null
  br i1 %9, label %10, label %81

10:                                               ; preds = %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %10
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 4), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 4), align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sendEventToWM(%struct.TYPE_18__* %17, i64 %18, i32 %24, i32 %30, i32 %36, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %16, %13, %10
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 3), align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 3), align 8
  %53 = load i32, i32* @_NET_WM_STATE_ADD, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 8
  %55 = call i32 @sendEventToWM(%struct.TYPE_18__* %51, i64 %52, i32 %53, i32 %54, i32 0, i32 1, i32 0)
  br label %70

56:                                               ; preds = %47, %44
  %57 = load i32, i32* @True, align 4
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 2), align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CWOverrideRedirect, align 4
  %65 = call i32 @XChangeWindowAttributes(i32 %59, i32 %63, i32 %64, %struct.TYPE_19__* %3)
  %66 = load i32, i32* @GLFW_TRUE, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %56, %50
  store i64 1, i64* %4, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 2), align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 1), align 8
  %77 = load i32, i32* @XA_CARDINAL, align 4
  %78 = load i32, i32* @PropModeReplace, align 4
  %79 = bitcast i64* %4 to i8*
  %80 = call i32 @XChangeProperty(i32 %71, i32 %75, i64 %76, i32 %77, i32 32, i32 %78, i8* %79, i32 1)
  br label %129

81:                                               ; preds = %1
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 4), align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 2), align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 4), align 8
  %94 = call i32 @XDeleteProperty(i32 %88, i32 %92, i64 %93)
  br label %95

95:                                               ; preds = %87, %84, %81
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 3), align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 3), align 8
  %104 = load i32, i32* @_NET_WM_STATE_REMOVE, align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 8
  %106 = call i32 @sendEventToWM(%struct.TYPE_18__* %102, i64 %103, i32 %104, i32 %105, i32 0, i32 1, i32 0)
  br label %121

107:                                              ; preds = %98, %95
  %108 = load i32, i32* @False, align 4
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 2), align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CWOverrideRedirect, align 4
  %116 = call i32 @XChangeWindowAttributes(i32 %110, i32 %114, i32 %115, %struct.TYPE_19__* %5)
  %117 = load i32, i32* @GLFW_FALSE, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  br label %121

121:                                              ; preds = %107, %101
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 2), align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 1), align 8
  %128 = call i32 @XDeleteProperty(i32 %122, i32 %126, i64 %127)
  br label %129

129:                                              ; preds = %121, %70
  ret void
}

declare dso_local i32 @sendEventToWM(%struct.TYPE_18__*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XChangeWindowAttributes(i32, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @XChangeProperty(i32, i32, i64, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @XDeleteProperty(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
