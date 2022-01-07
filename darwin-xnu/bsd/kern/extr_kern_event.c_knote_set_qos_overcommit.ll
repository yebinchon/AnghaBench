; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_set_qos_overcommit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_set_qos_overcommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32 }
%struct.kqueue = type { i32 }
%struct.kqworkloop = type { %struct.kqrequest }
%struct.kqrequest = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@_PTHREAD_PRIORITY_OVERCOMMIT_FLAG = common dso_local global i32 0, align 4
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@KQR_THOVERCOMMIT = common dso_local global i32 0, align 4
@KQR_THREQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @knote_set_qos_overcommit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knote_set_qos_overcommit(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.kqueue*, align 8
  %4 = alloca %struct.kqworkloop*, align 8
  %5 = alloca %struct.kqrequest*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %6 = load %struct.knote*, %struct.knote** %2, align 8
  %7 = call %struct.kqueue* @knote_get_kq(%struct.knote* %6)
  store %struct.kqueue* %7, %struct.kqueue** %3, align 8
  %8 = load %struct.knote*, %struct.knote** %2, align 8
  %9 = getelementptr inbounds %struct.knote, %struct.knote* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @_PTHREAD_PRIORITY_OVERCOMMIT_FLAG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %1
  %15 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %16 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @KQ_WORKLOOP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %14
  %22 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %23 = bitcast %struct.kqueue* %22 to %struct.kqworkloop*
  store %struct.kqworkloop* %23, %struct.kqworkloop** %4, align 8
  %24 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %25 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %24, i32 0, i32 0
  store %struct.kqrequest* %25, %struct.kqrequest** %5, align 8
  %26 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %27 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @KQR_THOVERCOMMIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %63

33:                                               ; preds = %21
  %34 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %35 = call i32 @kq_req_lock(%struct.kqworkloop* %34)
  %36 = load i32, i32* @KQR_THOVERCOMMIT, align 4
  %37 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %38 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %42 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %33
  %46 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %47 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @KQR_THREQUESTED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %54 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %55 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %56 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kqueue_threadreq_modify(%struct.kqueue* %53, %struct.kqrequest* %54, i32 %58)
  br label %60

60:                                               ; preds = %52, %45, %33
  %61 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %62 = call i32 @kq_req_unlock(%struct.kqworkloop* %61)
  br label %63

63:                                               ; preds = %32, %60, %14, %1
  ret void
}

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @kq_req_lock(%struct.kqworkloop*) #1

declare dso_local i32 @kqueue_threadreq_modify(%struct.kqueue*, %struct.kqrequest*, i32) #1

declare dso_local i32 @kq_req_unlock(%struct.kqworkloop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
