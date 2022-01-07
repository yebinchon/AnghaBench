; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeStatusGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeStatusGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_CascadeCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadeStatusGet(%struct.TYPE_17__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca [1 x %struct.TYPE_16__], align 16
  %15 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %18 = getelementptr inbounds [1 x %struct.TYPE_16__], [1 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %19, align 16
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %21 = load i32, i32* @CmdPrompt, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %25 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %24, align 16
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %27 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 4
  store i32 0, i32* %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %35, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 %36(%struct.TYPE_17__* %37, i32 %38)
  %40 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %40, i64* %5, align 8
  br label %90

41:                                               ; preds = %4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds [1 x %struct.TYPE_16__], [1 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %46 = call i32* @ParseCommandList(%struct.TYPE_17__* %42, i8* %43, i32* %44, %struct.TYPE_16__* %45, i32 1)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %50, i64* %5, align 8
  br label %90

51:                                               ; preds = %41
  %52 = call i32 @Zero(%struct.TYPE_14__* %13, i32 12)
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @StrCpy(i32 %54, i32 4, i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @GetParamUniStr(i32* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @UniStrCpy(i32 %60, i32 4, i32 %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ScGetLinkStatus(i32 %66, %struct.TYPE_14__* %13)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @ERR_NO_ERROR, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %51
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @CmdPrintError(%struct.TYPE_17__* %72, i64 %73)
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @FreeParamValueList(i32* %75)
  %77 = load i64, i64* %12, align 8
  store i64 %77, i64* %5, align 8
  br label %90

78:                                               ; preds = %51
  %79 = call i32* (...) @CtNewStandard()
  store i32* %79, i32** %15, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %82 = call i32 @CmdPrintStatusToListView(i32* %80, i32* %81)
  %83 = load i32*, i32** %15, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = call i32 @CtFree(i32* %83, %struct.TYPE_17__* %84)
  %86 = call i32 @FreeRpcLinkStatus(%struct.TYPE_14__* %13)
  br label %87

87:                                               ; preds = %78
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @FreeParamValueList(i32* %88)
  store i64 0, i64* %5, align 8
  br label %90

90:                                               ; preds = %87, %71, %49, %33
  %91 = load i64, i64* %5, align 8
  ret i64 %91
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScGetLinkStatus(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @CmdPrintStatusToListView(i32*, i32*) #1

declare dso_local i32 @CtFree(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @FreeRpcLinkStatus(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
