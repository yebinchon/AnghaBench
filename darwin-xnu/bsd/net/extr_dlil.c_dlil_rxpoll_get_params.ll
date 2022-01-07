; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_rxpoll_get_params.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_rxpoll_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.dlil_threading_info* }
%struct.dlil_threading_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet_poll_params = type { i32, i32, i32, i32, i32, i32 }

@IFEF_RXPOLL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlil_rxpoll_get_params(%struct.ifnet* %0, %struct.ifnet_poll_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.ifnet_poll_params*, align 8
  %6 = alloca %struct.dlil_threading_info*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.ifnet_poll_params* %1, %struct.ifnet_poll_params** %5, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %8 = icmp ne %struct.ifnet* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %5, align 8
  %11 = icmp ne %struct.ifnet_poll_params* %10, null
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @VERIFY(i32 %14)
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IFEF_RXPOLL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 1
  %25 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %24, align 8
  store %struct.dlil_threading_info* %25, %struct.dlil_threading_info** %6, align 8
  %26 = icmp eq %struct.dlil_threading_info* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %12
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %3, align 4
  br label %68

29:                                               ; preds = %22
  %30 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %5, align 8
  %31 = call i32 @bzero(%struct.ifnet_poll_params* %30, i32 24)
  %32 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %33 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %32, i32 0, i32 0
  %34 = call i32 @lck_mtx_lock(i32* %33)
  %35 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %36 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %5, align 8
  %39 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %41 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %5, align 8
  %44 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %46 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %5, align 8
  %49 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %51 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %5, align 8
  %54 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %56 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %5, align 8
  %59 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %61 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %5, align 8
  %64 = getelementptr inbounds %struct.ifnet_poll_params, %struct.ifnet_poll_params* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %66 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %65, i32 0, i32 0
  %67 = call i32 @lck_mtx_unlock(i32* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %29, %27
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bzero(%struct.ifnet_poll_params*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
