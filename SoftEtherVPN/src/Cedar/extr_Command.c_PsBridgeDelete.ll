; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsBridgeDelete.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsBridgeDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"[hubname]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"CMD_BridgeDelete_PROMPT_HUBNAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"CMD_BridgeDelete_PROMPT_DEVICE\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsBridgeDelete(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca [2 x %struct.TYPE_9__], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPrompt, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %24 = call i32 @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %23, align 16
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %26 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %31 = load i32, i32* @CmdPrompt, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %35 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 %35, i32* %34, align 16
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  %37 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %43 = call i32* @ParseCommandList(i32* %39, i8* %40, i32* %41, %struct.TYPE_9__* %42, i32 2)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %4
  %47 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %47, i64* %5, align 8
  br label %77

48:                                               ; preds = %4
  %49 = call i32 @Zero(%struct.TYPE_7__* %13, i32 8)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @GetParamStr(i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32 @StrCpy(i32 %51, i32 4, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @GetParamStr(i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 @StrCpy(i32 %56, i32 4, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ScDeleteLocalBridge(i32 %62, %struct.TYPE_7__* %13)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* @ERR_NO_ERROR, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %48
  %68 = load i32*, i32** %6, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @CmdPrintError(i32* %68, i64 %69)
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @FreeParamValueList(i32* %71)
  %73 = load i64, i64* %12, align 8
  store i64 %73, i64* %5, align 8
  br label %77

74:                                               ; preds = %48
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @FreeParamValueList(i32* %75)
  store i64 0, i64* %5, align 8
  br label %77

77:                                               ; preds = %74, %67, %46
  %78 = load i64, i64* %5, align 8
  ret i64 %78
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScDeleteLocalBridge(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
