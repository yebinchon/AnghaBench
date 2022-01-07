; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_udp_close_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_udp_close_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfil_sock_udp_close_wait(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %3 = load %struct.socket*, %struct.socket** %2, align 8
  %4 = call i32 @socket_lock_assert_owned(%struct.socket* %3)
  br label %5

5:                                                ; preds = %19, %1
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = load i32, i32* @FALSE, align 4
  %8 = call i64 @cfil_filters_udp_attached(%struct.socket* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = load i32, i32* @SHUT_RDWR, align 4
  %13 = call i32 @cfil_sock_udp_notify_shutdown(%struct.socket* %11, i32 %12, i32 0, i32 0)
  %14 = load %struct.socket*, %struct.socket** %2, align 8
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i64 @cfil_filters_udp_attached(%struct.socket* %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %20

19:                                               ; preds = %10
  br label %5

20:                                               ; preds = %18, %5
  ret void
}

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i64 @cfil_filters_udp_attached(%struct.socket*, i32) #1

declare dso_local i32 @cfil_sock_udp_notify_shutdown(%struct.socket*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
