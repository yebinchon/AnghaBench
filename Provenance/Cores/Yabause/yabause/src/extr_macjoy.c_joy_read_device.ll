; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_macjoy.c_joy_read_device.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_macjoy.c_joy_read_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kNilOptions = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@kIOHIDPrimaryUsagePageKey = common dso_local global i32 0, align 4
@kCFNumberSInt32Type = common dso_local global i32 0, align 4
@kHIDPage_GenericDesktop = common dso_local global i64 0, align 8
@kIOHIDPrimaryUsageKey = common dso_local global i32 0, align 4
@kHIDUsage_GD_GamePad = common dso_local global i64 0, align 8
@kHIDUsage_GD_Joystick = common dso_local global i64 0, align 8
@joys = common dso_local global %struct.TYPE_7__* null, align 8
@joy_count = common dso_local global i32 0, align 4
@kIOHIDProductKey = common dso_local global i32 0, align 4
@kCFStringEncodingUTF8 = common dso_local global i32 0, align 4
@joy_cmp_buttons = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @joy_read_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @joy_read_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @kCFAllocatorDefault, align 4
  %10 = load i32, i32* @kNilOptions, align 4
  %11 = call i64 @IORegistryEntryCreateCFProperties(i32 %8, i32* %3, i32 %9, i32 %10)
  %12 = load i64, i64* @KERN_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %122

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @kIOHIDPrimaryUsagePageKey, align 4
  %17 = call i32 @CFSTR(i32 %16)
  %18 = call i64 @CFDictionaryGetValue(i32 %15, i32 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i64, i64* %4, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @kCFNumberSInt32Type, align 4
  %25 = call i32 @CFNumberGetValue(i32 %23, i32 %24, i64* %5)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %14
  br label %123

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @kHIDPage_GenericDesktop, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %123

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @kIOHIDPrimaryUsageKey, align 4
  %36 = call i32 @CFSTR(i32 %35)
  %37 = call i64 @CFDictionaryGetValue(i32 %34, i32 %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i64, i64* %4, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @kCFNumberSInt32Type, align 4
  %44 = call i32 @CFNumberGetValue(i32 %42, i32 %43, i64* %6)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40, %33
  br label %123

47:                                               ; preds = %40
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @kHIDUsage_GD_GamePad, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @kHIDUsage_GD_Joystick, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %123

56:                                               ; preds = %51, %47
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @joys, align 8
  %58 = load i32, i32* @joy_count, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 12
  %62 = trunc i64 %61 to i32
  %63 = call i8* @realloc(%struct.TYPE_7__* %57, i32 %62)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %123

67:                                               ; preds = %56
  %68 = load i8*, i8** %7, align 8
  %69 = bitcast i8* %68 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** @joys, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @joys, align 8
  %71 = load i32, i32* @joy_count, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %72
  %74 = call i32 @memset(%struct.TYPE_7__* %73, i32 0, i32 12)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @kIOHIDProductKey, align 4
  %77 = call i32 @CFSTR(i32 %76)
  %78 = call i64 @CFDictionaryGetValue(i32 %75, i32 %77)
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = trunc i64 %79 to i32
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** @joys, align 8
  %82 = load i32, i32* @joy_count, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %88 = call i32 @CFStringGetCString(i32 %80, i32 %86, i32 256, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %67
  br label %123

91:                                               ; preds = %67
  %92 = load i32, i32* %2, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** @joys, align 8
  %94 = load i32, i32* @joy_count, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = call i32 @joy_create_interface(i32 %92, %struct.TYPE_7__* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %123

100:                                              ; preds = %91
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @joys, align 8
  %103 = load i32, i32* @joy_count, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = call i32 @joy_find_elements(i32 %101, %struct.TYPE_7__* %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** @joys, align 8
  %108 = load i32, i32* @joy_count, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** @joys, align 8
  %114 = load i32, i32* @joy_count, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @qsort(i32 %112, i32 %118, i32 4, i32* @joy_cmp_buttons)
  %120 = load i32, i32* @joy_count, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @joy_count, align 4
  br label %122

122:                                              ; preds = %100, %1
  br label %123

123:                                              ; preds = %122, %99, %90, %66, %55, %46, %32, %27
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @CFRelease(i32 %124)
  ret void
}

declare dso_local i64 @IORegistryEntryCreateCFProperties(i32, i32*, i32, i32) #1

declare dso_local i64 @CFDictionaryGetValue(i32, i32) #1

declare dso_local i32 @CFSTR(i32) #1

declare dso_local i32 @CFNumberGetValue(i32, i32, i64*) #1

declare dso_local i8* @realloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @CFStringGetCString(i32, i32, i32, i32) #1

declare dso_local i32 @joy_create_interface(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @joy_find_elements(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @qsort(i32, i32, i32, i32*) #1

declare dso_local i32 @CFRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
