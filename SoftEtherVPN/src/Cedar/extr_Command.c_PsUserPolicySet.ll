; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserPolicySet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserPolicySet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32)* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32*, i32, i32 }
%struct.TYPE_17__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CMD_UserCreate_Prompt_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"CMD_CascadePolicySet_PROMPT_POLNAME\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"CMD_CascadePolicySet_PROMPT_POLVALUE\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsUserPolicySet(%struct.TYPE_18__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca [3 x %struct.TYPE_17__], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPrompt, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %24 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %23, align 16
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  %26 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i64 1
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %31 = load i32, i32* @CmdPrompt, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 2
  %35 = call i32 @_UU(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 %35, i32* %34, align 16
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 3
  %37 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i64 1
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %40, align 16
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %42 = load i32, i32* @CmdPrompt, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %41, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %46 = call i32 @_UU(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 %46, i32* %45, align 16
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 3
  %48 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 4
  store i32 0, i32* %49, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %60 = call i32 %57(%struct.TYPE_18__* %58, i32 %59)
  %61 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %61, i64* %5, align 8
  br label %140

62:                                               ; preds = %4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %14, i64 0, i64 0
  %67 = call i32* @ParseCommandList(%struct.TYPE_18__* %63, i8* %64, i32* %65, %struct.TYPE_17__* %66, i32 3)
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %71, i64* %5, align 8
  br label %140

72:                                               ; preds = %62
  %73 = call i32 @Zero(%struct.TYPE_15__* %13, i32 16)
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @StrCpy(i32 %75, i32 4, i32* %78)
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i32* @GetParamStr(i32* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %84 = call i32 @StrCpy(i32 %81, i32 4, i32* %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @ScGetUser(i32 %87, %struct.TYPE_15__* %13)
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @ERR_NO_ERROR, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %72
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @CmdPrintError(%struct.TYPE_18__* %93, i64 %94)
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @FreeParamValueList(i32* %96)
  %98 = load i64, i64* %12, align 8
  store i64 %98, i64* %5, align 8
  br label %140

99:                                               ; preds = %72
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = call i32 (...) @GetDefaultPolicy()
  %105 = call i32* @ClonePolicy(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32* %105, i32** %106, align 8
  br label %107

107:                                              ; preds = %103, %99
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = call i32* @GetParamStr(i32* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32*, i32** %10, align 8
  %114 = call i32* @GetParamStr(i32* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %115 = call i32 @EditPolicy(%struct.TYPE_18__* %108, i32* %110, i32* %112, i32* %114, i32 0)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %118, i64* %12, align 8
  br label %135

119:                                              ; preds = %107
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @ScSetUser(i32 %122, %struct.TYPE_15__* %13)
  store i64 %123, i64* %12, align 8
  %124 = load i64, i64* %12, align 8
  %125 = load i64, i64* @ERR_NO_ERROR, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = load i64, i64* %12, align 8
  %130 = call i32 @CmdPrintError(%struct.TYPE_18__* %128, i64 %129)
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @FreeParamValueList(i32* %131)
  %133 = load i64, i64* %12, align 8
  store i64 %133, i64* %5, align 8
  br label %140

134:                                              ; preds = %119
  br label %135

135:                                              ; preds = %134, %117
  %136 = call i32 @FreeRpcSetUser(%struct.TYPE_15__* %13)
  %137 = load i32*, i32** %10, align 8
  %138 = call i32 @FreeParamValueList(i32* %137)
  %139 = load i64, i64* %12, align 8
  store i64 %139, i64* %5, align 8
  br label %140

140:                                              ; preds = %135, %127, %92, %70, %54
  %141 = load i64, i64* %5, align 8
  ret i64 %141
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i32* @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScGetUser(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @ClonePolicy(i32) #1

declare dso_local i32 @GetDefaultPolicy(...) #1

declare dso_local i32 @EditPolicy(%struct.TYPE_18__*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @ScSetUser(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @FreeRpcSetUser(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
