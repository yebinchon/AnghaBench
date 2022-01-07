; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountRename.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountRename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i32*, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"CMD_AccountRename_PROMPT_OLD\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"NEW\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"CMD_AccountRename_PROMPT_NEW\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountRename(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
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
  %17 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %17, i64* %12, align 8
  %18 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %19, align 16
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %21 = load i32, i32* @CmdPrompt, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %25 = call i32 @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %24, align 16
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %27 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %30, align 16
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %32 = load i32, i32* @CmdPrompt, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %31, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %36 = call i32 @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 %36, i32* %35, align 16
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %38 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  store i32 0, i32* %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %44 = call i32* @ParseCommandList(i32* %40, i8* %41, i32* %42, %struct.TYPE_9__* %43, i32 2)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %4
  %48 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %48, i64* %5, align 8
  br label %81

49:                                               ; preds = %4
  %50 = call i32 @Zero(%struct.TYPE_7__* %13, i32 8)
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @GetParamUniStr(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @UniStrCpy(i32 %52, i32 4, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @GetParamUniStr(i32* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @UniStrCpy(i32 %57, i32 4, i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @CcRenameAccount(i32 %63, %struct.TYPE_7__* %13)
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @ERR_NO_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68, %49
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @ERR_NO_ERROR, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32*, i32** %6, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @CmdPrintError(i32* %74, i64 %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @FreeParamValueList(i32* %78)
  %80 = load i64, i64* %12, align 8
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %77, %47
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @CcRenameAccount(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
