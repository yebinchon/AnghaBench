; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_raw_cb.c_raw_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_raw_cb.c_raw_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.rawcb = type { %struct.TYPE_2__, %struct.socket* }
%struct.TYPE_2__ = type { i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@raw_sendspace = common dso_local global i32 0, align 4
@raw_recvspace = common dso_local global i32 0, align 4
@raw_mtx = common dso_local global i32 0, align 4
@rawcb_list = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raw_attach(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rawcb*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = call %struct.rawcb* @sotorawcb(%struct.socket* %8)
  store %struct.rawcb* %9, %struct.rawcb** %6, align 8
  %10 = load %struct.rawcb*, %struct.rawcb** %6, align 8
  %11 = icmp eq %struct.rawcb* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOBUFS, align 4
  store i32 %13, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.socket*, %struct.socket** %4, align 8
  %16 = load i32, i32* @raw_sendspace, align 4
  %17 = load i32, i32* @raw_recvspace, align 4
  %18 = call i32 @soreserve(%struct.socket* %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %43

23:                                               ; preds = %14
  %24 = load %struct.socket*, %struct.socket** %4, align 8
  %25 = load %struct.rawcb*, %struct.rawcb** %6, align 8
  %26 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %25, i32 0, i32 1
  store %struct.socket* %24, %struct.socket** %26, align 8
  %27 = load %struct.socket*, %struct.socket** %4, align 8
  %28 = call i32 @SOCK_DOM(%struct.socket* %27)
  %29 = load %struct.rawcb*, %struct.rawcb** %6, align 8
  %30 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.rawcb*, %struct.rawcb** %6, align 8
  %34 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @raw_mtx, align 4
  %37 = call i32 @lck_mtx_lock(i32 %36)
  %38 = load %struct.rawcb*, %struct.rawcb** %6, align 8
  %39 = load i32, i32* @list, align 4
  %40 = call i32 @LIST_INSERT_HEAD(i32* @rawcb_list, %struct.rawcb* %38, i32 %39)
  %41 = load i32, i32* @raw_mtx, align 4
  %42 = call i32 @lck_mtx_unlock(i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %23, %21, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.rawcb* @sotorawcb(%struct.socket*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @SOCK_DOM(%struct.socket*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.rawcb*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
