; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_send_cellular_failed_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_send_cellular_failed_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netagent_wrapper = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kev_netpolicy_ifdenied = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Cellular\00", align 1
@NETAGENT_DOMAINSIZE = common dso_local global i32 0, align 4
@IFRTYPE_FUNCTIONAL_CELLULAR = common dso_local global i32 0, align 4
@KEV_NETPOLICY_IFFAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netagent_wrapper*, i32, i32)* @netagent_send_cellular_failed_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netagent_send_cellular_failed_event(%struct.netagent_wrapper* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.netagent_wrapper*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kev_netpolicy_ifdenied, align 4
  store %struct.netagent_wrapper* %0, %struct.netagent_wrapper** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %9 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NETAGENT_DOMAINSIZE, align 4
  %13 = call i64 @strncmp(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %31

16:                                               ; preds = %3
  %17 = call i32 @bzero(%struct.kev_netpolicy_ifdenied* %7, i32 12)
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds %struct.kev_netpolicy_ifdenied, %struct.kev_netpolicy_ifdenied* %7, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = getelementptr inbounds %struct.kev_netpolicy_ifdenied, %struct.kev_netpolicy_ifdenied* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @uuid_copy(i32 %23, i32 %24)
  %26 = load i32, i32* @IFRTYPE_FUNCTIONAL_CELLULAR, align 4
  %27 = getelementptr inbounds %struct.kev_netpolicy_ifdenied, %struct.kev_netpolicy_ifdenied* %7, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @KEV_NETPOLICY_IFFAILED, align 4
  %29 = getelementptr inbounds %struct.kev_netpolicy_ifdenied, %struct.kev_netpolicy_ifdenied* %7, i32 0, i32 0
  %30 = call i32 @netpolicy_post_msg(i32 %28, %struct.TYPE_4__* %29, i32 12)
  br label %31

31:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @bzero(%struct.kev_netpolicy_ifdenied*, i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local i32 @netpolicy_post_msg(i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
