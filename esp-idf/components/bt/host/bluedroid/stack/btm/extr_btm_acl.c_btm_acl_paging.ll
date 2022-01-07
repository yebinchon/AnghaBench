; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_acl_paging.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_acl_paging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i8*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"btm_acl_paging discing:%d, paging:%d BDA: %06x%06x\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TRUE = common dso_local global i8* null, align 8
@FIXED_QUEUE_MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"connecting_bda: %06x%06x\0A\00", align 1
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@DEV_CLASS_LEN = common dso_local global i32 0, align 4
@LOCAL_BR_EDR_CONTROLLER_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_acl_paging(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 4), align 8
  %7 = trunc i64 %6 to i32
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 2), align 8
  %9 = ptrtoint i8* %8 to i32
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 16
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = add nsw i32 %13, %17
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = add nsw i32 %26, %30
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = call i32 (i8*, i32, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %9, i32 %22, i32 %35)
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 4), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load i8*, i8** @TRUE, align 8
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 2), align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 3), align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %44 = call i32 @fixed_queue_enqueue(i32 %41, i32* %42, i32 %43)
  br label %115

45:                                               ; preds = %2
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @BTM_ACL_IS_CONNECTED(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %110, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 0), align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 0), align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = add nsw i32 %53, %57
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 0), align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 0), align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 16
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 0), align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 8
  %71 = add nsw i32 %66, %70
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 0), align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = call i32 (i8*, i32, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %75)
  %77 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 2), align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %49
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 0), align 8
  %82 = load i32, i32* @BD_ADDR_LEN, align 4
  %83 = call i64 @memcmp(i32* %80, i32* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 3), align 8
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %89 = call i32 @fixed_queue_enqueue(i32 %86, i32* %87, i32 %88)
  br label %108

90:                                               ; preds = %79, %49
  %91 = load i32*, i32** %4, align 8
  %92 = call %struct.TYPE_4__* @btm_find_or_alloc_dev(i32* %91)
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %5, align 8
  %93 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 0), align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @BD_ADDR_LEN, align 4
  %98 = call i32 @memcpy(i32* %93, i32 %96, i32 %97)
  %99 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 1), align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @DEV_CLASS_LEN, align 4
  %104 = call i32 @memcpy(i32* %99, i32 %102, i32 %103)
  %105 = load i32, i32* @LOCAL_BR_EDR_CONTROLLER_ID, align 4
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @btu_hcif_send_cmd(i32 %105, i32* %106)
  br label %108

108:                                              ; preds = %90, %85
  %109 = load i8*, i8** @TRUE, align 8
  store i8* %109, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 2), align 8
  br label %114

110:                                              ; preds = %45
  %111 = load i32, i32* @LOCAL_BR_EDR_CONTROLLER_ID, align 4
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @btu_hcif_send_cmd(i32 %111, i32* %112)
  br label %114

114:                                              ; preds = %110, %108
  br label %115

115:                                              ; preds = %114, %39
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32, i32, ...) #1

declare dso_local i32 @fixed_queue_enqueue(i32, i32*, i32) #1

declare dso_local i32 @BTM_ACL_IS_CONNECTED(i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @btm_find_or_alloc_dev(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @btu_hcif_send_cmd(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
