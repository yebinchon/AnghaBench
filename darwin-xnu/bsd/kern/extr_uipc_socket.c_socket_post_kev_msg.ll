; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_socket_post_kev_msg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_socket_post_kev_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kev_socket_event_data = type { i32 }
%struct.kev_msg = type { %struct.TYPE_2__*, i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, %struct.kev_socket_event_data* }

@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_NETWORK_CLASS = common dso_local global i32 0, align 4
@KEV_SOCKET_SUBCLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @socket_post_kev_msg(i8* %0, %struct.kev_socket_event_data* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kev_socket_event_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kev_msg, align 8
  store i8* %0, i8** %4, align 8
  store %struct.kev_socket_event_data* %1, %struct.kev_socket_event_data** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 @bzero(%struct.kev_msg* %7, i32 32)
  %9 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %10 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 4
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @KEV_NETWORK_CLASS, align 4
  %12 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @KEV_SOCKET_SUBCLASS, align 4
  %14 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load %struct.kev_socket_event_data*, %struct.kev_socket_event_data** %5, align 8
  %18 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.kev_socket_event_data* %17, %struct.kev_socket_event_data** %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i8* %22, i8** %26, align 8
  %27 = call i32 @kev_post_msg(%struct.kev_msg* %7)
  ret void
}

declare dso_local i32 @bzero(%struct.kev_msg*, i32) #1

declare dso_local i32 @kev_post_msg(%struct.kev_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
