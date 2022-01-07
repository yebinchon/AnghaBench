; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_IntListToStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_IntListToStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IntListToStr(i8* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ClearStr(i8* %13, i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %59

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @IsEmptyStr(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %24

24:                                               ; preds = %23, %19
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %56, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @LIST_NUM(i32* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  %31 = load i32, i32* @MAX_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %10, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %11, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32* @LIST_DATA(i32* %35, i32 %36)
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ToStr(i8* %34, i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @StrCat(i8* %41, i32 %42, i8* %34)
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @LIST_NUM(i32* %45)
  %47 = sub nsw i32 %46, 1
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @StrCat(i8* %50, i32 %51, i8* %52)
  br label %54

54:                                               ; preds = %49, %30
  %55 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %55)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %25

59:                                               ; preds = %18, %25
  ret void
}

declare dso_local i32 @ClearStr(i8*, i32) #1

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i32 @LIST_NUM(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @LIST_DATA(i32*, i32) #1

declare dso_local i32 @ToStr(i8*, i32) #1

declare dso_local i32 @StrCat(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
