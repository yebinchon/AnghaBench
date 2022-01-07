; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_MsChapV2DoBruteForce.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_MsChapV2DoBruteForce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @MsChapV2DoBruteForce(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  store i8* null, i8** %3, align 8
  br label %66

20:                                               ; preds = %16
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %62, %20
  %22 = load i64, i64* %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @LIST_NUM(i32* %23)
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i8* @LIST_DATA(i32* %27, i64 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i32, i32* @MAX_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %8, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %9, align 8
  %34 = trunc i64 %31 to i32
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @StrCpy(i8* %33, i32 %34, i8* %35)
  %37 = call i64 @StrLen(i8* %33)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @MIN(i64 %38, i32 9)
  %40 = call i64 @Power(i32 2, i32 %39)
  store i64 %40, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %54, %26
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @SetStrCaseAccordingToBits(i8* %33, i64 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @MsChapV2VerityPassword(i32* %48, i8* %33)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i8* @CopyStr(i8* %33)
  store i8* %52, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %58

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %10, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %10, align 8
  br label %41

57:                                               ; preds = %41
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %13, align 4
  switch i32 %60, label %68 [
    i32 0, label %61
    i32 1, label %66
  ]

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %21

65:                                               ; preds = %21
  store i8* null, i8** %3, align 8
  br label %66

66:                                               ; preds = %65, %58, %19
  %67 = load i8*, i8** %3, align 8
  ret i8* %67

68:                                               ; preds = %58
  unreachable
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i8* @LIST_DATA(i32*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i64 @Power(i32, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @SetStrCaseAccordingToBits(i8*, i64) #1

declare dso_local i64 @MsChapV2VerityPassword(i32*, i8*) #1

declare dso_local i8* @CopyStr(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
