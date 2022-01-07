; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_ReadElement.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_ReadElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ELEMENT_NAME_LEN = common dso_local global i32 0, align 4
@MAX_VALUE_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ReadElement(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32, i32* @MAX_ELEMENT_NAME_LEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  store i32 1, i32* %11, align 4
  br label %65

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = trunc i64 %14 to i32
  %23 = call i32 @ReadBufStr(i32* %21, i8* %16, i32 %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32* null, i32** %2, align 8
  store i32 1, i32* %11, align 4
  br label %65

26:                                               ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @ReadBufInt(i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @ReadBufInt(i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MAX_VALUE_NUM, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32* null, i32** %2, align 8
  store i32 1, i32* %11, align 4
  br label %65

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 8, %37
  %39 = trunc i64 %38 to i32
  %40 = call i64 @Malloc(i32 %39)
  %41 = inttoptr i64 %40 to i32**
  store i32** %41, i32*** %9, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %54, %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32* @ReadValue(i32* %47, i32 %48)
  %50 = load i32**, i32*** %9, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  store i32* %49, i32** %53, align 8
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %42

57:                                               ; preds = %42
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32**, i32*** %9, align 8
  %61 = call i32* @NewElement(i8* %16, i32 %58, i32 %59, i32** %60)
  store i32* %61, i32** %10, align 8
  %62 = load i32**, i32*** %9, align 8
  %63 = call i32 @Free(i32** %62)
  %64 = load i32*, i32** %10, align 8
  store i32* %64, i32** %2, align 8
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %57, %34, %25, %19
  %66 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32*, i32** %2, align 8
  ret i32* %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ReadBufStr(i32*, i8*, i32) #2

declare dso_local i32 @ReadBufInt(i32*) #2

declare dso_local i64 @Malloc(i32) #2

declare dso_local i32* @ReadValue(i32*, i32) #2

declare dso_local i32* @NewElement(i8*, i32, i32, i32**) #2

declare dso_local i32 @Free(i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
