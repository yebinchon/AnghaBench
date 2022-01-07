; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_update_override.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_update_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkloop = type { i32 }

@KQWL_UTQ_UPDATE_WAKEUP_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqworkloop*, i32)* @kqworkloop_update_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqworkloop_update_override(%struct.kqworkloop* %0, i32 %1) #0 {
  %3 = alloca %struct.kqworkloop*, align 8
  %4 = alloca i32, align 4
  store %struct.kqworkloop* %0, %struct.kqworkloop** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %6 = call i32 @kq_req_lock(%struct.kqworkloop* %5)
  %7 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %8 = load i32, i32* @KQWL_UTQ_UPDATE_WAKEUP_OVERRIDE, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @kqworkloop_update_threads_qos(%struct.kqworkloop* %7, i32 %8, i32 %9)
  %11 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %12 = call i32 @kq_req_unlock(%struct.kqworkloop* %11)
  ret void
}

declare dso_local i32 @kq_req_lock(%struct.kqworkloop*) #1

declare dso_local i32 @kqworkloop_update_threads_qos(%struct.kqworkloop*, i32, i32) #1

declare dso_local i32 @kq_req_unlock(%struct.kqworkloop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
