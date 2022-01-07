; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountRetryOnServerCertEnable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountRetryOnServerCertEnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32*, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountRetryOnServerCertEnable(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__, align 4
  %14 = alloca [1 x %struct.TYPE_12__], align 16
  %15 = alloca %struct.TYPE_10__, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %11, align 8
  %18 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %18, i64* %12, align 8
  %19 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %14, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %22 = load i32, i32* @CmdPrompt, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %26 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %25, align 16
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %28 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds [1 x %struct.TYPE_12__], [1 x %struct.TYPE_12__]* %14, i64 0, i64 0
  %34 = call i32* @ParseCommandList(i32* %30, i8* %31, i32* %32, %struct.TYPE_12__* %33, i32 1)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %38, i64* %5, align 8
  br label %91

39:                                               ; preds = %4
  %40 = call i32 @Zero(%struct.TYPE_10__* %13, i32 28)
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @GetParamUniStr(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @UniStrCpy(i32 %42, i32 4, i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @CcGetAccount(i32 %48, %struct.TYPE_10__* %13)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @ERR_NO_ERROR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = call i32 @Zero(%struct.TYPE_10__* %15, i32 28)
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 5
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @CcSetAccount(i32 %76, %struct.TYPE_10__* %15)
  store i64 %77, i64* %12, align 8
  br label %78

78:                                               ; preds = %53, %39
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* @ERR_NO_ERROR, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @CmdPrintError(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %82, %78
  %87 = call i32 @CiFreeClientGetAccount(%struct.TYPE_10__* %13)
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @FreeParamValueList(i32* %88)
  %90 = load i64, i64* %12, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %86, %37
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @CcGetAccount(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @CcSetAccount(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @CiFreeClientGetAccount(%struct.TYPE_10__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
