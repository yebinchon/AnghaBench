; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_main.c_l2c_data_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_main.c_l2c_data_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"L2CAP - no CCB for L2CA_DataWrite, CID: %d\00", align 1
@L2CAP_DW_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"L2CAP - CID: 0x%04x  cannot send message bigger than peer's mtu size\00", align 1
@.str.2 = private unnamed_addr constant [90 x i8] c"L2CAP - CID: 0x%04x cannot send, already congested  xmit_hold_q.count: %u  buff_quota: %u\00", align 1
@L2CEVT_L2CA_DATA_WRITE = common dso_local global i32 0, align 4
@L2CAP_DW_CONGESTED = common dso_local global i32 0, align 4
@L2CAP_DW_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2c_data_write(i32 %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_10__* @l2cu_find_ccb_by_cid(i32* null, i32 %9)
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %8, align 8
  %11 = icmp eq %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = call i32 @osi_free(%struct.TYPE_11__* %15)
  %17 = load i32, i32* @L2CAP_DW_FAILED, align 4
  store i32 %17, i32* %4, align 4
  br label %69

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %21, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = call i32 @osi_free(%struct.TYPE_11__* %30)
  %32 = load i32, i32* @L2CAP_DW_FAILED, align 4
  store i32 %32, i32* %4, align 4
  br label %69

33:                                               ; preds = %18
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %33
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fixed_queue_length(i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %48, i32 %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = call i32 @osi_free(%struct.TYPE_11__* %53)
  %55 = load i32, i32* @L2CAP_DW_FAILED, align 4
  store i32 %55, i32* %4, align 4
  br label %69

56:                                               ; preds = %33
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = load i32, i32* @L2CEVT_L2CA_DATA_WRITE, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = call i32 @l2c_csm_execute(%struct.TYPE_10__* %57, i32 %58, %struct.TYPE_11__* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @L2CAP_DW_CONGESTED, align 4
  store i32 %66, i32* %4, align 4
  br label %69

67:                                               ; preds = %56
  %68 = load i32, i32* @L2CAP_DW_SUCCESS, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %65, %41, %27, %12
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_10__* @l2cu_find_ccb_by_cid(i32*, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_11__*) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i32, i32, i32) #1

declare dso_local i32 @fixed_queue_length(i32) #1

declare dso_local i32 @l2c_csm_execute(%struct.TYPE_10__*, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
