; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsHubCreate.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsHubCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i64, i32 }
%struct.TYPE_12__ = type { i8*, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HUB_TYPE_STANDALONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"CMD_HubCreate_PROMPT_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"PASSWORD\00", align 1
@CmdPromptChoosePassword = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@HUB_TYPE_FARM_DYNAMIC = common dso_local global i64 0, align 8
@ADMINISTRATOR_USERNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsHubCreate(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [2 x %struct.TYPE_12__], align 16
  %17 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %11, align 8
  store i64 0, i64* %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %20 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  store i64 %20, i64* %15, align 8
  %21 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %16, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %24 = load i32, i32* @CmdPrompt, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %23, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %28 = call i32* @_UU(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32* %28, i32** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %30 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %30, i32** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 4
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %35 = load i32, i32* @CmdPromptChoosePassword, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %34, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  store i32 0, i32* %40, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %16, i64 0, i64 0
  %45 = call i32* @ParseCommandList(i32* %41, i8* %42, i32* %43, %struct.TYPE_12__* %44, i32 2)
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %49, i64* %5, align 8
  br label %114

50:                                               ; preds = %4
  %51 = call i32 @Zero(%struct.TYPE_10__* %17, i32 40)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ScGetServerInfo(i32 %54, %struct.TYPE_10__* %17)
  %56 = load i64, i64* @ERR_NO_ERROR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  store i64 %64, i64* %15, align 8
  br label %65

65:                                               ; preds = %63, %58
  %66 = call i32 @FreeRpcServerInfo(%struct.TYPE_10__* %17)
  br label %67

67:                                               ; preds = %65, %50
  br label %68

68:                                               ; preds = %67
  %69 = call i32 @Zero(%struct.TYPE_10__* %13, i32 40)
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i8* @GetParamStr(i32* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 @StrCpy(i32 %71, i32 4, i8* %73)
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  store i64 %75, i64* %76, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = call i8* @GetParamStr(i32* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 @IsEmptyStr(i8* %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %68
  %82 = load i32*, i32** %10, align 8
  %83 = call i8* @GetParamStr(i32* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %83, i8** %14, align 8
  br label %84

84:                                               ; preds = %81, %68
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 @StrLen(i8* %88)
  %90 = call i32 @Sha0(i32 %86, i8* %87, i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ADMINISTRATOR_USERNAME, align 4
  %94 = load i8*, i8** %14, align 8
  %95 = call i32 @HashPassword(i32 %92, i32 %93, i8* %94)
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32 1, i32* %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @ScCreateHub(i32 %99, %struct.TYPE_10__* %13)
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* @ERR_NO_ERROR, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %84
  %105 = load i32*, i32** %6, align 8
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @CmdPrintError(i32* %105, i64 %106)
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @FreeParamValueList(i32* %108)
  %110 = load i64, i64* %12, align 8
  store i64 %110, i64* %5, align 8
  br label %114

111:                                              ; preds = %84
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @FreeParamValueList(i32* %112)
  store i64 0, i64* %5, align 8
  br label %114

114:                                              ; preds = %111, %104, %48
  %115 = load i64, i64* %5, align 8
  ret i64 %115
}

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ScGetServerInfo(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @FreeRpcServerInfo(%struct.TYPE_10__*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @Sha0(i32, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @HashPassword(i32, i32, i8*) #1

declare dso_local i64 @ScCreateHub(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
