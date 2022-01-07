; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_unlink_waitq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_unlink_waitq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32 }
%struct.waitq = type { i32 }
%struct.kqueue = type { i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @knote_unlink_waitq(%struct.knote* %0, %struct.waitq* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca %struct.kqueue*, align 8
  %6 = alloca i64, align 8
  store %struct.knote* %0, %struct.knote** %3, align 8
  store %struct.waitq* %1, %struct.waitq** %4, align 8
  %7 = load %struct.knote*, %struct.knote** %3, align 8
  %8 = call %struct.kqueue* @knote_get_kq(%struct.knote* %7)
  store %struct.kqueue* %8, %struct.kqueue** %5, align 8
  %9 = load %struct.waitq*, %struct.waitq** %4, align 8
  %10 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %11 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %10, i32 0, i32 0
  %12 = call i64 @waitq_unlink(%struct.waitq* %9, i32* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.knote*, %struct.knote** %3, align 8
  %14 = call i32 @knote_clearstayactive(%struct.knote* %13)
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @KERN_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  ret i32 %22
}

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i64 @waitq_unlink(%struct.waitq*, i32*) #1

declare dso_local i32 @knote_clearstayactive(%struct.knote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
