; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcCertAdd.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcCertAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32)* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i8*, i32*, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[path]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"CMD_CAAdd_PROMPT_PATH\00", align 1
@CmdEvalIsFile = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"CMD_MSG_LOAD_CERT_FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcCertAdd(%struct.TYPE_15__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [1 x %struct.TYPE_14__], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %11, align 8
  %18 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %18, i64* %12, align 8
  %19 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %15, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %22 = load i32, i32* @CmdPrompt, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %26 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %25, align 16
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  %28 = load i32, i32* @CmdEvalIsFile, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %15, i64 0, i64 0
  %34 = call i32* @ParseCommandList(%struct.TYPE_15__* %30, i8* %31, i32* %32, %struct.TYPE_14__* %33, i32 1)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %38, i64* %5, align 8
  br label %81

39:                                               ; preds = %4
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @GetParamUniStr(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %42 = call i32* @FileToXW(i32 %41)
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @FreeParamValueList(i32* %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %49, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = call i32 @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 %50(%struct.TYPE_15__* %51, i32 %52)
  %54 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %54, i64* %5, align 8
  br label %81

55:                                               ; preds = %39
  %56 = call i32 @Zero(%struct.TYPE_12__* %13, i32 8)
  %57 = load i32*, i32** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32* %57, i32** %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @CcAddCa(i32 %61, %struct.TYPE_12__* %13)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @ERR_NO_ERROR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @ERR_NO_ERROR, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @CmdPrintError(%struct.TYPE_15__* %72, i64 %73)
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @FreeX(i32* %76)
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @FreeParamValueList(i32* %78)
  %80 = load i64, i64* %12, align 8
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %75, %45, %37
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32* @FileToXW(i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @Zero(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @CcAddCa(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @FreeX(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
