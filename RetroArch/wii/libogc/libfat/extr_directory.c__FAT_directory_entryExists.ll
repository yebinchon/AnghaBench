; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_directory.c__FAT_directory_entryExists.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_directory.c__FAT_directory_entryExists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@MAX_ALIAS_LENGTH = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @_FAT_directory_entryExists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_FAT_directory_entryExists(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MAX_ALIAS_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* @NAME_MAX, align 8
  %20 = call i64 @strnlen(i8* %18, i64 %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @NAME_MAX, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %60

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @_FAT_directory_getFirstEntry(i32* %26, %struct.TYPE_4__* %8, i32 %27)
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %56, %25
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* @NAME_MAX, align 8
  %37 = call i64 @strnlen(i8* %35, i64 %36)
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i64 @_FAT_directory_mbsncasecmp(i8* %40, i8* %42, i64 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %60

47:                                               ; preds = %39, %32
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @_FAT_directory_entryGetAlias(i32 %49, i8* %17)
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* @MAX_ALIAS_LENGTH, align 4
  %53 = call i64 @strncasecmp(i8* %51, i8* %17, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %60

56:                                               ; preds = %47
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @_FAT_directory_getNextEntry(i32* %57, %struct.TYPE_4__* %8)
  store i32 %58, i32* %9, align 4
  br label %29

59:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %60

60:                                               ; preds = %59, %55, %46, %24
  %61 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strnlen(i8*, i64) #2

declare dso_local i32 @_FAT_directory_getFirstEntry(i32*, %struct.TYPE_4__*, i32) #2

declare dso_local i64 @_FAT_directory_mbsncasecmp(i8*, i8*, i64) #2

declare dso_local i32 @_FAT_directory_entryGetAlias(i32, i8*) #2

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #2

declare dso_local i32 @_FAT_directory_getNextEntry(i32*, %struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
