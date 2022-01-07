; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_netpolicy_post_msg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_netpolicy_post_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netpolicy_event_data = type { i32 }
%struct.kev_msg = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.netpolicy_event_data* }

@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_NETWORK_CLASS = common dso_local global i32 0, align 4
@KEV_NETPOLICY_SUBCLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netpolicy_post_msg(i32 %0, %struct.netpolicy_event_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netpolicy_event_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kev_msg, align 8
  store i32 %0, i32* %4, align 4
  store %struct.netpolicy_event_data* %1, %struct.netpolicy_event_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.netpolicy_event_data*, %struct.netpolicy_event_data** %5, align 8
  %9 = icmp ne %struct.netpolicy_event_data* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %12, 4
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i1 [ false, %3 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = call i32 @bzero(%struct.kev_msg* %7, i32 32)
  %19 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %20 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @KEV_NETWORK_CLASS, align 4
  %22 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @KEV_NETPOLICY_SUBCLASS, align 4
  %24 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.netpolicy_event_data*, %struct.netpolicy_event_data** %5, align 8
  %28 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store %struct.netpolicy_event_data* %27, %struct.netpolicy_event_data** %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = call i32 @kev_post_msg(%struct.kev_msg* %7)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bzero(%struct.kev_msg*, i32) #1

declare dso_local i32 @kev_post_msg(%struct.kev_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
