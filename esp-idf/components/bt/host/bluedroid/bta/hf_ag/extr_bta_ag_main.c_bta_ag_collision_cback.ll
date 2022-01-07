; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_collision_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_collision_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { i64, i32* }

@BTA_AG_OPENING_ST = common dso_local global i64 0, align 8
@BTA_ID_SYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"AG found collision (ACL) ...\00", align 1
@BTA_ID_AG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"AG found collision (RFCOMM) ...\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"AG found collision (???) ...\00", align 1
@BTA_AG_INIT_ST = common dso_local global i64 0, align 8
@bta_ag_colli_timer_cback = common dso_local global i32 0, align 4
@BTA_AG_COLLISION_TIMER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_collision_cback(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @UNUSED(i64 %11)
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @UNUSED(i64 %13)
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @bta_ag_idx_by_bdaddr(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.TYPE_7__* @bta_ag_scb_by_idx(i32 %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %10, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %83

21:                                               ; preds = %4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BTA_AG_OPENING_ST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %83

27:                                               ; preds = %21
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @BTA_ID_SYS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %42

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @BTA_ID_AG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %41

39:                                               ; preds = %33
  %40 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i64, i64* @BTA_AG_INIT_ST, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @SDP_CancelServiceSearch(i64 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = call i32 @bta_ag_free_db(%struct.TYPE_7__* %55, i32* null)
  br label %57

57:                                               ; preds = %50, %42
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = call i64 @bta_ag_is_server_closed(%struct.TYPE_7__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @bta_ag_start_servers(%struct.TYPE_7__* %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %57
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32* @bta_ag_colli_timer_cback, i32** %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %72 = ptrtoint %struct.TYPE_7__* %71 to i64
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* @BTA_AG_COLLISION_TIMER, align 4
  %79 = call i32 @bta_sys_start_timer(%struct.TYPE_8__* %77, i32 0, i32 %78)
  %80 = load i32, i32* @TRUE, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %67, %21, %4
  ret void
}

declare dso_local i32 @UNUSED(i64) #1

declare dso_local i32 @bta_ag_idx_by_bdaddr(i32) #1

declare dso_local %struct.TYPE_7__* @bta_ag_scb_by_idx(i32) #1

declare dso_local i32 @APPL_TRACE_WARNING(i8*) #1

declare dso_local i32 @SDP_CancelServiceSearch(i64) #1

declare dso_local i32 @bta_ag_free_db(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @bta_ag_is_server_closed(%struct.TYPE_7__*) #1

declare dso_local i32 @bta_ag_start_servers(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @bta_sys_start_timer(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
