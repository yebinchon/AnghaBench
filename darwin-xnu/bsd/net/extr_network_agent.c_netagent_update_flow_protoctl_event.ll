; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_update_flow_protoctl_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_update_flow_protoctl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netagent_session = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot assign nexus from NULL session\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Session has no agent\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netagent_update_flow_protoctl_event(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.netagent_session*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %7, align 8
  %15 = inttoptr i64 %14 to %struct.netagent_session*
  store %struct.netagent_session* %15, %struct.netagent_session** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.netagent_session*, %struct.netagent_session** %12, align 8
  %17 = icmp eq %struct.netagent_session* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = call i32 @NETAGENTLOG0(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %6, align 4
  br label %44

22:                                               ; preds = %5
  %23 = load %struct.netagent_session*, %struct.netagent_session** %12, align 8
  %24 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp eq %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = call i32 @NETAGENTLOG0(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOENT, align 4
  store i32 %30, i32* %6, align 4
  br label %44

31:                                               ; preds = %22
  %32 = load %struct.netagent_session*, %struct.netagent_session** %12, align 8
  %33 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @necp_update_flow_protoctl_event(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %31, %27, %18
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @NETAGENTLOG0(i32, i8*) #1

declare dso_local i32 @necp_update_flow_protoctl_event(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
