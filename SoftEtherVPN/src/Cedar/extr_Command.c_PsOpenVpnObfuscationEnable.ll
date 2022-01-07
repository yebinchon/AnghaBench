; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsOpenVpnObfuscationEnable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsOpenVpnObfuscationEnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"[yes|no]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"CMD_OpenVpnObfuscationEnable_Prompt_[yes|no]\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"CMD_OpenVpnObfuscationEnable_Prompt_MASK\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsOpenVpnObfuscationEnable(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__, align 4
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
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPrompt, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %24 = call i32 @_UU(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %23, align 16
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %28 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %29 = ptrtoint i32* %28 to i32
  store i32 %29, i32* %27, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 16
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %34 = load i32, i32* @CmdPrompt, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %33, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %38 = call i32 @_UU(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %37, align 16
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %47 = call i32* @ParseCommandList(i32* %43, i8* %44, i32* %45, %struct.TYPE_9__* %46, i32 2)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %4
  %51 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %51, i64* %5, align 8
  br label %94

52:                                               ; preds = %4
  %53 = call i32 @Zero(%struct.TYPE_10__* %13, i32 8)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ScGetOpenVpnSstpConfig(i32 %56, %struct.TYPE_10__* %13)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @ERR_NO_ERROR, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load i32*, i32** %6, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @CmdPrintError(i32* %62, i64 %63)
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @FreeParamValueList(i32* %65)
  %67 = load i64, i64* %12, align 8
  store i64 %67, i64* %5, align 8
  br label %94

68:                                               ; preds = %52
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @GetParamYes(i32* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @GetParamStr(i32* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %76 = call i32 @StrCpy(i32 %73, i32 4, i32 %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @ScSetOpenVpnSstpConfig(i32 %79, %struct.TYPE_10__* %13)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @ERR_NO_ERROR, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %68
  %85 = load i32*, i32** %6, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @CmdPrintError(i32* %85, i64 %86)
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @FreeParamValueList(i32* %88)
  %90 = load i64, i64* %12, align 8
  store i64 %90, i64* %5, align 8
  br label %94

91:                                               ; preds = %68
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @FreeParamValueList(i32* %92)
  store i64 0, i64* %5, align 8
  br label %94

94:                                               ; preds = %91, %84, %61, %50
  %95 = load i64, i64* %5, align 8
  ret i64 %95
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ScGetOpenVpnSstpConfig(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @GetParamYes(i32*, i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScSetOpenVpnSstpConfig(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
