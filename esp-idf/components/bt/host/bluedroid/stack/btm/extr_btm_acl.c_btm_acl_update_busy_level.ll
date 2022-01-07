; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_acl_update_busy_level.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_acl_update_busy_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i32, i32 (i32*)*, i8* }
%struct.TYPE_3__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"btm_acl_update_busy_level\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"BTM_BLI_ACL_UP_EVT\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"BTM_BLI_ACL_DOWN_EVT\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"BTM_BLI_PAGE_EVT\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@BTM_BL_PAGING_STARTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"BTM_BLI_PAGE_DONE_EVT\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@BTM_BL_PAGING_COMPLETE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"BTM_BLI_INQ_EVT\0A\00", align 1
@BTM_BL_INQUIRY_STARTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"BTM_BLI_INQ_CANCEL_EVT\0A\00", align 1
@BTM_BL_INQUIRY_CANCELLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"BTM_BLI_INQ_DONE_EVT\0A\00", align 1
@BTM_BL_INQUIRY_COMPLETE = common dso_local global i32 0, align 4
@BTM_BL_UPDATE_EVT = common dso_local global i32 0, align 4
@BTM_BL_UPDATE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_acl_update_busy_level(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %41 [
    i32 133, label %9
    i32 134, label %11
    i32 128, label %13
    i32 129, label %18
    i32 130, label %23
    i32 132, label %29
    i32 131, label %35
  ]

9:                                                ; preds = %1
  %10 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %41

11:                                               ; preds = %1
  %12 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %41

13:                                               ; preds = %1
  %14 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i8*, i8** @TRUE, align 8
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 4), align 8
  %16 = load i32, i32* @BTM_BL_PAGING_STARTED, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  br label %41

18:                                               ; preds = %1
  %19 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i8*, i8** @FALSE, align 8
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 4), align 8
  %21 = load i32, i32* @BTM_BL_PAGING_COMPLETE, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  br label %41

23:                                               ; preds = %1
  %24 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %25 = load i8*, i8** @TRUE, align 8
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %27 = load i32, i32* @BTM_BL_INQUIRY_STARTED, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  br label %41

29:                                               ; preds = %1
  %30 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %31 = load i8*, i8** @FALSE, align 8
  %32 = ptrtoint i8* %31 to i64
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %33 = load i32, i32* @BTM_BL_INQUIRY_CANCELLED, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  br label %41

35:                                               ; preds = %1
  %36 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %37 = load i8*, i8** @FALSE, align 8
  %38 = ptrtoint i8* %37 to i64
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %39 = load i32, i32* @BTM_BL_INQUIRY_COMPLETE, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %1, %35, %29, %23, %18, %13, %11, %9
  %42 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 4), align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %41
  store i8* inttoptr (i64 10 to i8*), i8** %4, align 8
  br label %50

48:                                               ; preds = %44
  %49 = call i8* (...) @BTM_GetNumAclLinks()
  store i8* %49, i8** %4, align 8
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 8
  %53 = icmp ne i8* %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54, %50
  %59 = load i32, i32* @BTM_BL_UPDATE_EVT, align 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** %4, align 8
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 8
  %64 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 3), align 8
  %65 = icmp ne i32 (i32*)* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  %68 = load i32, i32* @BTM_BL_UPDATE_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 3), align 8
  %73 = bitcast %struct.TYPE_3__* %3 to i32*
  %74 = call i32 %72(i32* %73)
  br label %75

75:                                               ; preds = %71, %66, %58
  br label %76

76:                                               ; preds = %75, %54
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

declare dso_local i8* @BTM_GetNumAclLinks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
