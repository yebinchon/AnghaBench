; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_raw_cb.c_raw_detach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_raw_cb.c_raw_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawcb = type { %struct.socket*, i64 }
%struct.socket = type { i32, i64 }

@SOF_PCBCLEARING = common dso_local global i32 0, align 4
@raw_mtx = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@M_PCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raw_detach(%struct.rawcb* %0) #0 {
  %2 = alloca %struct.rawcb*, align 8
  %3 = alloca %struct.socket*, align 8
  store %struct.rawcb* %0, %struct.rawcb** %2, align 8
  %4 = load %struct.rawcb*, %struct.rawcb** %2, align 8
  %5 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %4, i32 0, i32 0
  %6 = load %struct.socket*, %struct.socket** %5, align 8
  store %struct.socket* %6, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @SOF_PCBCLEARING, align 4
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.socket*, %struct.socket** %3, align 8
  %15 = call i32 @sofree(%struct.socket* %14)
  %16 = load i32, i32* @raw_mtx, align 4
  %17 = call i32 @lck_mtx_try_lock(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.socket*, %struct.socket** %3, align 8
  %21 = call i32 @socket_unlock(%struct.socket* %20, i32 0)
  %22 = load i32, i32* @raw_mtx, align 4
  %23 = call i32 @lck_mtx_lock(i32 %22)
  %24 = load %struct.socket*, %struct.socket** %3, align 8
  %25 = call i32 @socket_lock(%struct.socket* %24, i32 0)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.rawcb*, %struct.rawcb** %2, align 8
  %28 = load i32, i32* @list, align 4
  %29 = call i32 @LIST_REMOVE(%struct.rawcb* %27, i32 %28)
  %30 = load i32, i32* @raw_mtx, align 4
  %31 = call i32 @lck_mtx_unlock(i32 %30)
  %32 = load %struct.rawcb*, %struct.rawcb** %2, align 8
  %33 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %32, i32 0, i32 0
  store %struct.socket* null, %struct.socket** %33, align 8
  %34 = load %struct.rawcb*, %struct.rawcb** %2, align 8
  %35 = ptrtoint %struct.rawcb* %34 to i32
  %36 = load i32, i32* @M_PCB, align 4
  %37 = call i32 @FREE(i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @sofree(%struct.socket*) #1

declare dso_local i32 @lck_mtx_try_lock(i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.rawcb*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @FREE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
