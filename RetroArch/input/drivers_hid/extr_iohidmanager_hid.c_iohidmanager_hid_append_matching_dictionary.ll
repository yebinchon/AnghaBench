; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_iohidmanager_hid.c_iohidmanager_hid_append_matching_dictionary.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_iohidmanager_hid.c_iohidmanager_hid_append_matching_dictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFTypeDictionaryKeyCallBacks = common dso_local global i32 0, align 4
@kCFTypeDictionaryValueCallBacks = common dso_local global i32 0, align 4
@kCFNumberIntType = common dso_local global i32 0, align 4
@kIOHIDDeviceUsagePageKey = common dso_local global i32 0, align 4
@kIOHIDDeviceUsageKey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @iohidmanager_hid_append_matching_dictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iohidmanager_hid_append_matching_dictionary(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @kCFAllocatorDefault, align 4
  %11 = call i32 @CFDictionaryCreateMutable(i32 %10, i32 0, i32* @kCFTypeDictionaryKeyCallBacks, i32* @kCFTypeDictionaryValueCallBacks)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @kCFAllocatorDefault, align 4
  %13 = load i32, i32* @kCFNumberIntType, align 4
  %14 = call i32 @CFNumberCreate(i32 %12, i32 %13, i32* %5)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @kCFAllocatorDefault, align 4
  %16 = load i32, i32* @kCFNumberIntType, align 4
  %17 = call i32 @CFNumberCreate(i32 %15, i32 %16, i32* %6)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @kIOHIDDeviceUsagePageKey, align 4
  %20 = call i32 @CFSTR(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @CFDictionarySetValue(i32 %18, i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @kIOHIDDeviceUsageKey, align 4
  %25 = call i32 @CFSTR(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @CFDictionarySetValue(i32 %23, i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @CFArrayAppendValue(i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @CFRelease(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @CFRelease(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @CFRelease(i32 %35)
  ret void
}

declare dso_local i32 @CFDictionaryCreateMutable(i32, i32, i32*, i32*) #1

declare dso_local i32 @CFNumberCreate(i32, i32, i32*) #1

declare dso_local i32 @CFDictionarySetValue(i32, i32, i32) #1

declare dso_local i32 @CFSTR(i32) #1

declare dso_local i32 @CFArrayAppendValue(i32, i32) #1

declare dso_local i32 @CFRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
