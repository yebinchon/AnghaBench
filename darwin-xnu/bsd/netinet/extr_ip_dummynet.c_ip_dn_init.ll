; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_ip_dn_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_ip_dn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_7__*, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@dn_mutex_grp_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"dn\00", align 1
@dn_mutex_grp = common dso_local global i32 0, align 4
@dn_mutex_attr = common dso_local global i32 0, align 4
@dn_mutex = common dso_local global i32 0, align 4
@ready_heap = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@wfq_ready_heap = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@extract_heap = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ip_dn_ctl = common dso_local global i32 0, align 4
@ip_dn_ctl_ptr = common dso_local global i32 0, align 4
@dummynet_io = common dso_local global i32 0, align 4
@ip_dn_io_ptr = common dso_local global i32 0, align 4
@default_rule = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@IPFW_DEFAULT_RULE = common dso_local global i32 0, align 4
@O_ACCEPT = common dso_local global i32 0, align 4
@O_DENY = common dso_local global i32 0, align 4
@RESVD_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_dn_init() #0 {
  %1 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %1, i32* @dn_mutex_grp_attr, align 4
  %2 = load i32, i32* @dn_mutex_grp_attr, align 4
  %3 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %2)
  store i32 %3, i32* @dn_mutex_grp, align 4
  %4 = call i32 (...) @lck_attr_alloc_init()
  store i32 %4, i32* @dn_mutex_attr, align 4
  %5 = load i32, i32* @dn_mutex, align 4
  %6 = load i32, i32* @dn_mutex_grp, align 4
  %7 = load i32, i32* @dn_mutex_attr, align 4
  %8 = call i32 @lck_mtx_init(i32 %5, i32 %6, i32 %7)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ready_heap, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ready_heap, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ready_heap, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wfq_ready_heap, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wfq_ready_heap, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wfq_ready_heap, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @extract_heap, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @extract_heap, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @extract_heap, i32 0, i32 0), align 8
  %9 = load i32, i32* @ip_dn_ctl, align 4
  store i32 %9, i32* @ip_dn_ctl_ptr, align 4
  %10 = load i32, i32* @dummynet_io, align 4
  store i32 %10, i32* @ip_dn_io_ptr, align 4
  %11 = call i32 @bzero(%struct.TYPE_11__* @default_rule, i32 32)
  ret void
}

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_mtx_init(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
