; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_hcif.c_btu_hcif_command_complete_evt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_hcif.c_btu_hcif_command_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8**, i32, i32 }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_7__*, i32 }

@adv_data_status = common dso_local global i8* null, align 8
@adv_data_sem = common dso_local global i32 0, align 4
@adv_enable_status = common dso_local global i8* null, align 8
@adv_enable_sem = common dso_local global i32 0, align 4
@adv_param_status = common dso_local global i8* null, align 8
@adv_param_sem = common dso_local global i32 0, align 4
@scan_param_status = common dso_local global i8* null, align 8
@scan_param_sem = common dso_local global i32 0, align 4
@scan_enable_status = common dso_local global i8* null, align 8
@scan_enable_sem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"btu_hcif_command_complete_evt\0A\00", align 1
@btu_hcif_command_complete_evt_on_task = common dso_local global i32 0, align 4
@BTU_POST_TO_TASK_NO_GOOD_HORRIBLE_HACK = common dso_local global i32 0, align 4
@SIG_BTU_HCI_MSG = common dso_local global i32 0, align 4
@OSI_THREAD_MAX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*)* @btu_hcif_command_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btu_hcif_command_complete_evt(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %11, i64 %15
  %17 = getelementptr inbounds i8*, i8** %16, i64 3
  store i8** %17, i8*** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i8**, i8*** %6, align 8
  %20 = call i32 @STREAM_TO_UINT16(i32 %18, i8** %19)
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %46 [
    i32 133, label %22
    i32 128, label %26
    i32 132, label %30
    i32 131, label %34
    i32 129, label %38
    i32 130, label %42
  ]

22:                                               ; preds = %2
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** @adv_data_status, align 8
  %25 = call i32 @osi_sem_give(i32* @adv_data_sem)
  br label %47

26:                                               ; preds = %2
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** @adv_data_status, align 8
  %29 = call i32 @osi_sem_give(i32* @adv_data_sem)
  br label %47

30:                                               ; preds = %2
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** @adv_enable_status, align 8
  %33 = call i32 @osi_sem_give(i32* @adv_enable_sem)
  br label %47

34:                                               ; preds = %2
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** @adv_param_status, align 8
  %37 = call i32 @osi_sem_give(i32* @adv_param_sem)
  br label %47

38:                                               ; preds = %2
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** @scan_param_status, align 8
  %41 = call i32 @osi_sem_give(i32* @scan_param_sem)
  br label %47

42:                                               ; preds = %2
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** @scan_enable_status, align 8
  %45 = call i32 @osi_sem_give(i32* @scan_enable_sem)
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %42, %38, %34, %30, %26, %22
  %48 = call %struct.TYPE_7__* @osi_calloc(i32 40)
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %7, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = bitcast i8** %52 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %8, align 8
  %54 = call i32 @HCI_TRACE_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @btu_hcif_command_complete_evt_on_task, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %60, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @BTU_POST_TO_TASK_NO_GOOD_HORRIBLE_HACK, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @SIG_BTU_HCI_MSG, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = load i32, i32* @OSI_THREAD_MAX_TIMEOUT, align 4
  %70 = call i32 @btu_task_post(i32 %67, %struct.TYPE_7__* %68, i32 %69)
  ret void
}

declare dso_local i32 @STREAM_TO_UINT16(i32, i8**) #1

declare dso_local i32 @osi_sem_give(i32*) #1

declare dso_local %struct.TYPE_7__* @osi_calloc(i32) #1

declare dso_local i32 @HCI_TRACE_DEBUG(i8*) #1

declare dso_local i32 @btu_task_post(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
