; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_hci_disc_comp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_hci_disc_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_16__*, i8* }
%struct.TYPE_16__ = type { i32 (i64, i32, i8*, i64, i64)* }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_18__*, %struct.TYPE_18__**, i32, i32, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_18__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }

@TRUE = common dso_local global i8* null, align 8
@BT_TRANSPORT_BR_EDR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@btm_cb = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@HCI_ERR_HOST_REJECT_SECURITY = common dso_local global i64 0, align 8
@LST_DISCONNECTING = common dso_local global i32 0, align 4
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@L2CEVT_LP_DISCONNECT_IND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"l2c_link_hci_disc_comp: Restarting pending ACL request\00", align 1
@l2cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@LST_CONNECT_HOLDING = common dso_local global i32 0, align 4
@L2CAP_FIRST_FIXED_CHNL = common dso_local global i64 0, align 8
@L2CAP_NUM_FIXED_CHNLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @l2c_link_hci_disc_comp(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %12 = load i8*, i8** @TRUE, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** @TRUE, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i64, i64* @BT_TRANSPORT_BR_EDR, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.TYPE_17__* @l2cu_find_lcb_by_handle(i32 %15)
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %5, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = call i32 (...) @BTM_Recovery_Pre_State()
  %21 = load i8*, i8** @FALSE, align 8
  store i8* %21, i8** %7, align 8
  br label %148

22:                                               ; preds = %2
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 0), align 8
  %24 = load i64, i64* @HCI_ERR_HOST_REJECT_SECURITY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 0), align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @btm_cb, i32 0, i32 0), align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @LST_DISCONNECTING, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** @FALSE, align 8
  %45 = call i32 @btm_ble_update_link_topology_mask(i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %40, %28
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  store %struct.TYPE_18__* %50, %struct.TYPE_18__** %6, align 8
  br label %51

51:                                               ; preds = %67, %46
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = icmp ne %struct.TYPE_18__* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  store %struct.TYPE_18__* %57, %struct.TYPE_18__** %10, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = icmp ne %struct.TYPE_18__* %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = load i32, i32* @L2CEVT_LP_DISCONNECT_IND, align 4
  %66 = call i32 @l2c_csm_execute(%struct.TYPE_18__* %64, i32 %65, i64* %4)
  br label %67

67:                                               ; preds = %63, %54
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %6, align 8
  br label %51

69:                                               ; preds = %51
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BT_TRANSPORT_BR_EDR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @btm_sco_acl_removed(i32 %78)
  br label %80

80:                                               ; preds = %75, %69
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = icmp ne %struct.TYPE_18__* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = icmp ne %struct.TYPE_18__* %89, null
  br i1 %90, label %91, label %139

91:                                               ; preds = %86, %80
  %92 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %9, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %130

101:                                              ; preds = %91
  %102 = load i8*, i8** @FALSE, align 8
  store i8* %102, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @l2cb, i32 0, i32 1), align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @btm_acl_removed(i32 %105, i64 %108)
  br label %110

110:                                              ; preds = %117, %101
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @list_is_empty(i32 %113)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  br i1 %116, label %117, label %129

117:                                              ; preds = %110
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i32* @list_front(i32 %120)
  store i32* %121, i32** %11, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 @list_remove(i32 %124, i32* %125)
  %127 = load i32*, i32** %11, align 8
  %128 = call i32 @osi_free(i32* %127)
  br label %110

129:                                              ; preds = %110
  br label %131

130:                                              ; preds = %91
  br label %131

131:                                              ; preds = %130, %129
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %133 = load i64, i64* %9, align 8
  %134 = call i64 @l2cu_create_conn(%struct.TYPE_17__* %132, i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i8*, i8** @FALSE, align 8
  store i8* %137, i8** %8, align 8
  br label %138

138:                                              ; preds = %136, %131
  br label %139

139:                                              ; preds = %138, %86
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %141, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %146 = call i32 @l2cu_release_lcb(%struct.TYPE_17__* %145)
  br label %147

147:                                              ; preds = %144, %139
  br label %148

148:                                              ; preds = %147, %19
  %149 = load i8*, i8** %8, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = load i32, i32* @LST_CONNECT_HOLDING, align 4
  %153 = call %struct.TYPE_17__* @l2cu_find_lcb_by_state(i32 %152)
  store %struct.TYPE_17__* %153, %struct.TYPE_17__** %5, align 8
  %154 = icmp ne %struct.TYPE_17__* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %157 = load i64, i64* @BT_TRANSPORT_BR_EDR, align 8
  %158 = call i64 @l2cu_create_conn(%struct.TYPE_17__* %156, i64 %157)
  br label %159

159:                                              ; preds = %155, %151, %148
  %160 = load i8*, i8** %7, align 8
  ret i8* %160
}

declare dso_local %struct.TYPE_17__* @l2cu_find_lcb_by_handle(i32) #1

declare dso_local i32 @BTM_Recovery_Pre_State(...) #1

declare dso_local i32 @btm_ble_update_link_topology_mask(i32, i8*) #1

declare dso_local i32 @l2c_csm_execute(%struct.TYPE_18__*, i32, i64*) #1

declare dso_local i32 @btm_sco_acl_removed(i32) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*) #1

declare dso_local i32 @btm_acl_removed(i32, i64) #1

declare dso_local i32 @list_is_empty(i32) #1

declare dso_local i32* @list_front(i32) #1

declare dso_local i32 @list_remove(i32, i32*) #1

declare dso_local i32 @osi_free(i32*) #1

declare dso_local i64 @l2cu_create_conn(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @l2cu_release_lcb(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @l2cu_find_lcb_by_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
