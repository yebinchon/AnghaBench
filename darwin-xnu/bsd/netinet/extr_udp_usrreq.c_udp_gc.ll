; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_gc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.inpcb* }
%struct.inpcb = type { i64, i64, %struct.socket*, %struct.TYPE_4__ }
%struct.socket = type { i64 }
%struct.TYPE_4__ = type { %struct.inpcb* }
%struct.inpcbinfo = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@udp_gc_done = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@udb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@WNT_STOPUSING = common dso_local global i64 0, align 8
@INPCB_STATE_DEAD = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inpcbinfo*)* @udp_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_gc(%struct.inpcbinfo* %0) #0 {
  %2 = alloca %struct.inpcbinfo*, align 8
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.socket*, align 8
  store %struct.inpcbinfo* %0, %struct.inpcbinfo** %2, align 8
  %6 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %7 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @lck_rw_try_lock_exclusive(i32 %8)
  %10 = load i64, i64* @FALSE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load i64, i64* @udp_gc_done, align 8
  %14 = load i64, i64* @TRUE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* @udp_gc_done, align 8
  %18 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %19 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @atomic_add_32(i32* %20, i32 1)
  br label %90

22:                                               ; preds = %12
  %23 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %24 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @lck_rw_lock_exclusive(i32 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* @udp_gc_done, align 8
  %29 = load %struct.inpcb*, %struct.inpcb** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @udb, i32 0, i32 0), align 8
  store %struct.inpcb* %29, %struct.inpcb** %3, align 8
  br label %30

30:                                               ; preds = %83, %27
  %31 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %32 = icmp ne %struct.inpcb* %31, null
  br i1 %32, label %33, label %85

33:                                               ; preds = %30
  %34 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %35 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.inpcb*, %struct.inpcb** %36, align 8
  store %struct.inpcb* %37, %struct.inpcb** %4, align 8
  %38 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %39 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @WNT_STOPUSING, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %83

44:                                               ; preds = %33
  %45 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 2
  %47 = load %struct.socket*, %struct.socket** %46, align 8
  %48 = call i32 @socket_try_lock(%struct.socket* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %52 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @atomic_add_32(i32* %53, i32 1)
  br label %83

55:                                               ; preds = %44
  %56 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %57 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %56, i32 0, i32 2
  %58 = load %struct.socket*, %struct.socket** %57, align 8
  store %struct.socket* %58, %struct.socket** %5, align 8
  %59 = load %struct.socket*, %struct.socket** %5, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %55
  %64 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %65 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @INPCB_STATE_DEAD, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %71 = call i32 @in_pcbdetach(%struct.inpcb* %70)
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %74 = call i32 @in_pcbdispose(%struct.inpcb* %73)
  br label %82

75:                                               ; preds = %55
  %76 = load %struct.socket*, %struct.socket** %5, align 8
  %77 = call i32 @socket_unlock(%struct.socket* %76, i32 0)
  %78 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %79 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i32 @atomic_add_32(i32* %80, i32 1)
  br label %82

82:                                               ; preds = %75, %72
  br label %83

83:                                               ; preds = %82, %50, %43
  %84 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  store %struct.inpcb* %84, %struct.inpcb** %3, align 8
  br label %30

85:                                               ; preds = %30
  %86 = load %struct.inpcbinfo*, %struct.inpcbinfo** %2, align 8
  %87 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @lck_rw_done(i32 %88)
  br label %90

90:                                               ; preds = %85, %16
  ret void
}

declare dso_local i64 @lck_rw_try_lock_exclusive(i32) #1

declare dso_local i32 @atomic_add_32(i32*, i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i32 @socket_try_lock(%struct.socket*) #1

declare dso_local i32 @in_pcbdetach(%struct.inpcb*) #1

declare dso_local i32 @in_pcbdispose(%struct.inpcb*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @lck_rw_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
