; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mp_pcb.c_mp_pcballoc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mp_pcb.c_mp_pcballoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.mppcb* }
%struct.mppcb = type { i32, i32, %struct.socket*, i32, %struct.mppcbinfo* }
%struct.mppcbinfo = type { i32, i32, i32, i32, i32, i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@MPPCB_STATE_INUSE = common dso_local global i32 0, align 4
@MPP_ATTACHED = common dso_local global i32 0, align 4
@mpp_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_pcballoc(%struct.socket* %0, %struct.mppcbinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.mppcbinfo*, align 8
  %6 = alloca %struct.mppcb*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.mppcbinfo* %1, %struct.mppcbinfo** %5, align 8
  store %struct.mppcb* null, %struct.mppcb** %6, align 8
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = call i32* @mpsotomppcb(%struct.socket* %8)
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load %struct.mppcbinfo*, %struct.mppcbinfo** %5, align 8
  %14 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mppcb* @zalloc(i32 %15)
  store %struct.mppcb* %16, %struct.mppcb** %6, align 8
  %17 = load %struct.mppcb*, %struct.mppcb** %6, align 8
  %18 = icmp eq %struct.mppcb* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOBUFS, align 4
  store i32 %20, i32* %3, align 4
  br label %86

21:                                               ; preds = %2
  %22 = load %struct.mppcb*, %struct.mppcb** %6, align 8
  %23 = load %struct.mppcbinfo*, %struct.mppcbinfo** %5, align 8
  %24 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bzero(%struct.mppcb* %22, i32 %25)
  %27 = load %struct.mppcb*, %struct.mppcb** %6, align 8
  %28 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %27, i32 0, i32 1
  %29 = load %struct.mppcbinfo*, %struct.mppcbinfo** %5, align 8
  %30 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mppcbinfo*, %struct.mppcbinfo** %5, align 8
  %33 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @lck_mtx_init(i32* %28, i32 %31, i32 %34)
  %36 = load %struct.mppcbinfo*, %struct.mppcbinfo** %5, align 8
  %37 = load %struct.mppcb*, %struct.mppcb** %6, align 8
  %38 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %37, i32 0, i32 4
  store %struct.mppcbinfo* %36, %struct.mppcbinfo** %38, align 8
  %39 = load i32, i32* @MPPCB_STATE_INUSE, align 4
  %40 = load %struct.mppcb*, %struct.mppcb** %6, align 8
  %41 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.socket*, %struct.socket** %4, align 8
  %43 = load %struct.mppcb*, %struct.mppcb** %6, align 8
  %44 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %43, i32 0, i32 2
  store %struct.socket* %42, %struct.socket** %44, align 8
  %45 = load %struct.mppcb*, %struct.mppcb** %6, align 8
  %46 = load %struct.socket*, %struct.socket** %4, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 0
  store %struct.mppcb* %45, %struct.mppcb** %47, align 8
  %48 = load %struct.mppcb*, %struct.mppcb** %6, align 8
  %49 = call i32 @mptcp_sescreate(%struct.mppcb* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %21
  %53 = load %struct.mppcb*, %struct.mppcb** %6, align 8
  %54 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %53, i32 0, i32 1
  %55 = load %struct.mppcbinfo*, %struct.mppcbinfo** %5, align 8
  %56 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lck_mtx_destroy(i32* %54, i32 %57)
  %59 = load %struct.mppcbinfo*, %struct.mppcbinfo** %5, align 8
  %60 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mppcb*, %struct.mppcb** %6, align 8
  %63 = call i32 @zfree(i32 %61, %struct.mppcb* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %86

65:                                               ; preds = %21
  %66 = load %struct.mppcbinfo*, %struct.mppcbinfo** %5, align 8
  %67 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %66, i32 0, i32 0
  %68 = call i32 @lck_mtx_lock(i32* %67)
  %69 = load i32, i32* @MPP_ATTACHED, align 4
  %70 = load %struct.mppcb*, %struct.mppcb** %6, align 8
  %71 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.mppcbinfo*, %struct.mppcbinfo** %5, align 8
  %75 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %74, i32 0, i32 2
  %76 = load %struct.mppcb*, %struct.mppcb** %6, align 8
  %77 = load i32, i32* @mpp_entry, align 4
  %78 = call i32 @TAILQ_INSERT_TAIL(i32* %75, %struct.mppcb* %76, i32 %77)
  %79 = load %struct.mppcbinfo*, %struct.mppcbinfo** %5, align 8
  %80 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.mppcbinfo*, %struct.mppcbinfo** %5, align 8
  %84 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %83, i32 0, i32 0
  %85 = call i32 @lck_mtx_unlock(i32* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %65, %52, %19
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32* @mpsotomppcb(%struct.socket*) #1

declare dso_local %struct.mppcb* @zalloc(i32) #1

declare dso_local i32 @bzero(%struct.mppcb*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @mptcp_sescreate(%struct.mppcb*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @zfree(i32, %struct.mppcb*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.mppcb*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
