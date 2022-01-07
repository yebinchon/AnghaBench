; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soshutdownlock_final.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soshutdownlock_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.protosw* }
%struct.protosw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.socket*)* }

@sock_evt_shutdown = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EV_RCLOSED = common dso_local global i32 0, align 4
@SHUT_RD = common dso_local global i32 0, align 4
@SS_CANTSENDMORE = common dso_local global i32 0, align 4
@EV_WCLOSED = common dso_local global i32 0, align 4
@DBG_FNC_SOSHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soshutdownlock_final(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.protosw*, align 8
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 1
  %9 = load %struct.protosw*, %struct.protosw** %8, align 8
  store %struct.protosw* %9, %struct.protosw** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = load i32, i32* @sock_evt_shutdown, align 4
  %12 = call i32 @sflt_notify(%struct.socket* %10, i32 %11, i32* %4)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SHUT_WR, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.socket*, %struct.socket** %3, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SS_CANTRCVMORE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOTCONN, align 4
  store i32 %24, i32* %6, align 4
  br label %56

25:                                               ; preds = %16
  %26 = load %struct.socket*, %struct.socket** %3, align 8
  %27 = call i32 @sorflush(%struct.socket* %26)
  %28 = load %struct.socket*, %struct.socket** %3, align 8
  %29 = load i32, i32* @EV_RCLOSED, align 4
  %30 = call i32 @postevent(%struct.socket* %28, i32 0, i32 %29)
  br label %31

31:                                               ; preds = %25, %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SHUT_RD, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load %struct.socket*, %struct.socket** %3, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SS_CANTSENDMORE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOTCONN, align 4
  store i32 %43, i32* %6, align 4
  br label %56

44:                                               ; preds = %35
  %45 = load %struct.protosw*, %struct.protosw** %5, align 8
  %46 = getelementptr inbounds %struct.protosw, %struct.protosw* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.socket*)*, i32 (%struct.socket*)** %48, align 8
  %50 = load %struct.socket*, %struct.socket** %3, align 8
  %51 = call i32 %49(%struct.socket* %50)
  store i32 %51, i32* %6, align 4
  %52 = load %struct.socket*, %struct.socket** %3, align 8
  %53 = load i32, i32* @EV_WCLOSED, align 4
  %54 = call i32 @postevent(%struct.socket* %52, i32 0, i32 %53)
  br label %55

55:                                               ; preds = %44, %31
  br label %56

56:                                               ; preds = %55, %42, %23
  %57 = load i32, i32* @DBG_FNC_SOSHUTDOWN, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @KERNEL_DEBUG(i32 %57, i32 %58, i32 1, i32 0, i32 0, i32 0)
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @sflt_notify(%struct.socket*, i32, i32*) #1

declare dso_local i32 @sorflush(%struct.socket*) #1

declare dso_local i32 @postevent(%struct.socket*, i32, i32) #1

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
