; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.proc = type { i32 }
%struct.mptses = type { %struct.mptcb* }
%struct.mptcb = type { i32 }
%struct.mppcb = type { i64 }

@tcp_sendspace = common dso_local global i32 0, align 4
@tcp_recvspace = common dso_local global i32 0, align 4
@SB_USRSIZE = common dso_local global i32 0, align 4
@SB_AUTOSIZE = common dso_local global i32 0, align 4
@SB_NOCOMPRESS = common dso_local global i32 0, align 4
@mtcbinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.proc*)* @mptcp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_attach(%struct.socket* %0, %struct.proc* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.mptses*, align 8
  %6 = alloca %struct.mptcb*, align 8
  %7 = alloca %struct.mppcb*, align 8
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.proc* %1, %struct.proc** %4, align 8
  store %struct.mptses* null, %struct.mptses** %5, align 8
  store %struct.mptcb* null, %struct.mptcb** %6, align 8
  store %struct.mppcb* null, %struct.mppcb** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14, %2
  %21 = load %struct.socket*, %struct.socket** %3, align 8
  %22 = load i32, i32* @tcp_sendspace, align 4
  %23 = load i32, i32* @tcp_recvspace, align 4
  %24 = call i32 @soreserve(%struct.socket* %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %107

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %14
  %30 = load %struct.socket*, %struct.socket** %3, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.socket*, %struct.socket** %3, align 8
  %37 = call i32 @soreserve_preconnect(%struct.socket* %36, i32 2048)
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.socket*, %struct.socket** %3, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SB_USRSIZE, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i32, i32* @SB_AUTOSIZE, align 4
  %48 = load %struct.socket*, %struct.socket** %3, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %46, %38
  %54 = load %struct.socket*, %struct.socket** %3, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SB_USRSIZE, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load i32, i32* @SB_AUTOSIZE, align 4
  %63 = load %struct.socket*, %struct.socket** %3, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %61, %53
  %69 = load i32, i32* @SB_NOCOMPRESS, align 4
  %70 = load %struct.socket*, %struct.socket** %3, align 8
  %71 = getelementptr inbounds %struct.socket, %struct.socket* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @SB_NOCOMPRESS, align 4
  %76 = load %struct.socket*, %struct.socket** %3, align 8
  %77 = getelementptr inbounds %struct.socket, %struct.socket* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 8
  %81 = load %struct.socket*, %struct.socket** %3, align 8
  %82 = call i32 @mp_pcballoc(%struct.socket* %81, i32* @mtcbinfo)
  store i32 %82, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  br label %107

85:                                               ; preds = %68
  %86 = load %struct.socket*, %struct.socket** %3, align 8
  %87 = call %struct.mppcb* @mpsotomppcb(%struct.socket* %86)
  store %struct.mppcb* %87, %struct.mppcb** %7, align 8
  %88 = load %struct.mppcb*, %struct.mppcb** %7, align 8
  %89 = icmp ne %struct.mppcb* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i32 @VERIFY(i32 %90)
  %92 = load %struct.mppcb*, %struct.mppcb** %7, align 8
  %93 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.mptses*
  store %struct.mptses* %95, %struct.mptses** %5, align 8
  %96 = load %struct.mptses*, %struct.mptses** %5, align 8
  %97 = icmp ne %struct.mptses* %96, null
  %98 = zext i1 %97 to i32
  %99 = call i32 @VERIFY(i32 %98)
  %100 = load %struct.mptses*, %struct.mptses** %5, align 8
  %101 = getelementptr inbounds %struct.mptses, %struct.mptses* %100, i32 0, i32 0
  %102 = load %struct.mptcb*, %struct.mptcb** %101, align 8
  store %struct.mptcb* %102, %struct.mptcb** %6, align 8
  %103 = load %struct.mptcb*, %struct.mptcb** %6, align 8
  %104 = icmp ne %struct.mptcb* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @VERIFY(i32 %105)
  br label %107

107:                                              ; preds = %85, %84, %27
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @soreserve_preconnect(%struct.socket*, i32) #1

declare dso_local i32 @mp_pcballoc(%struct.socket*, i32*) #1

declare dso_local %struct.mppcb* @mpsotomppcb(%struct.socket*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
