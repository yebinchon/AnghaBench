; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_capabilities_enabled.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_capabilities_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i32, i32 }
%struct.kev_msg = type { i32, %struct.TYPE_7__*, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.net_event_data* }
%struct.net_event_data = type { i32, %struct.TYPE_7__*, i32, i32*, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFCAP_VALID = common dso_local global i32 0, align 4
@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_NETWORK_CLASS = common dso_local global i32 0, align 4
@KEV_DL_SUBCLASS = common dso_local global i32 0, align 4
@KEV_DL_IFCAP_CHANGED = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_set_capabilities_enabled(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kev_msg, align 8
  %11 = alloca %struct.net_event_data, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = icmp eq %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %95

16:                                               ; preds = %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = call i32 @ifnet_lock_exclusive(%struct.TYPE_8__* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = or i32 %21, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @IFCAP_VALID, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34, %16
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %8, align 4
  br label %48

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = call i32 @ifnet_lock_done(%struct.TYPE_8__* %49)
  %51 = call i32 @bzero(%struct.net_event_data* %11, i32 48)
  %52 = bitcast %struct.kev_msg* %10 to %struct.net_event_data*
  %53 = call i32 @bzero(%struct.net_event_data* %52, i32 48)
  %54 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %55 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 7
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @KEV_NETWORK_CLASS, align 4
  %57 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 6
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* @KEV_DL_SUBCLASS, align 4
  %59 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 5
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @KEV_DL_IFCAP_CHANGED, align 4
  %61 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 4
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.net_event_data, %struct.net_event_data* %11, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFNAMSIZ, align 4
  %69 = call i32 @strlcpy(i32* %64, i32 %67, i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.net_event_data, %struct.net_event_data* %11, i32 0, i32 2
  store i32 %72, i32* %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds %struct.net_event_data, %struct.net_event_data* %11, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 48, i32* %82, align 8
  %83 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store %struct.net_event_data* %11, %struct.net_event_data** %86, align 8
  %87 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = bitcast %struct.kev_msg* %10 to %struct.net_event_data*
  %93 = call i32 @dlil_post_complete_msg(%struct.TYPE_8__* %91, %struct.net_event_data* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %48, %14
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @ifnet_lock_exclusive(%struct.TYPE_8__*) #1

declare dso_local i32 @ifnet_lock_done(%struct.TYPE_8__*) #1

declare dso_local i32 @bzero(%struct.net_event_data*, i32) #1

declare dso_local i32 @strlcpy(i32*, i32, i32) #1

declare dso_local i32 @dlil_post_complete_msg(%struct.TYPE_8__*, %struct.net_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
