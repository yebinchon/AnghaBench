; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cd-macosx.c_GetTOCFromCDPath.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cd-macosx.c_GetTOCFromCDPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kIOCDMediaClass = common dso_local global i32 0, align 4
@kIOMediaEjectableKey = common dso_local global i32 0, align 4
@kCFBooleanTrue = common dso_local global i32 0, align 4
@kIOMasterPortDefault = common dso_local global i32 0, align 4
@kIOCDMediaTOCKey = common dso_local global i32 0, align 4
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @GetTOCFromCDPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetTOCFromCDPath() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* null, i32** %4, align 8
  %6 = load i32, i32* @kIOCDMediaClass, align 4
  %7 = call i32 @IOServiceMatching(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @kIOMediaEjectableKey, align 4
  %10 = call i32 @CFSTR(i32 %9)
  %11 = load i32, i32* @kCFBooleanTrue, align 4
  %12 = call i32 @CFDictionarySetValue(i32 %8, i32 %10, i32 %11)
  %13 = load i32, i32* @kIOMasterPortDefault, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @IOServiceGetMatchingServices(i32 %13, i32 %14, i32* %2)
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @IOIteratorNext(i32 %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %0
  %21 = load i64, i64* %3, align 8
  %22 = load i32, i32* @kIOCDMediaTOCKey, align 4
  %23 = call i32 @CFSTR(i32 %22)
  %24 = load i32, i32* @kCFAllocatorDefault, align 4
  %25 = call i32 @IORegistryEntryCreateCFProperty(i64 %21, i32 %23, i32 %24, i32 0)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @CFDataGetLength(i32 %26)
  %28 = call i32* @malloc(i32 %27)
  store i32* %28, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @CFDataGetLength(i32 %30)
  %32 = call i32 @CFRangeMake(i32 0, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @CFDataGetBytes(i32 %29, i32 %32, i32* %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @CFRelease(i32 %35)
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @IOObjectRelease(i64 %37)
  br label %39

39:                                               ; preds = %20, %0
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

declare dso_local i32 @IOServiceMatching(i32) #1

declare dso_local i32 @CFDictionarySetValue(i32, i32, i32) #1

declare dso_local i32 @CFSTR(i32) #1

declare dso_local i32 @IOServiceGetMatchingServices(i32, i32, i32*) #1

declare dso_local i64 @IOIteratorNext(i32) #1

declare dso_local i32 @IORegistryEntryCreateCFProperty(i64, i32, i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @CFDataGetLength(i32) #1

declare dso_local i32 @CFDataGetBytes(i32, i32, i32*) #1

declare dso_local i32 @CFRangeMake(i32, i32) #1

declare dso_local i32 @CFRelease(i32) #1

declare dso_local i32 @IOObjectRelease(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
