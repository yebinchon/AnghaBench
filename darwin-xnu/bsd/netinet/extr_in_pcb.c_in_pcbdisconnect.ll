; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_pcbdisconnect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_pcbdisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__, %struct.socket* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.socket = type { i32, i32, i32 }

@nstat_collect = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4
@SS_NOFDREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_pcbdisconnect(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.socket*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %4 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %5 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %4, i32 0, i32 3
  %6 = load %struct.socket*, %struct.socket** %5, align 8
  store %struct.socket* %6, %struct.socket** %3, align 8
  %7 = load i64, i64* @nstat_collect, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = call i64 @SOCK_PROTO(%struct.socket* %10)
  %12 = load i64, i64* @IPPROTO_UDP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %16 = call i32 @nstat_pcb_cache(%struct.inpcb* %15)
  br label %17

17:                                               ; preds = %14, %9, %1
  %18 = load i32, i32* @INADDR_ANY, align 4
  %19 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %23 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %25 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lck_rw_try_lock_exclusive(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %17
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = call i32 @socket_unlock(%struct.socket* %32, i32 0)
  %34 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %35 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lck_rw_lock_exclusive(i32 %38)
  %40 = load %struct.socket*, %struct.socket** %3, align 8
  %41 = call i32 @socket_lock(%struct.socket* %40, i32 0)
  br label %42

42:                                               ; preds = %31, %17
  %43 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %44 = call i32 @in_pcbrehash(%struct.inpcb* %43)
  %45 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @lck_rw_done(i32 %49)
  %51 = load %struct.socket*, %struct.socket** %3, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SOF_MP_SUBFLOW, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %42
  %58 = load %struct.socket*, %struct.socket** %3, align 8
  %59 = getelementptr inbounds %struct.socket, %struct.socket* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SS_NOFDREF, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %66 = call i32 @in_pcbdetach(%struct.inpcb* %65)
  br label %67

67:                                               ; preds = %64, %57, %42
  ret void
}

declare dso_local i64 @SOCK_PROTO(%struct.socket*) #1

declare dso_local i32 @nstat_pcb_cache(%struct.inpcb*) #1

declare dso_local i32 @lck_rw_try_lock_exclusive(i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @in_pcbrehash(%struct.inpcb*) #1

declare dso_local i32 @lck_rw_done(i32) #1

declare dso_local i32 @in_pcbdetach(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
