; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkq_request_help.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkq_request_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkq = type { i32 }
%struct.kqrequest = type { i32 }

@KQWQ_NBUCKETS = common dso_local global i32 0, align 4
@KQR_WAKEUP = common dso_local global i32 0, align 4
@KQR_THREQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqworkq*, i32)* @kqworkq_request_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqworkq_request_help(%struct.kqworkq* %0, i32 %1) #0 {
  %3 = alloca %struct.kqworkq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kqrequest*, align 8
  store %struct.kqworkq* %0, %struct.kqworkq** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @KQWQ_NBUCKETS, align 4
  %8 = icmp slt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.kqworkq*, %struct.kqworkq** %3, align 8
  %12 = call i32 @kq_req_lock(%struct.kqworkq* %11)
  %13 = load %struct.kqworkq*, %struct.kqworkq** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.kqrequest* @kqworkq_get_request(%struct.kqworkq* %13, i32 %14)
  store %struct.kqrequest* %15, %struct.kqrequest** %5, align 8
  %16 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %17 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @KQR_WAKEUP, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %2
  %23 = load i32, i32* @KQR_WAKEUP, align 4
  %24 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %25 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %29 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @KQR_THREQUESTED, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load %struct.kqworkq*, %struct.kqworkq** %3, align 8
  %36 = getelementptr inbounds %struct.kqworkq, %struct.kqworkq* %35, i32 0, i32 0
  %37 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @kqueue_threadreq_initiate(i32* %36, %struct.kqrequest* %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %34, %22
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.kqworkq*, %struct.kqworkq** %3, align 8
  %43 = call i32 @kq_req_unlock(%struct.kqworkq* %42)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kq_req_lock(%struct.kqworkq*) #1

declare dso_local %struct.kqrequest* @kqworkq_get_request(%struct.kqworkq*, i32) #1

declare dso_local i32 @kqueue_threadreq_initiate(i32*, %struct.kqrequest*, i32, i32) #1

declare dso_local i32 @kq_req_unlock(%struct.kqworkq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
