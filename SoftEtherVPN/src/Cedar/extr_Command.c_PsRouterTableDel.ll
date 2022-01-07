; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsRouterTableDel.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsRouterTableDel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CMD_RouterTableAdd_PROMPT_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"NETWORK\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"CMD_RouterTableAdd_PROMPT_NETWORK\00", align 1
@CmdEvalNetworkAndSubnetMask4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"GATEWAY\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"CMD_RouterTableAdd_PROMPT_GATEWAY\00", align 1
@CmdEvalIp = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"METRIC\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"CMD_RouterTableAdd_PROMPT_METRIC\00", align 1
@CmdEvalInt1 = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsRouterTableDel(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca [4 x %struct.TYPE_9__], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPrompt, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %24 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %23, align 16
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %26 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %31 = load i32, i32* @CmdPrompt, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %35 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 %35, i32* %34, align 16
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  %37 = load i32, i32* @CmdEvalNetworkAndSubnetMask4, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %40, align 16
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %42 = load i32, i32* @CmdPrompt, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %41, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %46 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 %46, i32* %45, align 16
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %48 = load i32, i32* @CmdEvalIp, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %51, align 16
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %53 = load i32, i32* @CmdPrompt, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %52, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %57 = call i32 @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  store i32 %57, i32* %56, align 16
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %59 = load i32, i32* @CmdEvalInt1, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 4
  store i32 0, i32* %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %65 = call i32* @ParseCommandList(i32* %61, i8* %62, i32* %63, %struct.TYPE_9__* %64, i32 4)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %4
  %69 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %69, i64* %5, align 8
  br label %106

70:                                               ; preds = %4
  %71 = call i32 @Zero(%struct.TYPE_7__* %13, i32 20)
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @GetParamStr(i32* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %76 = call i32 @StrCpy(i32 %73, i32 4, i32 %75)
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @GetParamStr(i32* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %81 = call i32 @ParseIpAndSubnetMask4(i32 %78, i32* %79, i32* %80)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @GetParamInt(i32* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @GetParamStr(i32* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %87 = call i32 @StrToIP32(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ScDelL3Table(i32 %91, %struct.TYPE_7__* %13)
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @ERR_NO_ERROR, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %70
  %97 = load i32*, i32** %6, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @CmdPrintError(i32* %97, i64 %98)
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @FreeParamValueList(i32* %100)
  %102 = load i64, i64* %12, align 8
  store i64 %102, i64* %5, align 8
  br label %106

103:                                              ; preds = %70
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @FreeParamValueList(i32* %104)
  store i64 0, i64* %5, align 8
  br label %106

106:                                              ; preds = %103, %96, %68
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i32 @ParseIpAndSubnetMask4(i32, i32*, i32*) #1

declare dso_local i32 @GetParamInt(i32*, i8*) #1

declare dso_local i32 @StrToIP32(i32) #1

declare dso_local i64 @ScDelL3Table(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
