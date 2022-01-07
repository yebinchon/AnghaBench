; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_ConbinePathW.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_ConbinePathW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 47, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConbinePathW(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
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
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %4
  store i32 1, i32* %13, align 4
  br label %73

30:                                               ; preds = %26
  %31 = mul nuw i64 4, %19
  %32 = trunc i64 %31 to i32
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @NormalizePathW(i32* %20, i32 %32, i32* %33)
  store i32 0, i32* %9, align 4
  %35 = call i64 @UniStartWith(i32* %20, i8* bitcast ([2 x i32]* @.str to i8*))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = call i64 @UniStartWith(i32* %20, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %30
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = getelementptr inbounds i32, i32* %20, i64 0
  store i32* %42, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = mul nuw i64 4, %15
  %47 = trunc i64 %46 to i32
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @UniStrCpy(i32* %17, i32 %47, i32* %48)
  %50 = call i32 @UniEndWith(i32* %17, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = call i32 @UniEndWith(i32* %17, i8* bitcast ([2 x i32]* @.str to i8*))
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = mul nuw i64 4, %15
  %57 = trunc i64 %56 to i32
  %58 = call i32 (i32*, i32, ...) @UniStrCat(i32* %17, i32 %57, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %52, %45
  %60 = mul nuw i64 4, %15
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 (i32*, i32, ...) @UniStrCat(i32* %17, i32 %61, i32* %62)
  br label %69

64:                                               ; preds = %41
  %65 = mul nuw i64 4, %15
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @UniStrCpy(i32* %17, i32 %66, i32* %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @NormalizePathW(i32* %70, i32 %71, i32* %17)
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %69, %29
  %74 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %13, align 4
  switch i32 %75, label %77 [
    i32 0, label %76
    i32 1, label %76
  ]

76:                                               ; preds = %73, %73
  ret void

77:                                               ; preds = %73
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NormalizePathW(i32*, i32, i32*) #2

declare dso_local i64 @UniStartWith(i32*, i8*) #2

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #2

declare dso_local i32 @UniEndWith(i32*, i8*) #2

declare dso_local i32 @UniStrCat(i32*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
