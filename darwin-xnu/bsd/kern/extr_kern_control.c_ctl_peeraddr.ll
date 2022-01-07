; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_peeraddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_peeraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64 }
%struct.sockaddr = type { i32 }
%struct.ctl_cb = type { %struct.TYPE_2__, %struct.kctl* }
%struct.TYPE_2__ = type { i32 }
%struct.kctl = type { i32 }
%struct.sockaddr_ctl = type { i32, i32, i32, i32, i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_SYSTEM = common dso_local global i32 0, align 4
@AF_SYS_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr**)* @ctl_peeraddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_peeraddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca %struct.ctl_cb*, align 8
  %7 = alloca %struct.kctl*, align 8
  %8 = alloca %struct.sockaddr_ctl, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ctl_cb*
  store %struct.ctl_cb* %12, %struct.ctl_cb** %6, align 8
  %13 = load %struct.ctl_cb*, %struct.ctl_cb** %6, align 8
  %14 = icmp eq %struct.ctl_cb* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOTCONN, align 4
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.ctl_cb*, %struct.ctl_cb** %6, align 8
  %19 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %18, i32 0, i32 1
  %20 = load %struct.kctl*, %struct.kctl** %19, align 8
  store %struct.kctl* %20, %struct.kctl** %7, align 8
  %21 = icmp eq %struct.kctl* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %43

24:                                               ; preds = %17
  %25 = call i32 @bzero(%struct.sockaddr_ctl* %8, i32 20)
  %26 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %8, i32 0, i32 0
  store i32 20, i32* %26, align 4
  %27 = load i32, i32* @AF_SYSTEM, align 4
  %28 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %8, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @AF_SYS_CONTROL, align 4
  %30 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %8, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load %struct.kctl*, %struct.kctl** %7, align 8
  %32 = getelementptr inbounds %struct.kctl, %struct.kctl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %8, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load %struct.ctl_cb*, %struct.ctl_cb** %6, align 8
  %36 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %8, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = bitcast %struct.sockaddr_ctl* %8 to %struct.sockaddr*
  %41 = call %struct.sockaddr* @dup_sockaddr(%struct.sockaddr* %40, i32 1)
  %42 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  store %struct.sockaddr* %41, %struct.sockaddr** %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %24, %22, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @bzero(%struct.sockaddr_ctl*, i32) #1

declare dso_local %struct.sockaddr* @dup_sockaddr(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
