; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_receive_machine_current.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_receive_machine_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.timeval = type { i32, i32 }

@g_bond = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"[%s] Receive CURRENT\0A\00", align 1
@ReceiveState_CURRENT = common dso_local global i32 0, align 4
@LACP_SHORT_TIMEOUT_TIME = common dso_local global i32 0, align 4
@LACP_LONG_TIMEOUT_TIME = common dso_local global i32 0, align 4
@LAEventStart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i8*)* @bondport_receive_machine_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bondport_receive_machine_current(%struct.TYPE_12__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.timeval, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %69 [
    i32 129, label %10
    i32 128, label %65
  ]

10:                                               ; preds = %3
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @devtimer_cancel(i32 %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_bond, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = call i32 @bondport_get_name(%struct.TYPE_12__* %20)
  %22 = call i32 @timestamp_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %10
  %24 = load i32, i32* @ReceiveState_CURRENT, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @bondport_UpdateSelected(%struct.TYPE_12__* %27, i8* %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @bondport_UpdateNTT(%struct.TYPE_12__* %30, i8* %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @bondport_RecordPDU(%struct.TYPE_12__* %33, i8* %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lacp_actor_partner_state_set_not_expired(i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = call i32 @bondport_assign_to_LAG(%struct.TYPE_12__* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %7, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @lacp_actor_partner_state_short_timeout(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %23
  %52 = load i32, i32* @LACP_SHORT_TIMEOUT_TIME, align 4
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  br label %57

54:                                               ; preds = %23
  %55 = load i32, i32* @LACP_LONG_TIMEOUT_TIME, align 4
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 0, i32* %58, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = bitcast %struct.timeval* %8 to i64*
  %63 = load i64, i64* %62, align 4
  %64 = call i32 @devtimer_set_relative(i32 %61, i64 %63, i32 ptrtoint (void (%struct.TYPE_12__*, i32, i8*)* @bondport_receive_machine_current to i32), i8* inttoptr (i64 128 to i8*), i32* null)
  br label %70

65:                                               ; preds = %3
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = load i32, i32* @LAEventStart, align 4
  %68 = call i32 @bondport_receive_machine_expired(%struct.TYPE_12__* %66, i32 %67, i32* null)
  br label %70

69:                                               ; preds = %3
  br label %70

70:                                               ; preds = %69, %65, %57
  ret void
}

declare dso_local i32 @devtimer_cancel(i32) #1

declare dso_local i32 @timestamp_printf(i8*, i32) #1

declare dso_local i32 @bondport_get_name(%struct.TYPE_12__*) #1

declare dso_local i32 @bondport_UpdateSelected(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @bondport_UpdateNTT(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @bondport_RecordPDU(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @lacp_actor_partner_state_set_not_expired(i32) #1

declare dso_local i32 @bondport_assign_to_LAG(%struct.TYPE_12__*) #1

declare dso_local i32 @lacp_actor_partner_state_short_timeout(i32) #1

declare dso_local i32 @devtimer_set_relative(i32, i64, i32, i8*, i32*) #1

declare dso_local i32 @bondport_receive_machine_expired(%struct.TYPE_12__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
