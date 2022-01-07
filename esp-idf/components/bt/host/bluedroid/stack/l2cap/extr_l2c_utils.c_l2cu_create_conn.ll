; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_create_conn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_create_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_9__ = type { i32 (...)* }

@l2cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@BLE_ADDR_UNKNOWN_TYPE = common dso_local global i64 0, align 8
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@BLE_ADDR_TYPE_MAX = common dso_local global i64 0, align 8
@BLE_ADDR_PUBLIC = common dso_local global i64 0, align 8
@MAX_L2CAP_LINKS = common dso_local global i32 0, align 4
@HCI_ROLE_SLAVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"l2cu_create_conn - btm_is_sco_active_by_bdaddr() is_sco_active = %s\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@LST_CONNECTING_WAIT_SWITCH = common dso_local global i32 0, align 4
@HCI_ROLE_MASTER = common dso_local global i64 0, align 8
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BTU_TTYPE_L2CAP_LINK = common dso_local global i32 0, align 4
@L2CAP_LINK_ROLE_SWITCH_TOUT = common dso_local global i32 0, align 4
@LST_CONNECTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @l2cu_create_conn(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @l2cb, i32 0, i32 0), align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 0
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @BLE_ADDR_UNKNOWN_TYPE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @BTM_ReadDevInfo(i32 %22, i32* %9, i64* %10)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = call %struct.TYPE_9__* (...) @controller_get_interface()
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32 (...)*, i32 (...)** %30, align 8
  %32 = call i32 (...) %31()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %3, align 8
  br label %128

36:                                               ; preds = %28
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @BLE_ADDR_TYPE_MAX, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* @BLE_ADDR_PUBLIC, align 8
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 7
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 6
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = call i64 @l2cble_create_conn(%struct.TYPE_7__* %49)
  store i64 %50, i64* %3, align 8
  br label %128

51:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @l2cb, i32 0, i32 0), align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 0
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %7, align 8
  br label %54

54:                                               ; preds = %117, %51
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %122

58:                                               ; preds = %54
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = icmp eq %struct.TYPE_7__* %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %117

63:                                               ; preds = %58
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %116

68:                                               ; preds = %63
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HCI_ROLE_SLAVE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %116

74:                                               ; preds = %68
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @btm_is_sco_active_by_bdaddr(i32 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @TRUE, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %84 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %83)
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @TRUE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %117

89:                                               ; preds = %74
  %90 = call i32 (...) @BTM_ReadLocalFeatures()
  %91 = call i64 @HCI_SWITCH_SUPPORTED(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %89
  %94 = load i32, i32* @LST_CONNECTING_WAIT_SWITCH, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %104 = call i64 @BTM_SwitchRole(i32 %102, i64 %103, i32* null)
  %105 = load i64, i64* @BTM_CMD_STARTED, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %93
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i32, i32* @BTU_TTYPE_L2CAP_LINK, align 4
  %111 = load i32, i32* @L2CAP_LINK_ROLE_SWITCH_TOUT, align 4
  %112 = call i32 @btu_start_timer(i32* %109, i32 %110, i32 %111)
  %113 = load i64, i64* @TRUE, align 8
  store i64 %113, i64* %3, align 8
  br label %128

114:                                              ; preds = %93
  br label %115

115:                                              ; preds = %114, %89
  br label %116

116:                                              ; preds = %115, %68, %63
  br label %117

117:                                              ; preds = %116, %88, %62
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 1
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %7, align 8
  br label %54

122:                                              ; preds = %54
  %123 = load i32, i32* @LST_CONNECTING, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = call i64 @l2cu_create_conn_after_switch(%struct.TYPE_7__* %126)
  store i64 %127, i64* %3, align 8
  br label %128

128:                                              ; preds = %122, %107, %42, %34
  %129 = load i64, i64* %3, align 8
  ret i64 %129
}

declare dso_local i32 @BTM_ReadDevInfo(i32, i32*, i64*) #1

declare dso_local %struct.TYPE_9__* @controller_get_interface(...) #1

declare dso_local i64 @l2cble_create_conn(%struct.TYPE_7__*) #1

declare dso_local i64 @btm_is_sco_active_by_bdaddr(i32) #1

declare dso_local i32 @L2CAP_TRACE_API(i8*, i8*) #1

declare dso_local i64 @HCI_SWITCH_SUPPORTED(i32) #1

declare dso_local i32 @BTM_ReadLocalFeatures(...) #1

declare dso_local i64 @BTM_SwitchRole(i32, i64, i32*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i64 @l2cu_create_conn_after_switch(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
