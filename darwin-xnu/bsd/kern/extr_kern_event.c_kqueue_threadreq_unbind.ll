; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_threadreq_unbind.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_threadreq_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.kqrequest = type { i32 }

@KQR_WORKLOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kqueue_threadreq_unbind(%struct.proc* %0, %struct.kqrequest* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.kqrequest*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.kqrequest* %1, %struct.kqrequest** %4, align 8
  %5 = load %struct.kqrequest*, %struct.kqrequest** %4, align 8
  %6 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @KQR_WORKLOOP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.proc*, %struct.proc** %3, align 8
  %13 = load %struct.kqrequest*, %struct.kqrequest** %4, align 8
  %14 = call i32 @kqr_kqworkloop(%struct.kqrequest* %13)
  %15 = call i32 @kqworkloop_unbind(%struct.proc* %12, i32 %14)
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.proc*, %struct.proc** %3, align 8
  %18 = load %struct.kqrequest*, %struct.kqrequest** %4, align 8
  %19 = call i32 @kqworkq_unbind(%struct.proc* %17, %struct.kqrequest* %18)
  br label %20

20:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @kqworkloop_unbind(%struct.proc*, i32) #1

declare dso_local i32 @kqr_kqworkloop(%struct.kqrequest*) #1

declare dso_local i32 @kqworkq_unbind(%struct.proc*, %struct.kqrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
