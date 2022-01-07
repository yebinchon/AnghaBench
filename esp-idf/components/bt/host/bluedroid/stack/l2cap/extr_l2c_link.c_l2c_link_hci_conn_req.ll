; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_hci_conn_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_hci_conn_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i8*, i32, i64 }

@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@HCI_ERR_HOST_REJECT_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"L2CAP failed to allocate LCB\00", align 1
@TRUE = common dso_local global i64 0, align 8
@l2cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@MAX_L2CAP_LINKS = common dso_local global i32 0, align 4
@HCI_ROLE_MASTER = common dso_local global i8* null, align 8
@HCI_ROLE_SLAVE = common dso_local global i8* null, align 8
@LST_CONNECTING = common dso_local global i64 0, align 8
@BTU_TTYPE_L2CAP_LINK = common dso_local global i32 0, align 4
@L2CAP_LINK_CONNECT_TOUT = common dso_local global i32 0, align 4
@LST_CONNECT_HOLDING = common dso_local global i64 0, align 8
@LST_DISCONNECTING = common dso_local global i64 0, align 8
@HCI_ERR_HOST_REJECT_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"L2CAP got conn_req while connected (state:%d). Reject it\0A\00", align 1
@HCI_ERR_CONNECTION_EXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @l2c_link_hci_conn_req(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %10 = call %struct.TYPE_6__* @l2cu_find_lcb_by_bd_addr(i32 %8, i32 %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %87, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i64, i64* @FALSE, align 8
  %16 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %17 = call %struct.TYPE_6__* @l2cu_allocate_lcb(i32 %14, i64 %15, i32 %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @HCI_ERR_HOST_REJECT_RESOURCES, align 4
  %23 = call i32 @btsnd_hcic_reject_conn(i32 %21, i32 %22)
  %24 = call i32 (i8*, ...) @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %2, align 8
  br label %143

26:                                               ; preds = %13
  %27 = load i64, i64* @TRUE, align 8
  store i64 %27, i64* %7, align 8
  store i32 0, i32* %6, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @l2cb, i32 0, i32 0), align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 0
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %5, align 8
  br label %30

30:                                               ; preds = %50, %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = icmp eq %struct.TYPE_6__* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %50

39:                                               ; preds = %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %7, align 8
  %46 = load i8*, i8** @HCI_ROLE_MASTER, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  br label %55

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 1
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %5, align 8
  br label %30

55:                                               ; preds = %44, %30
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @btm_dev_support_switch(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** @HCI_ROLE_SLAVE, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %71

66:                                               ; preds = %58
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = call i8* @l2cu_get_conn_role(%struct.TYPE_6__* %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %66, %62
  br label %72

72:                                               ; preds = %71, %55
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @btsnd_hcic_accept_conn(i32 %73, i8* %76)
  %78 = load i64, i64* @LST_CONNECTING, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* @BTU_TTYPE_L2CAP_LINK, align 4
  %84 = load i32, i32* @L2CAP_LINK_CONNECT_TOUT, align 4
  %85 = call i32 @btu_start_timer(i32* %82, i32 %83, i32 %84)
  %86 = load i64, i64* @TRUE, align 8
  store i64 %86, i64* %2, align 8
  br label %143

87:                                               ; preds = %1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @LST_CONNECTING, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LST_CONNECT_HOLDING, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %93, %87
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @btm_dev_support_switch(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** @HCI_ROLE_SLAVE, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %112

107:                                              ; preds = %99
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = call i8* @l2cu_get_conn_role(%struct.TYPE_6__* %108)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %107, %103
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @btsnd_hcic_accept_conn(i32 %113, i8* %116)
  %118 = load i64, i64* @LST_CONNECTING, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i64, i64* @TRUE, align 8
  store i64 %121, i64* %2, align 8
  br label %143

122:                                              ; preds = %93
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @LST_DISCONNECTING, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @HCI_ERR_HOST_REJECT_DEVICE, align 4
  %131 = call i32 @btsnd_hcic_reject_conn(i32 %129, i32 %130)
  br label %140

132:                                              ; preds = %122
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (i8*, ...) @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %135)
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @HCI_ERR_CONNECTION_EXISTS, align 4
  %139 = call i32 @btsnd_hcic_reject_conn(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %132, %128
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* @FALSE, align 8
  store i64 %142, i64* %2, align 8
  br label %143

143:                                              ; preds = %141, %112, %72, %20
  %144 = load i64, i64* %2, align 8
  ret i64 %144
}

declare dso_local %struct.TYPE_6__* @l2cu_find_lcb_by_bd_addr(i32, i32) #1

declare dso_local %struct.TYPE_6__* @l2cu_allocate_lcb(i32, i64, i32) #1

declare dso_local i32 @btsnd_hcic_reject_conn(i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, ...) #1

declare dso_local i32 @btm_dev_support_switch(i32) #1

declare dso_local i8* @l2cu_get_conn_role(%struct.TYPE_6__*) #1

declare dso_local i32 @btsnd_hcic_accept_conn(i32, i8*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
