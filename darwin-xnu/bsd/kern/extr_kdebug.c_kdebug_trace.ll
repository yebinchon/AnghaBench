; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdebug_trace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdebug_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.kdebug_trace_args = type { i32, i32, i32, i32, i32 }
%struct.kdebug_trace64_args = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdebug_trace(%struct.proc* %0, %struct.kdebug_trace_args* %1, i32* %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.kdebug_trace_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kdebug_trace64_args, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.kdebug_trace_args* %1, %struct.kdebug_trace_args** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.kdebug_trace_args*, %struct.kdebug_trace_args** %5, align 8
  %9 = getelementptr inbounds %struct.kdebug_trace_args, %struct.kdebug_trace_args* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.kdebug_trace64_args, %struct.kdebug_trace64_args* %7, i32 0, i32 4
  store i32 %10, i32* %11, align 4
  %12 = load %struct.kdebug_trace_args*, %struct.kdebug_trace_args** %5, align 8
  %13 = getelementptr inbounds %struct.kdebug_trace_args, %struct.kdebug_trace_args* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.kdebug_trace64_args, %struct.kdebug_trace64_args* %7, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load %struct.kdebug_trace_args*, %struct.kdebug_trace_args** %5, align 8
  %17 = getelementptr inbounds %struct.kdebug_trace_args, %struct.kdebug_trace_args* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.kdebug_trace64_args, %struct.kdebug_trace64_args* %7, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.kdebug_trace_args*, %struct.kdebug_trace_args** %5, align 8
  %21 = getelementptr inbounds %struct.kdebug_trace_args, %struct.kdebug_trace_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.kdebug_trace64_args, %struct.kdebug_trace64_args* %7, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.kdebug_trace_args*, %struct.kdebug_trace_args** %5, align 8
  %25 = getelementptr inbounds %struct.kdebug_trace_args, %struct.kdebug_trace_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.kdebug_trace64_args, %struct.kdebug_trace64_args* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.proc*, %struct.proc** %4, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @kdebug_trace64(%struct.proc* %28, %struct.kdebug_trace64_args* %7, i32* %29)
  ret i32 %30
}

declare dso_local i32 @kdebug_trace64(%struct.proc*, %struct.kdebug_trace64_args*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
