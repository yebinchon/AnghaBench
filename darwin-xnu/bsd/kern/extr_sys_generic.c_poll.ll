; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_poll.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.poll_args = type { i32 }
%struct.poll_nocancel_args = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poll(%struct.proc* %0, %struct.poll_args* %1, i32* %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.poll_args*, align 8
  %6 = alloca i32*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.poll_args* %1, %struct.poll_args** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = call i32 @__pthread_testcancel(i32 1)
  %8 = load %struct.proc*, %struct.proc** %4, align 8
  %9 = load %struct.poll_args*, %struct.poll_args** %5, align 8
  %10 = bitcast %struct.poll_args* %9 to %struct.poll_nocancel_args*
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @poll_nocancel(%struct.proc* %8, %struct.poll_nocancel_args* %10, i32* %11)
  ret i32 %12
}

declare dso_local i32 @__pthread_testcancel(i32) #1

declare dso_local i32 @poll_nocancel(%struct.proc*, %struct.poll_nocancel_args*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
