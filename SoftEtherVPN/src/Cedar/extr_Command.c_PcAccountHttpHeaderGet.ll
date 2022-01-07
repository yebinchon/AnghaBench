; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountHttpHeaderGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountHttpHeaderGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i32*, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32* }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@HTTP_CUSTOM_HEADER_MAX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"CMD_CT_STD_COLUMN_1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountHttpHeaderGet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca [1 x %struct.TYPE_15__], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %10, align 8
  %22 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %22, i64* %11, align 8
  %23 = getelementptr inbounds [1 x %struct.TYPE_15__], [1 x %struct.TYPE_15__]* %13, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %26 = load i32, i32* @CmdPrompt, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %25, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %30 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %29, align 16
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  %32 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 4
  store i32 0, i32* %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds [1 x %struct.TYPE_15__], [1 x %struct.TYPE_15__]* %13, i64 0, i64 0
  %38 = call i32* @ParseCommandList(i32* %34, i8* %35, i32* %36, %struct.TYPE_15__* %37, i32 1)
  store i32* %38, i32** %14, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %42, i64* %5, align 8
  br label %106

43:                                               ; preds = %4
  %44 = call i32 @Zero(%struct.TYPE_13__* %12, i32 16)
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = call i32 @GetParamUniStr(i32* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @UniStrCpy(i32 %46, i32 4, i32 %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @CcGetAccount(i32 %52, %struct.TYPE_13__* %12)
  store i64 %53, i64* %11, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @FreeParamValueList(i32* %54)
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @ERR_NO_ERROR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %99

59:                                               ; preds = %43
  %60 = load i32, i32* @HTTP_CUSTOM_HEADER_MAX_SIZE, align 4
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %15, align 8
  %63 = alloca i32, i64 %61, align 16
  store i64 %61, i64* %16, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %17, align 8
  store i64 0, i64* %18, align 8
  %64 = call i32* (...) @CtNew()
  store i32* %64, i32** %19, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 @CtInsertColumn(i32* %65, i32 %66, i32 0)
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_12__* @ParseToken(i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %17, align 8
  store i64 0, i64* %18, align 8
  br label %73

73:                                               ; preds = %91, %59
  %74 = load i64, i64* %18, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = mul nuw i64 4, %61
  %81 = trunc i64 %80 to i32
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %18, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @StrToUni(i32* %63, i32 %81, i32 %87)
  %89 = load i32*, i32** %19, align 8
  %90 = call i32 @CtInsert(i32* %89, i32* %63)
  br label %91

91:                                               ; preds = %79
  %92 = load i64, i64* %18, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %18, align 8
  br label %73

94:                                               ; preds = %73
  %95 = load i32*, i32** %19, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @CtFreeEx(i32* %95, i32* %96, i32 0)
  %98 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %98)
  br label %103

99:                                               ; preds = %43
  %100 = load i32*, i32** %6, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @CmdPrintError(i32* %100, i64 %101)
  br label %103

103:                                              ; preds = %99, %94
  %104 = call i32 @CiFreeClientGetAccount(%struct.TYPE_13__* %12)
  %105 = load i64, i64* %11, align 8
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %103, %41
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @CcGetAccount(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @ParseToken(i32, i8*) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*) #1

declare dso_local i32 @CtFreeEx(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @CiFreeClientGetAccount(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
