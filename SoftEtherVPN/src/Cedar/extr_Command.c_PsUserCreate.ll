; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserCreate.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32)* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CMD_UserCreate_Prompt_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"CMD_UserCreate_Prompt_GROUP\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"REALNAME\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"CMD_UserCreate_Prompt_REALNAME\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"NOTE\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"CMD_UserCreate_Prompt_NOTE\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@AUTHTYPE_RADIUS = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@MD5_SIZE = common dso_local global i32 0, align 4
@AUTHTYPE_PASSWORD = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsUserCreate(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca [4 x %struct.TYPE_15__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %23 = load i32, i32* @CmdPrompt, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %27 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %26, align 16
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  %31 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %32 = ptrtoint i32* %31 to i32
  store i32 %32, i32* %30, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 4
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i64 1
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %35, align 16
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %37 = load i32, i32* @CmdPrompt, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %36, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %41 = call i32 @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %40, align 16
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 4
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 1
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %49 = load i32, i32* @CmdPrompt, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %48, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %53 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %52, align 16
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 3
  store i32 0, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 4
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i64 1
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %59, align 16
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %61 = load i32, i32* @CmdPrompt, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %60, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %65 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %64, align 16
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 3
  store i32 0, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 4
  store i32 0, i32* %69, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %80 = call i32 %77(%struct.TYPE_16__* %78, i32 %79)
  %81 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %81, i64* %5, align 8
  br label %170

82:                                               ; preds = %4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds [4 x %struct.TYPE_15__], [4 x %struct.TYPE_15__]* %14, i64 0, i64 0
  %87 = call i32* @ParseCommandList(%struct.TYPE_16__* %83, i8* %84, i32* %85, %struct.TYPE_15__* %86, i32 4)
  store i32* %87, i32** %10, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %91, i64* %5, align 8
  br label %170

92:                                               ; preds = %82
  %93 = call i32 @Zero(%struct.TYPE_13__* %13, i32 28)
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @StrCpy(i32 %95, i32 4, i32* %98)
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = call i32* @GetParamStr(i32* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %104 = call i32 @StrCpy(i32 %101, i32 4, i32* %103)
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = call i32* @GetParamStr(i32* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %109 = call i32 @StrCpy(i32 %106, i32 4, i32* %108)
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @GetParamUniStr(i32* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %114 = call i32 @UniStrCpy(i32 %111, i32 4, i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @GetParamUniStr(i32* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %119 = call i32 @UniStrCpy(i32 %116, i32 4, i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @Trim(i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @StrCmpi(i32 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %92
  %128 = load i32, i32* @AUTHTYPE_RADIUS, align 4
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  %130 = call i32 @NewRadiusAuthData(i32* null)
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %130, i32* %131, align 4
  br label %151

132:                                              ; preds = %92
  %133 = load i32, i32* @SHA1_SIZE, align 4
  %134 = zext i32 %133 to i64
  %135 = call i8* @llvm.stacksave()
  store i8* %135, i8** %15, align 8
  %136 = alloca i32, i64 %134, align 16
  store i64 %134, i64* %16, align 8
  %137 = load i32, i32* @MD5_SIZE, align 4
  %138 = zext i32 %137 to i64
  %139 = alloca i32, i64 %138, align 16
  store i64 %138, i64* %17, align 8
  %140 = mul nuw i64 4, %134
  %141 = trunc i64 %140 to i32
  %142 = call i32 @Rand(i32* %136, i32 %141)
  %143 = mul nuw i64 4, %138
  %144 = trunc i64 %143 to i32
  %145 = call i32 @Rand(i32* %139, i32 %144)
  %146 = load i32, i32* @AUTHTYPE_PASSWORD, align 4
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i32 %146, i32* %147, align 4
  %148 = call i32 @NewPasswordAuthDataRaw(i32* %136, i32* %139)
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %148, i32* %149, align 4
  %150 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %150)
  br label %151

151:                                              ; preds = %132, %127
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @ScCreateUser(i32 %154, %struct.TYPE_13__* %13)
  store i64 %155, i64* %12, align 8
  %156 = load i64, i64* %12, align 8
  %157 = load i64, i64* @ERR_NO_ERROR, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %151
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %161 = load i64, i64* %12, align 8
  %162 = call i32 @CmdPrintError(%struct.TYPE_16__* %160, i64 %161)
  %163 = load i32*, i32** %10, align 8
  %164 = call i32 @FreeParamValueList(i32* %163)
  %165 = load i64, i64* %12, align 8
  store i64 %165, i64* %5, align 8
  br label %170

166:                                              ; preds = %151
  %167 = call i32 @FreeRpcSetUser(%struct.TYPE_13__* %13)
  %168 = load i32*, i32** %10, align 8
  %169 = call i32 @FreeParamValueList(i32* %168)
  store i64 0, i64* %5, align 8
  br label %170

170:                                              ; preds = %166, %159, %90, %74
  %171 = load i64, i64* %5, align 8
  ret i64 %171
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i32* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i32 @Trim(i32) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i32 @NewRadiusAuthData(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Rand(i32*, i32) #1

declare dso_local i32 @NewPasswordAuthDataRaw(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @ScCreateUser(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @FreeRpcSetUser(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
