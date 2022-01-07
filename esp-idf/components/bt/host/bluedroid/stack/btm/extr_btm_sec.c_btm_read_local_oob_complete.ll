; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_read_local_oob_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_read_local_oob_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32*)* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"btm_read_local_oob_complete:%d\0A\00", align 1
@HCI_SUCCESS = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i32 0, align 4
@BTM_ERR_PROCESSING = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTM_SP_LOC_OOB_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_read_local_oob_complete(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %5 = load i64*, i64** %2, align 8
  %6 = getelementptr inbounds i64, i64* %5, i32 1
  store i64* %6, i64** %2, align 8
  %7 = load i64, i64* %5, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @HCI_SUCCESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @BTM_SUCCESS, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i64*, i64** %2, align 8
  %19 = call i32 @STREAM_TO_ARRAY16(i32 %17, i64* %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64*, i64** %2, align 8
  %23 = call i32 @STREAM_TO_ARRAY16(i32 %21, i64* %22)
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @BTM_ERR_PROCESSING, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %13
  %28 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %29 = icmp ne i32 (i32, i32*)* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %32 = load i32, i32* @BTM_SP_LOC_OOB_EVT, align 4
  %33 = bitcast %struct.TYPE_5__* %3 to i32*
  %34 = call i32 %31(i32 %32, i32* %33)
  br label %35

35:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i64) #1

declare dso_local i32 @STREAM_TO_ARRAY16(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
