; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterSettingMember.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsClusterSettingMember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i64*, i32, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i8*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"[server:port]\00", align 1
@CmdPrompt = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"CMD_ClusterSettingMember_Prompt_HOST_1\00", align 1
@CmdEvalHostAndPort = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@PsClusterSettingMemberPromptIp = common dso_local global i32* null, align 8
@CmdEvalIp = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"PORTS\00", align 1
@PsClusterSettingMemberPromptPorts = common dso_local global i32* null, align 8
@CmdEvalPortList = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"PASSWORD\00", align 1
@CmdPromptChoosePassword = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"WEIGHT\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@FARM_DEFAULT_WEIGHT = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_MEMBER = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsClusterSettingMember(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [5 x %struct.TYPE_10__], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %11, align 8
  store i64 0, i64* %12, align 8
  %25 = getelementptr inbounds [5 x %struct.TYPE_10__], [5 x %struct.TYPE_10__]* %18, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %28 = load i32*, i32** @CmdPrompt, align 8
  store i32* %28, i32** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %30 = call i32* @_UU(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32* %30, i32** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %32 = load i32*, i32** @CmdEvalHostAndPort, align 8
  store i32* %32, i32** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 4
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %37 = load i32*, i32** @PsClusterSettingMemberPromptIp, align 8
  store i32* %37, i32** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %40 = load i32*, i32** @CmdEvalIp, align 8
  store i32* %40, i32** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %45 = load i32*, i32** @PsClusterSettingMemberPromptPorts, align 8
  store i32* %45, i32** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %48 = load i32*, i32** @CmdEvalPortList, align 8
  store i32* %48, i32** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %53 = load i32*, i32** @CmdPromptChoosePassword, align 8
  store i32* %53, i32** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  store i32* null, i32** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 1
  %58 = bitcast %struct.TYPE_10__* %57 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %58, i8 0, i64 40, i1 false)
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %59, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds [5 x %struct.TYPE_10__], [5 x %struct.TYPE_10__]* %18, i64 0, i64 0
  %64 = call i32* @ParseCommandList(i32* %60, i8* %61, i32* %62, %struct.TYPE_10__* %63, i32 5)
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %4
  %68 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %68, i64* %5, align 8
  br label %161

69:                                               ; preds = %4
  %70 = load i32*, i32** %10, align 8
  %71 = call i64 @GetParamInt(i32* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i64 %71, i64* %17, align 8
  %72 = load i64, i64* %17, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i64, i64* @FARM_DEFAULT_WEIGHT, align 8
  store i64 %75, i64* %17, align 8
  br label %76

76:                                               ; preds = %74, %69
  %77 = call i32 @Zero(%struct.TYPE_8__* %13, i32 56)
  %78 = load i32*, i32** %10, align 8
  %79 = call i8* @GetParamStr(i32* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %79, i8** %14, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = call i64 @ParseHostPort(i8* %80, i8** %15, i64* %16, i32 0)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %158

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 @StrCpy(i32 %85, i32 4, i8* %86)
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  store i64 %88, i64* %89, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = call i32 @Free(i8* %90)
  %92 = load i32*, i32** %10, align 8
  %93 = call i8* @GetParamStr(i32* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i8* %93, i8** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %19, align 8
  %97 = load i8*, i8** %19, align 8
  %98 = call i32 @StrLen(i8* %97)
  %99 = call i32 @Sha0(i32 %95, i8* %96, i32 %98)
  %100 = load i32*, i32** %10, align 8
  %101 = call i8* @GetParamStr(i32* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %102 = call i32 @StrToIP32(i8* %101)
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @SERVER_TYPE_FARM_MEMBER, align 4
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  store i32 %104, i32* %105, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = call i8* @GetParamStr(i32* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %107, i8** %20, align 8
  %108 = load i8*, i8** %20, align 8
  %109 = call i32* @StrToPortList(i8* %108)
  store i32* %109, i32** %21, align 8
  %110 = load i32*, i32** %21, align 8
  %111 = call i32 @LIST_NUM(i32* %110)
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = mul i64 8, %115
  %117 = trunc i64 %116 to i32
  %118 = call i64* @ZeroMalloc(i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i64* %118, i64** %119, align 8
  store i64 0, i64* %22, align 8
  br label %120

120:                                              ; preds = %134, %83
  %121 = load i64, i64* %22, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = icmp slt i64 %121, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %120
  %127 = load i32*, i32** %21, align 8
  %128 = load i64, i64* %22, align 8
  %129 = call i64 @LIST_DATA(i32* %127, i64 %128)
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* %22, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  store i64 %129, i64* %133, align 8
  br label %134

134:                                              ; preds = %126
  %135 = load i64, i64* %22, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %22, align 8
  br label %120

137:                                              ; preds = %120
  %138 = load i64, i64* %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i64 %138, i64* %139, align 8
  %140 = load i32*, i32** %21, align 8
  %141 = call i32 @ReleaseList(i32* %140)
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @ScSetFarmSetting(i32 %144, %struct.TYPE_8__* %13)
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* @ERR_NO_ERROR, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %137
  %150 = load i32*, i32** %6, align 8
  %151 = load i64, i64* %12, align 8
  %152 = call i32 @CmdPrintError(i32* %150, i64 %151)
  %153 = load i32*, i32** %10, align 8
  %154 = call i32 @FreeParamValueList(i32* %153)
  %155 = load i64, i64* %12, align 8
  store i64 %155, i64* %5, align 8
  br label %161

156:                                              ; preds = %137
  %157 = call i32 @FreeRpcFarm(%struct.TYPE_8__* %13)
  br label %158

158:                                              ; preds = %156, %76
  %159 = load i32*, i32** %10, align 8
  %160 = call i32 @FreeParamValueList(i32* %159)
  store i64 0, i64* %5, align 8
  br label %161

161:                                              ; preds = %158, %149, %67
  %162 = load i64, i64* %5, align 8
  ret i64 %162
}

declare dso_local i32* @_UU(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @GetParamInt(i32*, i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ParseHostPort(i8*, i8**, i64*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @Sha0(i32, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @StrToIP32(i8*) #1

declare dso_local i32* @StrToPortList(i8*) #1

declare dso_local i32 @LIST_NUM(i32*) #1

declare dso_local i64* @ZeroMalloc(i32) #1

declare dso_local i64 @LIST_DATA(i32*, i64) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i64 @ScSetFarmSetting(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @FreeRpcFarm(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
