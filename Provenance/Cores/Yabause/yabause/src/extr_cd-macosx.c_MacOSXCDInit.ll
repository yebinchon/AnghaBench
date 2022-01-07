; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cd-macosx.c_MacOSXCDInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cd-macosx.c_MacOSXCDInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@kIOCDMediaClass = common dso_local global i32 0, align 4
@kIOMediaEjectableKey = common dso_local global i32 0, align 4
@kCFBooleanTrue = common dso_local global i32 0, align 4
@kIOMasterPortDefault = common dso_local global i32 0, align 4
@kIOBSDNameKey = common dso_local global i32 0, align 4
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@_PATH_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@kCFStringEncodingUTF8 = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@hCDROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @MacOSXCDInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MacOSXCDInit(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @kIOCDMediaClass, align 4
  %17 = call i32 @IOServiceMatching(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @kIOMediaEjectableKey, align 4
  %20 = call i32 @CFSTR(i32 %19)
  %21 = load i32, i32* @kCFBooleanTrue, align 4
  %22 = call i32 @CFDictionarySetValue(i32 %18, i32 %20, i32 %21)
  %23 = load i32, i32* @kIOMasterPortDefault, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @IOServiceGetMatchingServices(i32 %23, i32 %24, i32* %5)
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @IOIteratorNext(i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %1
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @kIOBSDNameKey, align 4
  %33 = call i32 @CFSTR(i32 %32)
  %34 = load i32, i32* @kCFAllocatorDefault, align 4
  %35 = call i64 @IORegistryEntryCreateCFProperty(i64 %31, i32 %33, i32 %34, i32 0)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %30
  %39 = load i32, i32* @_PATH_DEV, align 4
  %40 = call i32 @strcpy(i8* %15, i32 %39)
  %41 = call i32 @strcat(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = call i64 @strlen(i8* %15)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i8, i8* %15, i64 %44
  %46 = load i32, i32* @MAXPATHLEN, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %52 = call i32 @CFStringGetCString(i64 %43, i8* %45, i32 %50, i32 %51)
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @CFRelease(i64 %53)
  br label %55

55:                                               ; preds = %38, %30
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @IOObjectRelease(i64 %56)
  br label %58

58:                                               ; preds = %55, %1
  %59 = load i32, i32* @O_RDONLY, align 4
  %60 = call i32 @open(i8* %15, i32 %59)
  store i32 %60, i32* @hCDROM, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %64

63:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IOServiceMatching(i32) #2

declare dso_local i32 @CFDictionarySetValue(i32, i32, i32) #2

declare dso_local i32 @CFSTR(i32) #2

declare dso_local i32 @IOServiceGetMatchingServices(i32, i32, i32*) #2

declare dso_local i64 @IOIteratorNext(i32) #2

declare dso_local i64 @IORegistryEntryCreateCFProperty(i64, i32, i32, i32) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @CFStringGetCString(i64, i8*, i32, i32) #2

declare dso_local i32 @CFRelease(i64) #2

declare dso_local i32 @IOObjectRelease(i64) #2

declare dso_local i32 @open(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
