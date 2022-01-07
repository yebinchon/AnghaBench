; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_post_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_post_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kev_msg = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.kev_netagent_data* }
%struct.kev_netagent_data = type { i32 }

@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_NETWORK_CLASS = common dso_local global i32 0, align 4
@KEV_NETAGENT_SUBCLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @netagent_post_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netagent_post_event(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kev_msg, align 8
  %8 = alloca %struct.kev_netagent_data, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 (...) @necp_update_all_clients()
  br label %13

13:                                               ; preds = %11, %3
  %14 = call i32 @memset(%struct.kev_msg* %7, i32 0, i32 24)
  %15 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %16 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @KEV_NETWORK_CLASS, align 4
  %18 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @KEV_NETAGENT_SUBCLASS, align 4
  %20 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.kev_netagent_data, %struct.kev_netagent_data* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @uuid_copy(i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store %struct.kev_netagent_data* %8, %struct.kev_netagent_data** %30, align 8
  %31 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %7, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 4, i32* %34, align 8
  %35 = call i32 @kev_post_msg(%struct.kev_msg* %7)
  ret void
}

declare dso_local i32 @necp_update_all_clients(...) #1

declare dso_local i32 @memset(%struct.kev_msg*, i32, i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local i32 @kev_post_msg(%struct.kev_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
