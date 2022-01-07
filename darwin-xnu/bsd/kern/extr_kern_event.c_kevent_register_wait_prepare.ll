; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_register_wait_prepare.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_register_wait_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64 }
%struct.kevent_internal_s = type { i32, i32 }
%struct.uthread = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.knote* }
%struct.TYPE_6__ = type { i32 }

@EV_ERROR = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@FILTER_REGISTER_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.kevent_internal_s*)* @kevent_register_wait_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kevent_register_wait_prepare(%struct.knote* %0, %struct.kevent_internal_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.kevent_internal_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.uthread*, align 8
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %5, align 8
  %8 = call i64 (...) @current_thread()
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call %struct.uthread* @get_bsdthread_info(i64 %9)
  store %struct.uthread* %10, %struct.uthread** %7, align 8
  %11 = load %struct.knote*, %struct.knote** %4, align 8
  %12 = call %struct.TYPE_6__* @knote_fops(%struct.knote* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.knote*, %struct.knote** %4, align 8
  %17 = getelementptr inbounds %struct.knote, %struct.knote* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @thread_reference(i64 %22)
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.knote*, %struct.knote** %4, align 8
  %26 = getelementptr inbounds %struct.knote, %struct.knote* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %43

27:                                               ; preds = %2
  %28 = load %struct.knote*, %struct.knote** %4, align 8
  %29 = getelementptr inbounds %struct.knote, %struct.knote* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i32, i32* @EV_ERROR, align 4
  %35 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %36 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @EXDEV, align 4
  %40 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %41 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %50

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.knote*, %struct.knote** %4, align 8
  %45 = load %struct.uthread*, %struct.uthread** %7, align 8
  %46 = getelementptr inbounds %struct.uthread, %struct.uthread* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store %struct.knote* %44, %struct.knote** %48, align 8
  %49 = load i32, i32* @FILTER_REGISTER_WAIT, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %33
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @current_thread(...) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_6__* @knote_fops(%struct.knote*) #1

declare dso_local i32 @thread_reference(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
