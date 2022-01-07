; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_api_disable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_api_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i32*)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@bta_ag_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@BTA_ID_AG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"BTA AG is already disabled, ignoring ...\00", align 1
@BTA_AG_NUM_SCB = common dso_local global i32 0, align 4
@BTA_AG_API_DEREGISTER_EVT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BTA_AG_DISABLE_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @bta_ag_api_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_ag_api_disable(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_ag_cb, i32 0, i32 1), align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 0
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %3, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @BTA_ID_AG, align 4
  %10 = call i32 @bta_sys_is_register(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %48

14:                                               ; preds = %1
  %15 = load i32, i32* @BTA_ID_AG, align 4
  %16 = call i32 @bta_sys_deregister(i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %33, %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BTA_AG_NUM_SCB, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = load i32, i32* @BTA_AG_API_DEREGISTER_EVT, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @bta_ag_sm_execute(%struct.TYPE_4__* %27, i32 %28, i32* %29)
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %26, %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 1
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %3, align 8
  br label %17

38:                                               ; preds = %17
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_ag_cb, i32 0, i32 0), align 8
  %43 = load i32, i32* @BTA_AG_DISABLE_EVT, align 4
  %44 = call i32 %42(i32 %43, i32* null)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* @BTA_ID_AG, align 4
  %47 = call i32 @bta_sys_collision_register(i32 %46, i32* null)
  br label %48

48:                                               ; preds = %45, %12
  ret void
}

declare dso_local i32 @bta_sys_is_register(i32) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*) #1

declare dso_local i32 @bta_sys_deregister(i32) #1

declare dso_local i32 @bta_ag_sm_execute(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @bta_sys_collision_register(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
