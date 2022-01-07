; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sco.c_btm_sco_conn_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sco.c_btm_sco_conn_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (i64)*, %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i8*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 (i32, i32*)* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"btm_sco_conn_req: No one wants this SCO connection; rejecting it\00", align 1
@BTM_MAX_SCO_LINKS = common dso_local global i64 0, align 8
@HCI_ERR_HOST_REJECT_RESOURCES = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_ESCO_CONN_REQ_EVT = common dso_local global i32 0, align 4
@BTM_ESCO_LINK_ONLY_MASK = common dso_local global i32 0, align 4
@BTM_LINK_TYPE_ESCO = common dso_local global i64 0, align 8
@BTM_LINK_TYPE_SCO = common dso_local global i64 0, align 8
@BTM_SCO_EXCEPTION_PKTS_MASK = common dso_local global i32 0, align 4
@BTM_SCO_LINK_ONLY_MASK = common dso_local global i32 0, align 4
@DEV_CLASS_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i32 0, align 4
@SCO_ST_CONNECTING = common dso_local global i64 0, align 8
@SCO_ST_LISTENING = common dso_local global i64 0, align 8
@SCO_ST_UNUSED = common dso_local global i64 0, align 8
@SCO_ST_W4_CONN_RSP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@btm_cb = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_sco_conn_req(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = call i32 @BTM_TRACE_WARNING(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* @BTM_MAX_SCO_LINKS, align 8
  %9 = load i32, i32* @HCI_ERR_HOST_REJECT_RESOURCES, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @btm_esco_conn_rsp(i64 %8, i32 %9, i32 %10, i32* null)
  ret void
}

declare dso_local i32 @BTM_TRACE_WARNING(i8*) #1

declare dso_local i32 @btm_esco_conn_rsp(i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
