; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_pcbdisconnect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_pcbdisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_2__*, i32, i64, i32, %struct.socket* }
%struct.TYPE_2__ = type { i32 }
%struct.socket = type { i32, i32, i32 }

@nstat_collect = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4
@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4
@SS_NOFDREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_pcbdisconnect(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.socket*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %4 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %5 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %4, i32 0, i32 4
  %6 = load %struct.socket*, %struct.socket** %5, align 8
  store %struct.socket* %6, %struct.socket** %3, align 8
  %7 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %8 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @lck_rw_try_lock_exclusive(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = call i32 @socket_unlock(%struct.socket* %15, i32 0)
  %17 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @lck_rw_lock_exclusive(i32 %21)
  %23 = load %struct.socket*, %struct.socket** %3, align 8
  %24 = call i32 @socket_lock(%struct.socket* %23, i32 0)
  br label %25

25:                                               ; preds = %14, %1
  %26 = load i64, i64* @nstat_collect, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.socket*, %struct.socket** %3, align 8
  %30 = call i64 @SOCK_PROTO(%struct.socket* %29)
  %31 = load i64, i64* @IPPROTO_UDP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %35 = call i32 @nstat_pcb_cache(%struct.inpcb* %34)
  br label %36

36:                                               ; preds = %33, %28, %25
  %37 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %38 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %37, i32 0, i32 3
  %39 = ptrtoint i32* %38 to i32
  %40 = call i32 @bzero(i32 %39, i32 4)
  %41 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %42 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %50 = call i32 @in_pcbrehash(%struct.inpcb* %49)
  %51 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %52 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @lck_rw_done(i32 %55)
  %57 = load %struct.socket*, %struct.socket** %3, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SOF_MP_SUBFLOW, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %36
  %64 = load %struct.socket*, %struct.socket** %3, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SS_NOFDREF, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %72 = call i32 @in6_pcbdetach(%struct.inpcb* %71)
  br label %73

73:                                               ; preds = %70, %63, %36
  ret void
}

declare dso_local i32 @lck_rw_try_lock_exclusive(i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i64 @SOCK_PROTO(%struct.socket*) #1

declare dso_local i32 @nstat_pcb_cache(%struct.inpcb*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @in_pcbrehash(%struct.inpcb*) #1

declare dso_local i32 @lck_rw_done(i32) #1

declare dso_local i32 @in6_pcbdetach(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
