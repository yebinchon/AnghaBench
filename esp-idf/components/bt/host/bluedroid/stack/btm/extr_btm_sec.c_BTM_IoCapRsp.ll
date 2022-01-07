; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_IoCapRsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_IoCapRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [45 x i8] c"BTM_IoCapRsp: state: %s  oob: %d io_cap: %d\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BTM_PAIR_STATE_WAIT_LOCAL_IOCAPS = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_OOB_UNKNOWN = common dso_local global i64 0, align 8
@BTM_IO_CAP_MAX = common dso_local global i64 0, align 8
@BTM_PAIR_FLAGS_WE_STARTED_DD = common dso_local global i32 0, align 4
@BTM_AUTH_DD_BOND = common dso_local global i32 0, align 4
@BTM_AUTH_YN_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTM_IoCapRsp(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %10 = call i32 @btm_pair_state_descr(i64 %9)
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %11, i64 %12)
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %15 = load i64, i64* @BTM_PAIR_STATE_WAIT_LOCAL_IOCAPS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 3), align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @BD_ADDR_LEN, align 4
  %21 = call i64 @memcmp(i32 %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %4
  br label %51

24:                                               ; preds = %17
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @BTM_OOB_UNKNOWN, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @BTM_IO_CAP_MAX, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2, i32 0), align 8
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2, i32 1), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 8
  %36 = load i32, i32* @BTM_PAIR_FLAGS_WE_STARTED_DD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @BTM_AUTH_DD_BOND, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @BTM_AUTH_YN_BIT, align 4
  %43 = and i32 %41, %42
  %44 = or i32 %40, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %39, %32
  %46 = load i32, i32* %5, align 4
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @btsnd_hcic_io_cap_req_reply(i32 %46, i64 %47, i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %23, %45, %28, %24
  ret void
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32, i64, i64) #1

declare dso_local i32 @btm_pair_state_descr(i64) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @btsnd_hcic_io_cap_req_reply(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
