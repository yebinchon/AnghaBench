; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_resubmit_pending_sec_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_resubmit_pending_sec_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@.str = private unnamed_addr constant [41 x i8] c"l2cu_resubmit_pending_sec_req  p_bda: %p\00", align 1
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@L2CEVT_SEC_RE_SEND_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"l2cu_resubmit_pending_sec_req - unknown BD_ADDR\00", align 1
@l2cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@MAX_L2CAP_LINKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_resubmit_pending_sec_req(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load i64, i64* %2, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %14 = call %struct.TYPE_8__* @l2cu_find_lcb_by_bd_addr(i64 %12, i32 %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %3, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %4, align 8
  br label %22

22:                                               ; preds = %32, %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %5, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = load i32, i32* @L2CEVT_SEC_RE_SEND_CMD, align 4
  %31 = call i32 @l2c_csm_execute(%struct.TYPE_9__* %29, i32 %30, i32* null)
  br label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %4, align 8
  br label %22

34:                                               ; preds = %22
  br label %37

35:                                               ; preds = %11
  %36 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %34
  br label %75

38:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @l2cb, i32 0, i32 0), align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 0
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %3, align 8
  br label %41

41:                                               ; preds = %69, %38
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %4, align 8
  br label %55

55:                                               ; preds = %65, %50
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %5, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = load i32, i32* @L2CEVT_SEC_RE_SEND_CMD, align 4
  %64 = call i32 @l2c_csm_execute(%struct.TYPE_9__* %62, i32 %63, i32* null)
  br label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %4, align 8
  br label %55

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %45
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 1
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %3, align 8
  br label %41

74:                                               ; preds = %41
  br label %75

75:                                               ; preds = %74, %37
  ret void
}

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i64) #1

declare dso_local %struct.TYPE_8__* @l2cu_find_lcb_by_bd_addr(i64, i32) #1

declare dso_local i32 @l2c_csm_execute(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
