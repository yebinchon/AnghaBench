; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_pcblookup_local_and_cleanup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_pcblookup_local_and_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i64, i64, %struct.socket* }
%struct.socket = type { i64 }
%struct.inpcbinfo = type { i32 }
%struct.in_addr = type { i32 }

@WNT_STOPUSING = common dso_local global i64 0, align 8
@INPCB_STATE_DEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inpcb* @in_pcblookup_local_and_cleanup(%struct.inpcbinfo* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.inpcbinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inpcb*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store %struct.inpcbinfo* %0, %struct.inpcbinfo** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.inpcbinfo*, %struct.inpcbinfo** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.inpcb* @in_pcblookup_local(%struct.inpcbinfo* %12, i32 %16, i32 %13, i32 %14)
  store %struct.inpcb* %17, %struct.inpcb** %9, align 8
  %18 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %19 = icmp ne %struct.inpcb* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %4
  %21 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %22 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WNT_STOPUSING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %20
  %27 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %28 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %27, i32 0, i32 2
  %29 = load %struct.socket*, %struct.socket** %28, align 8
  store %struct.socket* %29, %struct.socket** %10, align 8
  %30 = load %struct.socket*, %struct.socket** %10, align 8
  %31 = call i32 @socket_lock(%struct.socket* %30, i32 0)
  %32 = load %struct.socket*, %struct.socket** %10, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %26
  %37 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %38 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @INPCB_STATE_DEAD, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %44 = call i32 @in_pcbdetach(%struct.inpcb* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %47 = call i32 @in_pcbdispose(%struct.inpcb* %46)
  store %struct.inpcb* null, %struct.inpcb** %9, align 8
  br label %51

48:                                               ; preds = %26
  %49 = load %struct.socket*, %struct.socket** %10, align 8
  %50 = call i32 @socket_unlock(%struct.socket* %49, i32 0)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %20, %4
  %53 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  ret %struct.inpcb* %53
}

declare dso_local %struct.inpcb* @in_pcblookup_local(%struct.inpcbinfo*, i32, i32, i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @in_pcbdetach(%struct.inpcb*) #1

declare dso_local i32 @in_pcbdispose(%struct.inpcb*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
