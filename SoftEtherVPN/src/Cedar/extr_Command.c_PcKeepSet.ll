; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcKeepSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcKeepSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i8*, i32*, i32*, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CMD_KeepSet_PROMPT_HOST\00", align 1
@CmdEvalHostAndPort = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"PROTOCOL\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"CMD_KeepSet_PROMPT_PROTOCOL\00", align 1
@CmdEvalTcpOrUdp = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"INTERVAL\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"CMD_KeepSet_PROMPT_INTERVAL\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcKeepSet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [3 x %struct.TYPE_9__], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %11, align 8
  %19 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %19, i64* %12, align 8
  %20 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %16, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %23 = load i32, i32* @CmdPrompt, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %27 = call i32 @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %26, align 16
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %31 = load i32*, i32** @CmdEvalHostAndPort, align 8
  %32 = ptrtoint i32* %31 to i32
  store i32 %32, i32* %30, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %35, align 16
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %37 = load i32, i32* @CmdPrompt, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %36, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %41 = call i32 @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %40, align 16
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %45 = load i32*, i32** @CmdEvalTcpOrUdp, align 8
  %46 = ptrtoint i32* %45 to i32
  store i32 %46, i32* %44, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 4
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %49, align 16
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %51 = load i32, i32* @CmdPrompt, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %50, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %55 = call i32 @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %54, align 16
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  store i32 0, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  store i32 0, i32* %59, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %16, i64 0, i64 0
  %64 = call i32* @ParseCommandList(i32* %60, i8* %61, i32* %62, %struct.TYPE_9__* %63, i32 3)
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %4
  %68 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %68, i64* %5, align 8
  br label %119

69:                                               ; preds = %4
  %70 = call i32 @Zero(%struct.TYPE_10__* %13, i32 24)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @CcGetClientConfig(i32 %73, %struct.TYPE_10__* %13)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* @ERR_NO_ERROR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %69
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @GetParamStr(i32* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %81 = call i64 @ParseHostPort(i32 %80, i8** %14, i64* %15, i32 0)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @StrCpy(i32 %85, i32 4, i8* %86)
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  store i64 %88, i64* %89, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @GetParamInt(i32* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @GetParamStr(i32* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %95 = call i64 @StrCmpi(i32 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = call i32 @Free(i8* %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @CcSetClientConfig(i32 %104, %struct.TYPE_10__* %13)
  store i64 %105, i64* %12, align 8
  br label %106

106:                                              ; preds = %83, %78
  br label %107

107:                                              ; preds = %106, %69
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* @ERR_NO_ERROR, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32*, i32** %6, align 8
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @CmdPrintError(i32* %112, i64 %113)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @FreeParamValueList(i32* %116)
  %118 = load i64, i64* %12, align 8
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %115, %67
  %120 = load i64, i64* %5, align 8
  ret i64 %120
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @CcGetClientConfig(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @ParseHostPort(i32, i8**, i64*, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @GetParamInt(i32*, i8*) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i64 @CcSetClientConfig(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
