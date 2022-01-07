; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsIPsecEnable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsIPsecEnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"L2TP\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"CMD_IPsecEnable_Prompt_L2TP\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"L2TPRAW\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"CMD_IPsecEnable_Prompt_L2TPRAW\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ETHERIP\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"CMD_IPsecEnable_Prompt_ETHERIP\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"PSK\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"CMD_IPsecEnable_Prompt_PSK\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"DEFAULTHUB\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"CMD_IPsecEnable_Prompt_DEFAULTHUB\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsIPsecEnable(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca [5 x %struct.TYPE_8__], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPrompt, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %24 = call i32 @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %23, align 16
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %26 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %31 = load i32, i32* @CmdPrompt, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %35 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 %35, i32* %34, align 16
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %37 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %40, align 16
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %42 = load i32, i32* @CmdPrompt, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %41, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %46 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i32 %46, i32* %45, align 16
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %48 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %51, align 16
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %53 = load i32, i32* @CmdPrompt, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %52, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %57 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  store i32 %57, i32* %56, align 16
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %59 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  store i32 0, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %62, align 16
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %64 = load i32, i32* @CmdPrompt, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %63, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %68 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  store i32 %68, i32* %67, align 16
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %70 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %70, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  store i32 0, i32* %71, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %14, i64 0, i64 0
  %76 = call i32* @ParseCommandList(i32* %72, i8* %73, i32* %74, %struct.TYPE_8__* %75, i32 5)
  store i32* %76, i32** %10, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %4
  %80 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %80, i64* %5, align 8
  br label %119

81:                                               ; preds = %4
  %82 = call i32 @Zero(%struct.TYPE_9__* %13, i32 32)
  %83 = load i32*, i32** %10, align 8
  %84 = call i8* @GetParamYes(i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 4
  store i8* %84, i8** %85, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i8* @GetParamYes(i32* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  store i8* %87, i8** %88, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = call i8* @GetParamYes(i32* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @GetParamStr(i32* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %96 = call i32 @StrCpy(i32 %93, i32 4, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @GetParamStr(i32* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %101 = call i32 @StrCpy(i32 %98, i32 4, i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @ScSetIPsecServices(i32 %104, %struct.TYPE_9__* %13)
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* @ERR_NO_ERROR, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %81
  %110 = load i32*, i32** %6, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @CmdPrintError(i32* %110, i64 %111)
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @FreeParamValueList(i32* %113)
  %115 = load i64, i64* %12, align 8
  store i64 %115, i64* %5, align 8
  br label %119

116:                                              ; preds = %81
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @FreeParamValueList(i32* %117)
  store i64 0, i64* %5, align 8
  br label %119

119:                                              ; preds = %116, %109, %79
  %120 = load i64, i64* %5, align 8
  ret i64 %120
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @GetParamYes(i32*, i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScSetIPsecServices(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
