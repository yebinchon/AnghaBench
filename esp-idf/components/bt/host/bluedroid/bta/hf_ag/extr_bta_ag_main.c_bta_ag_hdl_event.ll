; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_hdl_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_hdl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"bta_ag_hdl_event: Event 0x%04x \00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"bta_ag_hdl_event: p_scb 0x%08x \00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bta_ag_hdl_event(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %27 [
    i32 130, label %11
    i32 131, label %15
    i32 129, label %19
    i32 128, label %23
  ]

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = bitcast %struct.TYPE_3__* %12 to i32*
  %14 = call i32 @bta_ag_api_enable(i32* %13)
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = bitcast %struct.TYPE_3__* %16 to i32*
  %18 = call i32 @bta_ag_api_disable(i32* %17)
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = bitcast %struct.TYPE_3__* %20 to i32*
  %22 = call i32 @bta_ag_api_register(i32* %21)
  br label %45

23:                                               ; preds = %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = bitcast %struct.TYPE_3__* %24 to i32*
  %26 = call i32 @bta_ag_api_result(i32* %25)
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @bta_ag_scb_by_idx(i32 %30)
  store i32* %31, i32** %3, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i32*, i32** %3, align 8
  %35 = ptrtoint i32* %34 to i32
  %36 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = bitcast %struct.TYPE_3__* %41 to i32*
  %43 = call i32 @bta_ag_sm_execute(i32* %37, i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %33, %27
  br label %45

45:                                               ; preds = %44, %23, %19, %15, %11
  %46 = load i32, i32* @TRUE, align 4
  ret i32 %46
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @bta_ag_api_enable(i32*) #1

declare dso_local i32 @bta_ag_api_disable(i32*) #1

declare dso_local i32 @bta_ag_api_register(i32*) #1

declare dso_local i32 @bta_ag_api_result(i32*) #1

declare dso_local i32* @bta_ag_scb_by_idx(i32) #1

declare dso_local i32 @bta_ag_sm_execute(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
