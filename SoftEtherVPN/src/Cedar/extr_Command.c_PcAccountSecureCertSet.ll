; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountSecureCertSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountSecureCertSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i8*, i32*, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"CERTNAME\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"CMD_AccountSecureCertSet_PROMPT_CERTNAME\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"KEYNAME\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"CMD_AccountSecureCertSet_PROMPT_KEYNAME\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@CLIENT_AUTHTYPE_SECURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountSecureCertSet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca [3 x %struct.TYPE_14__], align 16
  %15 = alloca %struct.TYPE_12__, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %11, align 8
  %18 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %18, i64* %12, align 8
  %19 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %14, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %22 = load i32, i32* @CmdPrompt, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %26 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %25, align 16
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  %28 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i64 1
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 16
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %33 = load i32, i32* @CmdPrompt, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %32, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %37 = call i32 @_UU(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %36, align 16
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 3
  %39 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 4
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i64 1
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %42, align 16
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %44 = load i32, i32* @CmdPrompt, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %43, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %48 = call i32 @_UU(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 %48, i32* %47, align 16
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 3
  %50 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 4
  store i32 0, i32* %51, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %14, i64 0, i64 0
  %56 = call i32* @ParseCommandList(i32* %52, i8* %53, i32* %54, %struct.TYPE_14__* %55, i32 3)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %4
  %60 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %60, i64* %5, align 8
  br label %130

61:                                               ; preds = %4
  %62 = call i32 @Zero(%struct.TYPE_12__* %13, i32 40)
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @GetParamUniStr(i32* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %67 = call i32 @UniStrCpy(i32 %64, i32 4, i32 %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @CcGetAccount(i32 %70, %struct.TYPE_12__* %13)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @ERR_NO_ERROR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %117

75:                                               ; preds = %61
  %76 = load i32, i32* @CLIENT_AUTHTYPE_SECURE, align 4
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @GetParamStr(i32* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %86 = call i32 @StrCpy(i32 %83, i32 4, i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @GetParamStr(i32* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %93 = call i32 @StrCpy(i32 %90, i32 4, i32 %92)
  %94 = call i32 @Zero(%struct.TYPE_12__* %15, i32 40)
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 5
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  store i32 %99, i32* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  store %struct.TYPE_11__* %102, %struct.TYPE_11__** %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  store i32 %105, i32* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @CcSetAccount(i32 %115, %struct.TYPE_12__* %15)
  store i64 %116, i64* %12, align 8
  br label %117

117:                                              ; preds = %75, %61
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* @ERR_NO_ERROR, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32*, i32** %6, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @CmdPrintError(i32* %122, i64 %123)
  br label %125

125:                                              ; preds = %121, %117
  %126 = call i32 @CiFreeClientGetAccount(%struct.TYPE_12__* %13)
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @FreeParamValueList(i32* %127)
  %129 = load i64, i64* %12, align 8
  store i64 %129, i64* %5, align 8
  br label %130

130:                                              ; preds = %125, %59
  %131 = load i64, i64* %5, align 8
  ret i64 %131
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @CcGetAccount(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i64 @CcSetAccount(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @CiFreeClientGetAccount(%struct.TYPE_12__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
