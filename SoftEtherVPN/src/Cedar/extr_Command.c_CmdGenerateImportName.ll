; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdGenerateImportName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdGenerateImportName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CM_IMPORT_NAME_1\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"CM_IMPORT_NAME_2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CmdGenerateImportName(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %4
  br label %59

22:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %56, %22
  %24 = load i32, i32* @MAX_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = mul nuw i64 4, %25
  %32 = trunc i64 %31 to i32
  %33 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 (i32*, i32, i32, i32*, ...) @UniFormat(i32* %27, i32 %32, i32 %33, i32* %34)
  br label %43

36:                                               ; preds = %23
  %37 = mul nuw i64 4, %25
  %38 = trunc i64 %37 to i32
  %39 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i32*, i32, i32, i32*, ...) @UniFormat(i32* %27, i32 %38, i32 %39, i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @CmdIsAccountName(i32* %44, i32* %27)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @UniStrCpy(i32* %48, i32 %49, i32* %27)
  store i32 1, i32* %12, align 4
  br label %52

51:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %12, align 4
  switch i32 %54, label %60 [
    i32 0, label %55
    i32 1, label %59
  ]

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %23

59:                                               ; preds = %52, %21
  ret void

60:                                               ; preds = %52
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UniFormat(i32*, i32, i32, i32*, ...) #2

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32 @CmdIsAccountName(i32*, i32*) #2

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
