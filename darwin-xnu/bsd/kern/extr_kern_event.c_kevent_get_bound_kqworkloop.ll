; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_get_bound_kqworkloop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_get_bound_kqworkloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32 }
%struct.uthread = type { %struct.kqrequest* }
%struct.kqrequest = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kqueue* (i32)* @kevent_get_bound_kqworkloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kqueue* @kevent_get_bound_kqworkloop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uthread*, align 8
  %4 = alloca %struct.kqrequest*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.uthread* @get_bsdthread_info(i32 %5)
  store %struct.uthread* %6, %struct.uthread** %3, align 8
  %7 = load %struct.uthread*, %struct.uthread** %3, align 8
  %8 = getelementptr inbounds %struct.uthread, %struct.uthread* %7, i32 0, i32 0
  %9 = load %struct.kqrequest*, %struct.kqrequest** %8, align 8
  store %struct.kqrequest* %9, %struct.kqrequest** %4, align 8
  %10 = load %struct.kqrequest*, %struct.kqrequest** %4, align 8
  %11 = icmp ne %struct.kqrequest* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.kqrequest*, %struct.kqrequest** %4, align 8
  %14 = call i64 @kqr_kqworkloop(%struct.kqrequest* %13)
  %15 = inttoptr i64 %14 to %struct.kqueue*
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi %struct.kqueue* [ %15, %12 ], [ null, %16 ]
  ret %struct.kqueue* %18
}

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i64 @kqr_kqworkloop(%struct.kqrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
