; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_BTM_SecAddBleKey.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_BTM_SecAddBleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"BTM_SecAddBleKey\00", align 1
@BTM_LE_KEY_PENC = common dso_local global i64 0, align 8
@BTM_LE_KEY_PID = common dso_local global i64 0, align 8
@BTM_LE_KEY_PCSRK = common dso_local global i64 0, align 8
@BTM_LE_KEY_LENC = common dso_local global i64 0, align 8
@BTM_LE_KEY_LCSRK = common dso_local global i64 0, align 8
@BTM_LE_KEY_LID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [107 x i8] c"BTM_SecAddBleKey()  Wrong Type, or No Device record                         for bdaddr: %08x%04x, Type: %d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"BTM_SecAddLeKey()  BDA: %08x%04x, Type: 0x%02x\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_SecAddBleKey(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @btm_find_dev(i32* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @BTM_LE_KEY_PENC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %17
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @BTM_LE_KEY_PID, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @BTM_LE_KEY_PCSRK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @BTM_LE_KEY_LENC, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @BTM_LE_KEY_LCSRK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @BTM_LE_KEY_LID, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %37, %14, %3
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 24
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = add nsw i32 %45, %49
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = add nsw i32 %50, %54
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @BTM_TRACE_WARNING(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %67, i64 %68)
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %4, align 4
  br label %117

71:                                               ; preds = %37, %33, %29, %25, %21, %17
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 24
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 16
  %80 = add nsw i32 %75, %79
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 8
  %85 = add nsw i32 %80, %84
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 5
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = load i64, i64* %7, align 8
  %99 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %97, i64 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 @btm_sec_save_le_key(i32* %100, i64 %101, i32* %102, i32 %103)
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @BTM_LE_KEY_PID, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %71
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* @BTM_LE_KEY_LID, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108, %71
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @btm_ble_resolving_list_load_dev(i32* %113)
  br label %115

115:                                              ; preds = %112, %108
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %41
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32* @btm_find_dev(i32*) #1

declare dso_local i32 @BTM_TRACE_WARNING(i8*, i32, i32, i64) #1

declare dso_local i32 @btm_sec_save_le_key(i32*, i64, i32*, i32) #1

declare dso_local i32 @btm_ble_resolving_list_load_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
