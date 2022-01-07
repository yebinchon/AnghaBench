; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_directory.c__FAT_directory_lfnLength.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_directory.c__FAT_directory_lfnLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAME_MAX = common dso_local global i64 0, align 8
@ILLEGAL_LFN_CHARACTERS = common dso_local global i32 0, align 4
@ABOVE_UCS_RANGE = common dso_local global i8 0, align 1
@MAX_LFN_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @_FAT_directory_lfnLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_FAT_directory_lfnLength(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i64, i64* @NAME_MAX, align 8
  %12 = call i64 @strnlen(i8* %10, i64 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @NAME_MAX, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %61

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @ILLEGAL_LFN_CHARACTERS, align 4
  %20 = call i32* @strpbrk(i8* %18, i32 %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %61

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %8, align 1
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp slt i32 %36, 32
  br i1 %37, label %44, label %38

38:                                               ; preds = %29
  %39 = load i8, i8* %8, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @ABOVE_UCS_RANGE, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sge i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %29
  store i32 -1, i32* %2, align 4
  br label %61

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load i32, i32* @MAX_LFN_LENGTH, align 4
  %51 = call i32 @mbsrtowcs(i32* null, i8** %6, i32 %50, i32* null)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MAX_LFN_LENGTH, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %49
  store i32 -1, i32* %2, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %58, %44, %22, %16
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local i32* @strpbrk(i8*, i32) #1

declare dso_local i32 @mbsrtowcs(i32*, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
