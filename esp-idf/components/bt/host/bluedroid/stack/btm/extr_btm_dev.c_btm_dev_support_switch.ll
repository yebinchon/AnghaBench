; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_dev.c_btm_dev_support_switch.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_dev.c_btm_dev_support_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32** }
%struct.TYPE_5__ = type { i64 (...)* }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@HCI_EXT_FEATURES_PAGE_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"btm_dev_support_switch return TRUE (feature found)\0A\00", align 1
@BD_FEATURES_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"btm_dev_support_switch return TRUE (feature empty)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"btm_dev_support_switch return FALSE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btm_dev_support_switch(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* @TRUE, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @btm_is_sco_active_by_bdaddr(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %2, align 8
  br label %68

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.TYPE_4__* @btm_find_dev(i32 %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %65

18:                                               ; preds = %13
  %19 = call %struct.TYPE_5__* (...) @controller_get_interface()
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64 (...)*, i64 (...)** %20, align 8
  %22 = call i64 (...) %21()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i64, i64* @HCI_EXT_FEATURES_PAGE_0, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @HCI_SWITCH_SUPPORTED(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %2, align 8
  br label %68

36:                                               ; preds = %24
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @BD_FEATURES_LEN, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* @HCI_EXT_FEATURES_PAGE_0, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i64, i64* @FALSE, align 8
  store i64 %53, i64* %6, align 8
  br label %58

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %5, align 8
  br label %37

58:                                               ; preds = %52, %37
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %2, align 8
  br label %68

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %18, %13
  %66 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i64, i64* @FALSE, align 8
  store i64 %67, i64* %2, align 8
  br label %68

68:                                               ; preds = %65, %61, %33, %11
  %69 = load i64, i64* %2, align 8
  ret i64 %69
}

declare dso_local i64 @btm_is_sco_active_by_bdaddr(i32) #1

declare dso_local %struct.TYPE_4__* @btm_find_dev(i32) #1

declare dso_local %struct.TYPE_5__* @controller_get_interface(...) #1

declare dso_local i64 @HCI_SWITCH_SUPPORTED(i32*) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
