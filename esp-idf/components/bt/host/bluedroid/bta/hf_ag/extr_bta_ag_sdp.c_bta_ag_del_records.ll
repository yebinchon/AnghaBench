; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_sdp.c_bta_ag_del_records.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_sdp.c_bta_ag_del_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i64 }

@bta_ag_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BTA_AG_NUM_IDX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@BTA_HSP_SERVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bta_ag_del_records %d\00", align 1
@bta_ag_sec_id = common dso_local global i32* null, align 8
@bta_ag_uuid = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_del_records(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bta_ag_cb, i32 0, i32 1), align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 0
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @UNUSED(i32* %11)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %40, %2
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @BTA_AG_NUM_IDX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = icmp eq %struct.TYPE_6__* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %40

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FALSE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %33, %27, %22
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 1
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %5, align 8
  br label %13

45:                                               ; preds = %13
  %46 = load i32, i32* @BTA_HSP_SERVICE_ID, align 4
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BTA_HSP_SERVICE_ID, align 4
  %53 = ashr i32 %51, %52
  store i32 %53, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %115, %45
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @BTA_AG_NUM_IDX, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ]
  br i1 %62, label %63, label %122

63:                                               ; preds = %61
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %114

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %114

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bta_ag_cb, i32 0, i32 0), align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %71
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bta_ag_cb, i32 0, i32 0), align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @SDP_DeleteRecord(i64 %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bta_ag_cb, i32 0, i32 0), align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %81, %71
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bta_ag_cb, i32 0, i32 0), align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @BTM_FreeSCN(i32 %100)
  %102 = load i32*, i32** @bta_ag_sec_id, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @BTM_SecClrService(i32 %106)
  %108 = load i32*, i32** @bta_ag_uuid, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @bta_sys_remove_uuid(i32 %112)
  br label %114

114:                                              ; preds = %94, %67, %63
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %6, align 4
  %119 = ashr i32 %118, 1
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %7, align 4
  %121 = ashr i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %54

122:                                              ; preds = %61
  ret void
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @SDP_DeleteRecord(i64) #1

declare dso_local i32 @BTM_FreeSCN(i32) #1

declare dso_local i32 @BTM_SecClrService(i32) #1

declare dso_local i32 @bta_sys_remove_uuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
