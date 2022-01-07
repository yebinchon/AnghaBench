; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_BTM_RegisterForVSEvents.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_BTM_RegisterForVSEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32** }

@BTM_SUCCESS = common dso_local global i32 0, align 4
@BTM_MAX_VSE_CALLBACKS = common dso_local global i64 0, align 8
@btm_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"BTM Deregister For VSEvents is successfully\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"BTM Register For VSEvents is successfully\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"BTM_RegisterForVSEvents: too many callbacks registered\00", align 1
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_RegisterForVSEvents(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* @BTM_MAX_VSE_CALLBACKS, align 8
  store i64 %10, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %43, %2
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @BTM_MAX_VSE_CALLBACKS, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %8, align 8
  br label %42

23:                                               ; preds = %15
  %24 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp eq i32* %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @FALSE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  store i32* null, i32** %37, align 8
  %38 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %40, i32* %3, align 4
  br label %65

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41, %21
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %11

46:                                               ; preds = %11
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @BTM_MAX_VSE_CALLBACKS, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32*, i32** %4, align 8
  %55 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  store i32* %54, i32** %57, align 8
  %58 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %62

59:                                               ; preds = %49
  %60 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %39
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
