; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_detacher_thread_cont.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_detacher_thread_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@ifnet_detaching_cnt = common dso_local global i64 0, align 8
@ifnet_delayed_run = common dso_local global i32 0, align 4
@dlil_ifnet_lock = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"ifnet_detacher_cont\00", align 1
@ifnet_detaching_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ifnet_detacher_thread_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifnet_detacher_thread_cont(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  br label %4

4:                                                ; preds = %26, %1
  %5 = call i32 (...) @dlil_if_lock_assert()
  br label %6

6:                                                ; preds = %9, %4
  %7 = load i64, i64* @ifnet_detaching_cnt, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i64, i64* @PZERO, align 8
  %11 = sub nsw i64 %10, 1
  %12 = call i32 @msleep0(i32* @ifnet_delayed_run, i32* @dlil_ifnet_lock, i64 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0, i32 (i32)* @ifnet_detacher_thread_cont)
  br label %6

13:                                               ; preds = %6
  %14 = call i32* @TAILQ_FIRST(i32* @ifnet_detaching_head)
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = call %struct.ifnet* (...) @ifnet_detaching_dequeue()
  store %struct.ifnet* %18, %struct.ifnet** %3, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = icmp ne %struct.ifnet* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = call i32 (...) @dlil_if_unlock()
  %23 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %24 = call i32 @ifnet_detach_final(%struct.ifnet* %23)
  %25 = call i32 (...) @dlil_if_lock()
  br label %26

26:                                               ; preds = %21, %13
  br label %4
}

declare dso_local i32 @dlil_if_lock_assert(...) #1

declare dso_local i32 @msleep0(i32*, i32*, i64, i8*, i32, i32 (i32)*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.ifnet* @ifnet_detaching_dequeue(...) #1

declare dso_local i32 @dlil_if_unlock(...) #1

declare dso_local i32 @ifnet_detach_final(%struct.ifnet*) #1

declare dso_local i32 @dlil_if_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
