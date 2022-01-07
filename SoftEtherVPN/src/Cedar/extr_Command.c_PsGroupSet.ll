; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsGroupSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsGroupSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"CMD_GroupCreate_Prompt_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"REALNAME\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"CMD_GroupCreate_Prompt_REALNAME\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NOTE\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"CMD_GroupCreate_Prompt_NOTE\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsGroupSet(%struct.TYPE_17__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca [3 x %struct.TYPE_16__], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPrompt, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %24 = call i32 @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %23, align 16
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  %28 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %29 = ptrtoint i32* %28 to i32
  store i32 %29, i32* %27, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 4
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i64 1
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 16
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %34 = load i32, i32* @CmdPrompt, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %33, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %38 = call i32 @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %37, align 16
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 3
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 4
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i64 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %44, align 16
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %46 = load i32, i32* @CmdPrompt, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %45, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 2
  %50 = call i32 @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %49, align 16
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 3
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  store i32 0, i32* %54, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %65 = call i32 %62(%struct.TYPE_17__* %63, i32 %64)
  %66 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %66, i64* %5, align 8
  br label %133

67:                                               ; preds = %4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %72 = call i32* @ParseCommandList(%struct.TYPE_17__* %68, i8* %69, i32* %70, %struct.TYPE_16__* %71, i32 3)
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %76, i64* %5, align 8
  br label %133

77:                                               ; preds = %67
  %78 = call i32 @Zero(%struct.TYPE_14__* %13, i32 16)
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @StrCpy(i32 %80, i32 4, i32* %83)
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = call i32* @GetParamStr(i32* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %89 = call i32 @StrCpy(i32 %86, i32 4, i32* %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @ScGetGroup(i32 %92, %struct.TYPE_14__* %13)
  store i64 %93, i64* %12, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* @ERR_NO_ERROR, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %77
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @CmdPrintError(%struct.TYPE_17__* %98, i64 %99)
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @FreeParamValueList(i32* %101)
  %103 = load i64, i64* %12, align 8
  store i64 %103, i64* %5, align 8
  br label %133

104:                                              ; preds = %77
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @GetParamUniStr(i32* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %109 = call i32 @UniStrCpy(i32 %106, i32 4, i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @GetParamUniStr(i32* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %114 = call i32 @UniStrCpy(i32 %111, i32 4, i32 %113)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @ScSetGroup(i32 %117, %struct.TYPE_14__* %13)
  store i64 %118, i64* %12, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* @ERR_NO_ERROR, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %104
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @CmdPrintError(%struct.TYPE_17__* %123, i64 %124)
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @FreeParamValueList(i32* %126)
  %128 = load i64, i64* %12, align 8
  store i64 %128, i64* %5, align 8
  br label %133

129:                                              ; preds = %104
  %130 = call i32 @FreeRpcSetGroup(%struct.TYPE_14__* %13)
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @FreeParamValueList(i32* %131)
  store i64 0, i64* %5, align 8
  br label %133

133:                                              ; preds = %129, %122, %97, %75, %59
  %134 = load i64, i64* %5, align 8
  ret i64 %134
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i32* @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScGetGroup(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScSetGroup(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @FreeRpcSetGroup(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
