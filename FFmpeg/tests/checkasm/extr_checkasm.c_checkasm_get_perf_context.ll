; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_checkasm.c_checkasm_get_perf_context.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_checkasm.c_checkasm_get_perf_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@state = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @checkasm_get_perf_context() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @state, i32 0, i32 1), align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %1, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %5 = call i32 @memset(%struct.TYPE_7__* %4, i32 0, i32 4)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @state, i32 0, i32 0), align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %9
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
