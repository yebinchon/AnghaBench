; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PrintPolicy.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PrintPolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"CMD_PolicyList_Column_1\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"CMD_PolicyList_Column_2\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"CMD_PolicyList_Column_3\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"policy:%s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"POL_%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintPolicy(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32*, align 8
  %12 = alloca [256 x i32], align 16
  %13 = alloca i64, align 8
  %14 = alloca [256 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %3
  br label %83

21:                                               ; preds = %17
  %22 = call i32* (...) @CtNew()
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @CtInsertColumn(i32* %23, i32 %24, i32 0)
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @CtInsertColumn(i32* %26, i32 %27, i32 0)
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @CtInsertColumn(i32* %29, i32 %30, i32 0)
  %32 = call i32* (...) @NewPack()
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @OutRpcPolicy(i32* %33, i32* %34)
  store i64 0, i64* %7, align 8
  br label %36

36:                                               ; preds = %74, %21
  %37 = load i64, i64* %7, align 8
  %38 = call i64 (...) @PolicyNum()
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @PolicyIsSupportedForCascade(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %43, %40
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @PolicyIdToStr(i64 %49)
  %51 = call i32 @Format(i8* %48, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %54 = call i64 @PackGetInt(i32* %52, i8* %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @PolicyIdToStr(i64 %55)
  %57 = call i32* @CopyStrToUni(i64 %56)
  store i32* %57, i32** %11, align 8
  %58 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @FormatPolicyValue(i32* %58, i32 1024, i64 %59, i64 %60)
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @Format(i8* %62, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %68 = call i32 @_UU(i8* %67)
  %69 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %70 = call i32 @CtInsert(i32* %65, i32* %66, i32 %68, i32* %69)
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @Free(i32* %71)
  br label %73

73:                                               ; preds = %47, %43
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %7, align 8
  br label %36

77:                                               ; preds = %36
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @FreePack(i32* %78)
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @CtFree(i32* %80, i32* %81)
  br label %83

83:                                               ; preds = %77, %20
  ret void
}

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @OutRpcPolicy(i32*, i32*) #1

declare dso_local i64 @PolicyNum(...) #1

declare dso_local i64 @PolicyIsSupportedForCascade(i64) #1

declare dso_local i32 @Format(i8*, i32, i8*, i64) #1

declare dso_local i64 @PolicyIdToStr(i64) #1

declare dso_local i64 @PackGetInt(i32*, i8*) #1

declare dso_local i32* @CopyStrToUni(i64) #1

declare dso_local i32 @FormatPolicyValue(i32*, i32, i64, i64) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32, i32*) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32 @CtFree(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
