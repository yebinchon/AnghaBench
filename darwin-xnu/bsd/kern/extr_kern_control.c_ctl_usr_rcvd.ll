; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_usr_rcvd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_usr_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64 }
%struct.ctl_cb = type { i32, %struct.TYPE_2__, %struct.kctl* }
%struct.TYPE_2__ = type { i32 }
%struct.kctl = type { i32, i32 (i32, i32, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @ctl_usr_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_usr_rcvd(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctl_cb*, align 8
  %7 = alloca %struct.kctl*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ctl_cb*
  store %struct.ctl_cb* %11, %struct.ctl_cb** %6, align 8
  %12 = load %struct.ctl_cb*, %struct.ctl_cb** %6, align 8
  %13 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %12, i32 0, i32 2
  %14 = load %struct.kctl*, %struct.kctl** %13, align 8
  store %struct.kctl* %14, %struct.kctl** %7, align 8
  %15 = icmp eq %struct.kctl* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.kctl*, %struct.kctl** %7, align 8
  %20 = getelementptr inbounds %struct.kctl, %struct.kctl* %19, i32 0, i32 1
  %21 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %20, align 8
  %22 = icmp ne i32 (i32, i32, i32, i32)* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load %struct.socket*, %struct.socket** %4, align 8
  %25 = call i32 @socket_unlock(%struct.socket* %24, i32 0)
  %26 = load %struct.kctl*, %struct.kctl** %7, align 8
  %27 = getelementptr inbounds %struct.kctl, %struct.kctl* %26, i32 0, i32 1
  %28 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %27, align 8
  %29 = load %struct.kctl*, %struct.kctl** %7, align 8
  %30 = getelementptr inbounds %struct.kctl, %struct.kctl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ctl_cb*, %struct.ctl_cb** %6, align 8
  %33 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ctl_cb*, %struct.ctl_cb** %6, align 8
  %37 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 %28(i32 %31, i32 %35, i32 %38, i32 %39)
  %41 = load %struct.socket*, %struct.socket** %4, align 8
  %42 = call i32 @socket_lock(%struct.socket* %41, i32 0)
  br label %43

43:                                               ; preds = %23, %18
  %44 = load %struct.socket*, %struct.socket** %4, align 8
  %45 = call i32 @ctl_sbrcv_trim(%struct.socket* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @ctl_sbrcv_trim(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
