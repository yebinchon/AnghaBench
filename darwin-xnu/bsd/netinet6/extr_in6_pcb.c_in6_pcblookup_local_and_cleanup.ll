; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_pcblookup_local_and_cleanup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_pcblookup_local_and_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i64, i64, %struct.socket* }
%struct.socket = type { i64 }
%struct.inpcbinfo = type { i32 }
%struct.in6_addr = type { i32 }

@WNT_STOPUSING = common dso_local global i64 0, align 8
@INPCB_STATE_DEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inpcb* (%struct.inpcbinfo*, %struct.in6_addr*, i32, i32)* @in6_pcblookup_local_and_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inpcb* @in6_pcblookup_local_and_cleanup(%struct.inpcbinfo* %0, %struct.in6_addr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inpcbinfo*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inpcb*, align 8
  %10 = alloca %struct.socket*, align 8
  store %struct.inpcbinfo* %0, %struct.inpcbinfo** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %12 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.inpcb* @in6_pcblookup_local(%struct.inpcbinfo* %11, %struct.in6_addr* %12, i32 %13, i32 %14)
  store %struct.inpcb* %15, %struct.inpcb** %9, align 8
  %16 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %17 = icmp ne %struct.inpcb* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %4
  %19 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WNT_STOPUSING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  %25 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %26 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %25, i32 0, i32 2
  %27 = load %struct.socket*, %struct.socket** %26, align 8
  store %struct.socket* %27, %struct.socket** %10, align 8
  %28 = load %struct.socket*, %struct.socket** %10, align 8
  %29 = call i32 @socket_lock(%struct.socket* %28, i32 0)
  %30 = load %struct.socket*, %struct.socket** %10, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %24
  %35 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %36 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @INPCB_STATE_DEAD, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %42 = call i32 @in6_pcbdetach(%struct.inpcb* %41)
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %45 = call i32 @in_pcbdispose(%struct.inpcb* %44)
  store %struct.inpcb* null, %struct.inpcb** %9, align 8
  br label %49

46:                                               ; preds = %24
  %47 = load %struct.socket*, %struct.socket** %10, align 8
  %48 = call i32 @socket_unlock(%struct.socket* %47, i32 0)
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %18, %4
  %51 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  ret %struct.inpcb* %51
}

declare dso_local %struct.inpcb* @in6_pcblookup_local(%struct.inpcbinfo*, %struct.in6_addr*, i32, i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @in6_pcbdetach(%struct.inpcb*) #1

declare dso_local i32 @in_pcbdispose(%struct.inpcb*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
