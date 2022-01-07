; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_threadreq_modify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_threadreq_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32, i64 }
%struct.kqrequest = type { i32, i64 }

@KQR_THREQUESTED = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global i64 0, align 8
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@WORKQ_THREADREQ_SET_AST_ON_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqueue*, %struct.kqrequest*, i32)* @kqueue_threadreq_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqueue_threadreq_modify(%struct.kqueue* %0, %struct.kqrequest* %1, i32 %2) #0 {
  %4 = alloca %struct.kqueue*, align 8
  %5 = alloca %struct.kqrequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kqueue* %0, %struct.kqueue** %4, align 8
  store %struct.kqrequest* %1, %struct.kqrequest** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %9 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @KQR_THREQUESTED, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %15 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @THREAD_NULL, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %22 = call i32 @kq_req_held(%struct.kqueue* %21)
  store i32 0, i32* %7, align 4
  %23 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %24 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @KQ_WORKLOOP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %3
  %30 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %31 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 (...) @current_proc()
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @WORKQ_THREADREQ_SET_AST_ON_FAILURE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %29, %3
  %40 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %41 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @workq_kern_threadreq_modify(i64 %42, %struct.kqrequest* %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kq_req_held(%struct.kqueue*) #1

declare dso_local i64 @current_proc(...) #1

declare dso_local i32 @workq_kern_threadreq_modify(i64, %struct.kqrequest*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
