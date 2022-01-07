; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c__glfwPlatformPollEvents.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c__glfwPlatformPollEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformPollEvents() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %1, align 8
  br label %2

2:                                                ; preds = %6, %0
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0, i32 0), align 4
  %4 = call %struct.TYPE_7__* @dequeueEvent(i32 %3)
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %1, align 8
  %5 = icmp ne %struct.TYPE_7__* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @handleEvent(i32 %9, i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0, i32 0), align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %16 = call i32 @deleteNode(i32 %14, %struct.TYPE_7__* %15)
  br label %2

17:                                               ; preds = %2
  ret void
}

declare dso_local %struct.TYPE_7__* @dequeueEvent(i32) #1

declare dso_local i32 @handleEvent(i32, i32) #1

declare dso_local i32 @deleteNode(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
