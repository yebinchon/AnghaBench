; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_initiate_inquiry.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_initiate_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [66 x i8] c"btm_initiate_inquiry: inq_active:0x%x state:%d inqfilt_active:%d\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@BTM_BLI_INQ_EVT = common dso_local global i32 0, align 4
@BTM_SSP_INQUIRY_ACTIVE = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_BR_INQUIRY_MASK = common dso_local global i32 0, align 4
@BTM_INQ_DB_SIZE = common dso_local global i64 0, align 8
@BTM_LIMITED_INQUIRY_ACTIVE = common dso_local global i32 0, align 4
@limited_inq_lap = common dso_local global i32 0, align 4
@general_inq_lap = common dso_local global i32 0, align 4
@BTM_PERIODIC_INQUIRY_ACTIVE = common dso_local global i32 0, align 4
@BT_DEFAULT_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @btm_initiate_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btm_initiate_inquiry(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %4, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 0, i32 2), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 0, i32 1), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @btm_cb, i32 0, i32 0, i32 0), align 4
  %10 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @BTM_BLI_INQ_EVT, align 4
  %12 = call i32 @btm_acl_update_busy_level(i32 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BTM_SSP_INQUIRY_ACTIVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load i32, i32* @BTM_NO_RESOURCES, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BTM_BR_INQUIRY_MASK, align 4
  %25 = and i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = call i32 @btm_process_inq_complete(i32 %20, i64 %26)
  br label %117

28:                                               ; preds = %1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BTM_INQ_DB_SIZE, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  br label %40

38:                                               ; preds = %28
  %39 = load i64, i64* @BTM_INQ_DB_SIZE, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i64 [ %37, %34 ], [ %39, %38 ]
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BTM_LIMITED_INQUIRY_ACTIVE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32* @limited_inq_lap, i32* @general_inq_lap
  store i32* %51, i32** %3, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BTM_PERIODIC_INQUIRY_ACTIVE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %40
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @btsnd_hcic_per_inq_mode(i32 %61, i32 %64, i32 %66, i32 %69, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %58
  %76 = load i32, i32* @BTM_NO_RESOURCES, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BTM_BR_INQUIRY_MASK, align 4
  %81 = and i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = call i32 @btm_process_inq_complete(i32 %76, i64 %82)
  br label %84

84:                                               ; preds = %75, %58
  br label %117

85:                                               ; preds = %40
  %86 = call i32 (...) @btm_clr_inq_result_flt()
  %87 = load i32, i32* @BT_DEFAULT_BUFFER_SIZE, align 4
  %88 = call i64 @osi_calloc(i32 %87)
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i32* %89, i32** %91, align 8
  %92 = icmp ne i32* %89, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i32, i32* @BT_DEFAULT_BUFFER_SIZE, align 4
  %95 = sext i32 %94 to i64
  %96 = udiv i64 %95, 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %85
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @btsnd_hcic_inquiry(i32 %101, i32 %104, i32 0)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* @BTM_NO_RESOURCES, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @BTM_BR_INQUIRY_MASK, align 4
  %113 = and i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = call i32 @btm_process_inq_complete(i32 %108, i64 %114)
  br label %116

116:                                              ; preds = %107, %99
  br label %117

117:                                              ; preds = %19, %116, %84
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32, i32, i32) #1

declare dso_local i32 @btm_acl_update_busy_level(i32) #1

declare dso_local i32 @btm_process_inq_complete(i32, i64) #1

declare dso_local i32 @btsnd_hcic_per_inq_mode(i32, i32, i32, i32, i64) #1

declare dso_local i32 @btm_clr_inq_result_flt(...) #1

declare dso_local i64 @osi_calloc(i32) #1

declare dso_local i32 @btsnd_hcic_inquiry(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
