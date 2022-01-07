; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsKeepSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsKeepSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i8*, i32*, i32*, i32, i32 }

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
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsKeepSet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [3 x %struct.TYPE_10__], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %16, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %22 = load i32, i32* @CmdPrompt, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %26 = call i32 @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %25, align 16
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %30 = load i32*, i32** @CmdEvalHostAndPort, align 8
  %31 = ptrtoint i32* %30 to i32
  store i32 %31, i32* %29, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 4
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 16
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %36 = load i32, i32* @CmdPrompt, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %35, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %40 = call i32 @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %39, align 16
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %44 = load i32*, i32** @CmdEvalTcpOrUdp, align 8
  %45 = ptrtoint i32* %44 to i32
  store i32 %45, i32* %43, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 4
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %48, align 16
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %50 = load i32, i32* @CmdPrompt, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %49, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %54 = call i32 @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %53, align 16
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  store i32 0, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %16, i64 0, i64 0
  %63 = call i32* @ParseCommandList(i32* %59, i8* %60, i32* %61, %struct.TYPE_10__* %62, i32 3)
  store i32* %63, i32** %10, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %4
  %67 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %67, i64* %5, align 8
  br label %126

68:                                               ; preds = %4
  %69 = call i32 @Zero(%struct.TYPE_8__* %13, i32 24)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ScGetKeep(i32 %72, %struct.TYPE_8__* %13)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* @ERR_NO_ERROR, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load i32*, i32** %6, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @CmdPrintError(i32* %78, i64 %79)
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @FreeParamValueList(i32* %81)
  %83 = load i64, i64* %12, align 8
  store i64 %83, i64* %5, align 8
  br label %126

84:                                               ; preds = %68
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @GetParamStr(i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %87 = call i64 @ParseHostPort(i32 %86, i8** %14, i64* %15, i32 0)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @StrCpy(i32 %91, i32 4, i8* %92)
  %94 = load i64, i64* %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i64 %94, i64* %95, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @GetParamInt(i32* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @GetParamStr(i32* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %101 = call i64 @StrCmpi(i32 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 %104, i32* %105, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 @Free(i8* %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @ScSetKeep(i32 %110, %struct.TYPE_8__* %13)
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* @ERR_NO_ERROR, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %89
  %116 = load i32*, i32** %6, align 8
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @CmdPrintError(i32* %116, i64 %117)
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @FreeParamValueList(i32* %119)
  %121 = load i64, i64* %12, align 8
  store i64 %121, i64* %5, align 8
  br label %126

122:                                              ; preds = %89
  br label %123

123:                                              ; preds = %122, %84
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @FreeParamValueList(i32* %124)
  store i64 0, i64* %5, align 8
  br label %126

126:                                              ; preds = %123, %115, %77, %66
  %127 = load i64, i64* %5, align 8
  ret i64 %127
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ScGetKeep(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i64 @ParseHostPort(i32, i8**, i64*, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @GetParamInt(i32*, i8*) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i64 @ScSetKeep(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
