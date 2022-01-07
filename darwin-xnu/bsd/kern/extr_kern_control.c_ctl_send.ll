; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.socket = type { i64 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.proc = type { i32 }
%struct.ctl_cb = type { i32, %struct.TYPE_3__, %struct.kctl* }
%struct.TYPE_3__ = type { i32 }
%struct.kctl = type { i32 (i32, i32, i32, %struct.mbuf*, i32)*, i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@kctlstat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.proc*)* @ctl_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_send(%struct.socket* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.proc* %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.proc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ctl_cb*, align 8
  %15 = alloca %struct.kctl*, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store %struct.mbuf* %4, %struct.mbuf** %11, align 8
  store %struct.proc* %5, %struct.proc** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ctl_cb*
  store %struct.ctl_cb* %19, %struct.ctl_cb** %14, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %21 = icmp ne %struct.mbuf* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %24 = call i32 @m_freem(%struct.mbuf* %23)
  br label %25

25:                                               ; preds = %22, %6
  %26 = load %struct.ctl_cb*, %struct.ctl_cb** %14, align 8
  %27 = icmp eq %struct.ctl_cb* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @ENOTCONN, align 4
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* %13, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.ctl_cb*, %struct.ctl_cb** %14, align 8
  %35 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %34, i32 0, i32 2
  %36 = load %struct.kctl*, %struct.kctl** %35, align 8
  store %struct.kctl* %36, %struct.kctl** %15, align 8
  %37 = icmp eq %struct.kctl* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %38, %33, %30
  %41 = load i32, i32* %13, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %40
  %44 = load %struct.kctl*, %struct.kctl** %15, align 8
  %45 = getelementptr inbounds %struct.kctl, %struct.kctl* %44, i32 0, i32 0
  %46 = load i32 (i32, i32, i32, %struct.mbuf*, i32)*, i32 (i32, i32, i32, %struct.mbuf*, i32)** %45, align 8
  %47 = icmp ne i32 (i32, i32, i32, %struct.mbuf*, i32)* %46, null
  br i1 %47, label %48, label %74

48:                                               ; preds = %43
  %49 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %50 = load %struct.socket*, %struct.socket** %7, align 8
  %51 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %52 = call i32 @m_get_service_class(%struct.mbuf* %51)
  %53 = call i32 @so_tc_update_stats(%struct.mbuf* %49, %struct.socket* %50, i32 %52)
  %54 = load %struct.socket*, %struct.socket** %7, align 8
  %55 = call i32 @socket_unlock(%struct.socket* %54, i32 0)
  %56 = load %struct.kctl*, %struct.kctl** %15, align 8
  %57 = getelementptr inbounds %struct.kctl, %struct.kctl* %56, i32 0, i32 0
  %58 = load i32 (i32, i32, i32, %struct.mbuf*, i32)*, i32 (i32, i32, i32, %struct.mbuf*, i32)** %57, align 8
  %59 = load %struct.kctl*, %struct.kctl** %15, align 8
  %60 = getelementptr inbounds %struct.kctl, %struct.kctl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ctl_cb*, %struct.ctl_cb** %14, align 8
  %63 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ctl_cb*, %struct.ctl_cb** %14, align 8
  %67 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 %58(i32 %61, i32 %65, i32 %68, %struct.mbuf* %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.socket*, %struct.socket** %7, align 8
  %73 = call i32 @socket_lock(%struct.socket* %72, i32 0)
  br label %82

74:                                               ; preds = %43, %40
  %75 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %76 = call i32 @m_freem(%struct.mbuf* %75)
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @ENOTSUP, align 4
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %79, %74
  br label %82

82:                                               ; preds = %81, %48
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 @OSIncrementAtomic64(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kctlstat, i32 0, i32 0))
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i32, i32* %13, align 4
  ret i32 %88
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @so_tc_update_stats(%struct.mbuf*, %struct.socket*, i32) #1

declare dso_local i32 @m_get_service_class(%struct.mbuf*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @OSIncrementAtomic64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
