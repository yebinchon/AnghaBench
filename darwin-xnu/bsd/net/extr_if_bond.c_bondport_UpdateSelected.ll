; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_UpdateSelected.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_UpdateSelected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32 }

@SelectedState_UNSELECTED = common dso_local global i32 0, align 4
@g_bond = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"[%s] updateSelected UNSELECTED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_17__*)* @bondport_UpdateSelected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bondport_UpdateSelected(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %5, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %6, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %7, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = call i64 @lacp_actor_partner_tlv_get_port(%struct.TYPE_18__* %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %61, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = call i64 @lacp_actor_partner_tlv_get_port_priority(%struct.TYPE_18__* %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %61, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 2
  %35 = call i64 @bcmp(i32 %32, i32* %34, i32 4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %29
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = call i64 @lacp_actor_partner_tlv_get_system_priority(%struct.TYPE_18__* %38)
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %61, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = call i64 @lacp_actor_partner_tlv_get_key(%struct.TYPE_18__* %45)
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %44
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @lacp_actor_partner_state_aggregatable(i32 %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @lacp_actor_partner_state_aggregatable(i32 %58)
  %60 = icmp ne i64 %55, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %51, %44, %37, %29, %22, %2
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = load i32, i32* @SelectedState_UNSELECTED, align 4
  %64 = call i32 @bondport_set_selected(%struct.TYPE_19__* %62, i32 %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_bond, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = call i32 @bondport_get_name(%struct.TYPE_19__* %70)
  %72 = call i32 @timestamp_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %61
  br label %74

74:                                               ; preds = %73, %51
  ret void
}

declare dso_local i64 @lacp_actor_partner_tlv_get_port(%struct.TYPE_18__*) #1

declare dso_local i64 @lacp_actor_partner_tlv_get_port_priority(%struct.TYPE_18__*) #1

declare dso_local i64 @bcmp(i32, i32*, i32) #1

declare dso_local i64 @lacp_actor_partner_tlv_get_system_priority(%struct.TYPE_18__*) #1

declare dso_local i64 @lacp_actor_partner_tlv_get_key(%struct.TYPE_18__*) #1

declare dso_local i64 @lacp_actor_partner_state_aggregatable(i32) #1

declare dso_local i32 @bondport_set_selected(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @timestamp_printf(i8*, i32) #1

declare dso_local i32 @bondport_get_name(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
