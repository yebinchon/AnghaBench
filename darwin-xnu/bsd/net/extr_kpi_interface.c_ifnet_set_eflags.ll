; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_eflags.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_eflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.kev_msg = type { %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.net_event_data* }
%struct.net_event_data = type { %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@IFEF_AWDL_RESTRICTED = common dso_local global i32 0, align 4
@KEV_DL_AWDL_RESTRICTED = common dso_local global i64 0, align 8
@KEV_DL_AWDL_UNRESTRICTED = common dso_local global i64 0, align 8
@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_NETWORK_CLASS = common dso_local global i32 0, align 4
@KEV_DL_SUBCLASS = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_set_eflags(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kev_msg, align 8
  %10 = alloca %struct.net_event_data, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %118

15:                                               ; preds = %3
  %16 = bitcast %struct.kev_msg* %9 to %struct.net_event_data*
  %17 = call i32 @bzero(%struct.net_event_data* %16, i32 40)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = call i32 @ifnet_lock_exclusive(%struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = call i64 @ifnet_awdl_check_eflags(%struct.TYPE_9__* %20, i32* %6, i32* %7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = call i32 @ifnet_lock_done(%struct.TYPE_9__* %24)
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %118

27:                                               ; preds = %15
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = or i32 %33, %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = call i32 @ifnet_lock_done(%struct.TYPE_9__* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFEF_AWDL_RESTRICTED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %27
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @IFEF_AWDL_RESTRICTED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i64, i64* @KEV_DL_AWDL_RESTRICTED, align 8
  %58 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 7
  store i64 %57, i64* %58, align 8
  br label %75

59:                                               ; preds = %51, %27
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @IFEF_AWDL_RESTRICTED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFEF_AWDL_RESTRICTED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i64, i64* @KEV_DL_AWDL_UNRESTRICTED, align 8
  %73 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 7
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %64, %59
  br label %75

75:                                               ; preds = %74, %56
  %76 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %117

79:                                               ; preds = %75
  %80 = call i32 @bzero(%struct.net_event_data* %10, i32 40)
  %81 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %82 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 6
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @KEV_NETWORK_CLASS, align 4
  %84 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 5
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* @KEV_DL_SUBCLASS, align 4
  %86 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 4
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.net_event_data, %struct.net_event_data* %10, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IFNAMSIZ, align 4
  %93 = call i32 @strlcpy(i32 %88, i32 %91, i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.net_event_data, %struct.net_event_data* %10, i32 0, i32 2
  store i32 %96, i32* %97, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.net_event_data, %struct.net_event_data* %10, i32 0, i32 1
  store i32 %100, i32* %101, align 8
  %102 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 40, i32* %105, align 8
  %106 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store %struct.net_event_data* %10, %struct.net_event_data** %109, align 8
  %110 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %115 = bitcast %struct.kev_msg* %9 to %struct.net_event_data*
  %116 = call i32 @dlil_post_complete_msg(%struct.TYPE_9__* %114, %struct.net_event_data* %115)
  br label %117

117:                                              ; preds = %79, %75
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %23, %13
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @bzero(%struct.net_event_data*, i32) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.TYPE_9__*) #1

declare dso_local i64 @ifnet_awdl_check_eflags(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @ifnet_lock_done(%struct.TYPE_9__*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @dlil_post_complete_msg(%struct.TYPE_9__*, %struct.net_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
