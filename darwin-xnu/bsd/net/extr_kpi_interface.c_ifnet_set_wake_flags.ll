; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_wake_flags.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_wake_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32 }
%struct.kev_msg = type { i32, %struct.TYPE_8__*, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.net_event_data* }
%struct.net_event_data = type { i32, %struct.TYPE_8__*, i32, i32*, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IF_WAKE_VALID_FLAGS = common dso_local global i32 0, align 4
@IF_WAKE_ON_MAGIC_PACKET = common dso_local global i32 0, align 4
@IFXF_WAKE_ON_MAGIC_PACKET = common dso_local global i32 0, align 4
@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_NETWORK_CLASS = common dso_local global i32 0, align 4
@KEV_DL_SUBCLASS = common dso_local global i32 0, align 4
@KEV_DL_WAKEFLAGS_CHANGED = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_set_wake_flags(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kev_msg, align 8
  %9 = alloca %struct.net_event_data, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 @bzero(%struct.net_event_data* %9, i32 48)
  %11 = bitcast %struct.kev_msg* %8 to %struct.net_event_data*
  %12 = call i32 @bzero(%struct.net_event_data* %11, i32 48)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %98

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @IF_WAKE_VALID_FLAGS, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %98

27:                                               ; preds = %17
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = call i32 @ifnet_lock_exclusive(%struct.TYPE_9__* %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @IF_WAKE_ON_MAGIC_PACKET, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @IF_WAKE_ON_MAGIC_PACKET, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @IFXF_WAKE_ON_MAGIC_PACKET, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %52

45:                                               ; preds = %34
  %46 = load i32, i32* @IFXF_WAKE_ON_MAGIC_PACKET, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %45, %39
  br label %53

53:                                               ; preds = %52, %27
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = call i32 @ifnet_lock_done(%struct.TYPE_9__* %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = call i32 @ifnet_touch_lastchange(%struct.TYPE_9__* %56)
  %58 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %59 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %8, i32 0, i32 7
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @KEV_NETWORK_CLASS, align 4
  %61 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %8, i32 0, i32 6
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* @KEV_DL_SUBCLASS, align 4
  %63 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %8, i32 0, i32 5
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @KEV_DL_WAKEFLAGS_CHANGED, align 4
  %65 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %8, i32 0, i32 4
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.net_event_data, %struct.net_event_data* %9, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IFNAMSIZ, align 4
  %73 = call i32 @strlcpy(i32* %68, i32 %71, i32 %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.net_event_data, %struct.net_event_data* %9, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds %struct.net_event_data, %struct.net_event_data* %9, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %8, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 48, i32* %86, align 8
  %87 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %8, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store %struct.net_event_data* %9, %struct.net_event_data** %90, align 8
  %91 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %8, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = bitcast %struct.kev_msg* %8 to %struct.net_event_data*
  %97 = call i32 @dlil_post_complete_msg(%struct.TYPE_9__* %95, %struct.net_event_data* %96)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %53, %25, %15
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @bzero(%struct.net_event_data*, i32) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.TYPE_9__*) #1

declare dso_local i32 @ifnet_lock_done(%struct.TYPE_9__*) #1

declare dso_local i32 @ifnet_touch_lastchange(%struct.TYPE_9__*) #1

declare dso_local i32 @strlcpy(i32*, i32, i32) #1

declare dso_local i32 @dlil_post_complete_msg(%struct.TYPE_9__*, %struct.net_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
