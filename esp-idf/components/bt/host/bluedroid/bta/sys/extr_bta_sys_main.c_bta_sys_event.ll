; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_bta_sys_main.c_bta_sys_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_bta_sys_main.c_bta_sys_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"BTA got event 0x%x\0A\00", align 1
@BTA_ID_MAX = common dso_local global i64 0, align 8
@bta_sys_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"BTA got unregistered event id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_sys_event(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load i64, i64* @TRUE, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @APPL_TRACE_EVENT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 8
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @BTA_ID_MAX, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bta_sys_cb, i32 0, i32 0), align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %22, i64 %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bta_sys_cb, i32 0, i32 0), align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i64 %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64 (%struct.TYPE_7__*)*, i64 (%struct.TYPE_7__*)** %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = call i64 %33(%struct.TYPE_7__* %34)
  store i64 %35, i64* %5, align 8
  br label %39

36:                                               ; preds = %21, %1
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = call i32 @osi_free(%struct.TYPE_7__* %43)
  br label %45

45:                                               ; preds = %42, %39
  ret void
}

declare dso_local i32 @APPL_TRACE_EVENT(i8*, i32) #1

declare dso_local i32 @APPL_TRACE_WARNING(i8*, i64) #1

declare dso_local i32 @osi_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
