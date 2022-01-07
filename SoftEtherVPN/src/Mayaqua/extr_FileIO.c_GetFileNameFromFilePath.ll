; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_GetFileNameFromFilePath.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_GetFileNameFromFilePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetFileNameFromFilePath(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* @MAX_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %3
  store i32 1, i32* %12, align 4
  br label %59

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @StrLen(i8* %25)
  %27 = load i32, i32* @MAX_SIZE, align 4
  %28 = sub nsw i32 %27, 2
  %29 = call i64 @MIN(i32 %26, i32 %28)
  store i64 %29, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %52, %24
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %32, 1
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %13, align 1
  %40 = load i8, i8* %13, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %45 [
    i32 92, label %42
    i32 47, label %42
    i32 0, label %42
  ]

42:                                               ; preds = %35, %35, %35
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i8, i8* %17, i64 %43
  store i8 0, i8* %44, align 1
  store i64 0, i64* %11, align 8
  br label %51

45:                                               ; preds = %35
  %46 = load i8, i8* %13, align 1
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i8, i8* %17, i64 %47
  store i8 %46, i8* %48, align 1
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %45, %42
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %30

55:                                               ; preds = %30
  %56 = load i8*, i8** %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @StrCpy(i8* %56, i64 %57, i8* %17)
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %55, %23
  %60 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %12, align 4
  switch i32 %61, label %63 [
    i32 0, label %62
    i32 1, label %62
  ]

62:                                               ; preds = %59, %59
  ret void

63:                                               ; preds = %59
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @MIN(i32, i32) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @StrCpy(i8*, i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
