; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_GetRelativePathW.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_GetRelativePathW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 47, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetRelativePathW(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @MAX_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @MAX_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %60

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ClearUniStr(i32* %31, i32 %32)
  %34 = mul nuw i64 4, %15
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @NormalizePathW(i32* %17, i32 %35, i32* %36)
  %38 = mul nuw i64 4, %19
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @NormalizePathW(i32* %20, i32 %39, i32* %40)
  %42 = mul nuw i64 4, %19
  %43 = trunc i64 %42 to i32
  %44 = call i32 @UniStrCat(i32* %20, i32 %43, i8* bitcast ([2 x i32]* @.str to i8*))
  %45 = call i32 @UniStrLen(i32* %17)
  %46 = call i32 @UniStrLen(i32* %20)
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %60

49:                                               ; preds = %30
  %50 = call i32 @UniStartWith(i32* %17, i32* %20)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %60

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @UniStrLen(i32* %20)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %17, i64 %57
  %59 = call i32 @UniStrCpy(i32* %54, i32 %55, i32* %58)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %60

60:                                               ; preds = %53, %52, %48, %29
  %61 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ClearUniStr(i32*, i32) #2

declare dso_local i32 @NormalizePathW(i32*, i32, i32*) #2

declare dso_local i32 @UniStrCat(i32*, i32, i8*) #2

declare dso_local i32 @UniStrLen(i32*) #2

declare dso_local i32 @UniStartWith(i32*, i32*) #2

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
