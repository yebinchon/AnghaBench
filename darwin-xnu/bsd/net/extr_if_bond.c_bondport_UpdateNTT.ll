; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_UpdateNTT.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_UpdateNTT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, i32 }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }

@g_bond = common dso_local global %struct.TYPE_19__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"[%s] updateNTT: Need To Transmit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_15__*)* @bondport_UpdateNTT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bondport_UpdateNTT(%struct.TYPE_18__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %6, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = call i64 @lacp_actor_partner_tlv_get_port(%struct.TYPE_16__* %14)
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = call i64 @bondport_get_index(%struct.TYPE_18__* %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %58, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = call i64 @lacp_actor_partner_tlv_get_port_priority(%struct.TYPE_16__* %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %58, label %26

26:                                               ; preds = %19
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** @g_bond, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 2
  %32 = call i64 @bcmp(i32 %29, i32* %31, i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = call i64 @lacp_actor_partner_tlv_get_system_priority(%struct.TYPE_16__* %35)
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** @g_bond, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %58, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = call i64 @lacp_actor_partner_tlv_get_key(%struct.TYPE_16__* %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %58, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @updateNTTBits(i32 %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @updateNTTBits(i32 %55)
  %57 = icmp ne i64 %52, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %48, %41, %34, %26, %19, %2
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = call i32 @bondport_flags_set_ntt(%struct.TYPE_18__* %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** @g_bond, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %67 = call i32 @bondport_get_name(%struct.TYPE_18__* %66)
  %68 = call i32 @timestamp_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %58
  br label %70

70:                                               ; preds = %69, %48
  ret void
}

declare dso_local i64 @lacp_actor_partner_tlv_get_port(%struct.TYPE_16__*) #1

declare dso_local i64 @bondport_get_index(%struct.TYPE_18__*) #1

declare dso_local i64 @lacp_actor_partner_tlv_get_port_priority(%struct.TYPE_16__*) #1

declare dso_local i64 @bcmp(i32, i32*, i32) #1

declare dso_local i64 @lacp_actor_partner_tlv_get_system_priority(%struct.TYPE_16__*) #1

declare dso_local i64 @lacp_actor_partner_tlv_get_key(%struct.TYPE_16__*) #1

declare dso_local i64 @updateNTTBits(i32) #1

declare dso_local i32 @bondport_flags_set_ntt(%struct.TYPE_18__*) #1

declare dso_local i32 @timestamp_printf(i8*, i32) #1

declare dso_local i32 @bondport_get_name(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
