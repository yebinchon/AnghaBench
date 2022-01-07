; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_detaching_dequeue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_detaching_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@ifnet_detaching_head = common dso_local global i32 0, align 4
@ifnet_detaching_cnt = common dso_local global i64 0, align 8
@if_detaching_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifnet* ()* @ifnet_detaching_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifnet* @ifnet_detaching_dequeue() #0 {
  %1 = alloca %struct.ifnet*, align 8
  %2 = call i32 (...) @dlil_if_lock_assert()
  %3 = call %struct.ifnet* @TAILQ_FIRST(i32* @ifnet_detaching_head)
  store %struct.ifnet* %3, %struct.ifnet** %1, align 8
  %4 = load i64, i64* @ifnet_detaching_cnt, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load %struct.ifnet*, %struct.ifnet** %1, align 8
  %8 = icmp eq %struct.ifnet* %7, null
  br label %9

9:                                                ; preds = %6, %0
  %10 = phi i1 [ true, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %1, align 8
  %14 = icmp ne %struct.ifnet* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load i64, i64* @ifnet_detaching_cnt, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @VERIFY(i32 %18)
  %20 = load i64, i64* @ifnet_detaching_cnt, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* @ifnet_detaching_cnt, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %1, align 8
  %23 = load i32, i32* @if_detaching_link, align 4
  %24 = call i32 @TAILQ_REMOVE(i32* @ifnet_detaching_head, %struct.ifnet* %22, i32 %23)
  %25 = load %struct.ifnet*, %struct.ifnet** %1, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.ifnet*, %struct.ifnet** %1, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %15, %9
  %32 = load %struct.ifnet*, %struct.ifnet** %1, align 8
  ret %struct.ifnet* %32
}

declare dso_local i32 @dlil_if_lock_assert(...) #1

declare dso_local %struct.ifnet* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
