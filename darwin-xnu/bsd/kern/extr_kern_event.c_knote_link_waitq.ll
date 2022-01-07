; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_link_waitq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_link_waitq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32 }
%struct.waitq = type { i32 }
%struct.kqueue = type { i32 }

@WAITQ_ALREADY_LOCKED = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @knote_link_waitq(%struct.knote* %0, %struct.waitq* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.waitq*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kqueue*, align 8
  %9 = alloca i64, align 8
  store %struct.knote* %0, %struct.knote** %5, align 8
  store %struct.waitq* %1, %struct.waitq** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.knote*, %struct.knote** %5, align 8
  %11 = call %struct.kqueue* @knote_get_kq(%struct.knote* %10)
  store %struct.kqueue* %11, %struct.kqueue** %8, align 8
  %12 = load %struct.waitq*, %struct.waitq** %6, align 8
  %13 = load %struct.kqueue*, %struct.kqueue** %8, align 8
  %14 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %13, i32 0, i32 0
  %15 = load i32, i32* @WAITQ_ALREADY_LOCKED, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @waitq_link(%struct.waitq* %12, i32* %14, i32 %15, i32* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @KERN_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.knote*, %struct.knote** %5, align 8
  %23 = call i32 @knote_markstayactive(%struct.knote* %22)
  store i32 0, i32* %4, align 4
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i64 @waitq_link(%struct.waitq*, i32*, i32, i32*) #1

declare dso_local i32 @knote_markstayactive(%struct.knote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
