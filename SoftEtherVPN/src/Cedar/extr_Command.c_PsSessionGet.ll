; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSessionGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSessionGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CMD_SessionGet_Prompt_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"SM_CLIENT_IP\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"SM_CLIENT_HOSTNAME\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"SM_SESS_STATUS_USERNAME\00", align 1
@LINK_USER_NAME_PRINT = common dso_local global i32 0, align 4
@SNAT_USER_NAME_PRINT = common dso_local global i32 0, align 4
@BRIDGE_USER_NAME_PRINT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"SM_SESS_STATUS_REALUSER\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"SM_SESS_STATUS_GROUPNAME\00", align 1
@L3_USERNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsSessionGet(%struct.TYPE_17__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca [1 x %struct.TYPE_16__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %21 = getelementptr inbounds [1 x %struct.TYPE_16__], [1 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %22, align 16
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %24 = load i32, i32* @CmdPrompt, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %23, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %28 = call i32 @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %27, align 16
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %30 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 4
  store i32 0, i32* %31, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %38, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 %39(%struct.TYPE_17__* %40, i32 %41)
  %43 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %43, i64* %5, align 8
  br label %209

44:                                               ; preds = %4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds [1 x %struct.TYPE_16__], [1 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %49 = call i32* @ParseCommandList(%struct.TYPE_17__* %45, i8* %46, i32* %47, %struct.TYPE_16__* %48, i32 1)
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %53, i64* %5, align 8
  br label %209

54:                                               ; preds = %44
  %55 = call i32 @Zero(%struct.TYPE_14__* %13, i32 56)
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @StrCpy(i32 %57, i32 4, i32* %60)
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32* @GetParamStr(i32* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @StrCpy(i32 %63, i32 4, i32* %65)
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @ScGetSessionStatus(i32 %69, %struct.TYPE_14__* %13)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @ERR_NO_ERROR, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %54
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @CmdPrintError(%struct.TYPE_17__* %75, i64 %76)
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @FreeParamValueList(i32* %78)
  %80 = load i64, i64* %12, align 8
  store i64 %80, i64* %5, align 8
  br label %209

81:                                               ; preds = %54
  %82 = load i32, i32* @MAX_SIZE, align 4
  %83 = zext i32 %82 to i64
  %84 = call i8* @llvm.stacksave()
  store i8* %84, i8** %15, align 8
  %85 = alloca i32, i64 %83, align 16
  store i64 %83, i64* %16, align 8
  %86 = load i32, i32* @MAX_SIZE, align 4
  %87 = zext i32 %86 to i64
  %88 = alloca i8, i64 %87, align 16
  store i64 %87, i64* %17, align 8
  %89 = call i32* (...) @CtNewStandard()
  store i32* %89, i32** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %81
  %94 = trunc i64 %87 to i32
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @IPToStr4or6(i8* %88, i32 %94, i32 %96, i32 %98)
  %100 = mul nuw i64 4, %83
  %101 = trunc i64 %100 to i32
  %102 = call i32 @StrToUni(i32* %85, i32 %101, i8* %88)
  %103 = load i32*, i32** %18, align 8
  %104 = call i32 @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %105 = call i32 @CtInsert(i32* %103, i32 %104, i32* %85)
  br label %106

106:                                              ; preds = %93, %81
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @StrLen(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = mul nuw i64 4, %83
  %113 = trunc i64 %112 to i32
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @StrToUni(i32* %85, i32 %113, i8* %115)
  %117 = load i32*, i32** %18, align 8
  %118 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %119 = call i32 @CtInsert(i32* %117, i32 %118, i32* %85)
  br label %120

120:                                              ; preds = %111, %106
  %121 = mul nuw i64 4, %83
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @StrToUni(i32* %85, i32 %122, i8* %124)
  %126 = load i32*, i32** %18, align 8
  %127 = call i32 @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %128 = call i32 @CtInsert(i32* %126, i32 %127, i32* %85)
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* @LINK_USER_NAME_PRINT, align 4
  %132 = call i64 @StrCmpi(i8* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %120
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* @SNAT_USER_NAME_PRINT, align 4
  %138 = call i64 @StrCmpi(i8* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* @BRIDGE_USER_NAME_PRINT, align 4
  %144 = call i64 @StrCmpi(i8* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %140
  %147 = mul nuw i64 4, %83
  %148 = trunc i64 %147 to i32
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @StrToUni(i32* %85, i32 %148, i8* %150)
  %152 = load i32*, i32** %18, align 8
  %153 = call i32 @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %154 = call i32 @CtInsert(i32* %152, i32 %153, i32* %85)
  br label %155

155:                                              ; preds = %146, %140, %134, %120
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @IsEmptyStr(i8* %157)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = mul nuw i64 4, %83
  %162 = trunc i64 %161 to i32
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @StrToUni(i32* %85, i32 %162, i8* %164)
  %166 = load i32*, i32** %18, align 8
  %167 = call i32 @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %168 = call i32 @CtInsert(i32* %166, i32 %167, i32* %85)
  br label %169

169:                                              ; preds = %160, %155
  %170 = load i32*, i32** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 5
  %172 = call i32 @CmdPrintStatusToListViewEx(i32* %170, i32* %171, i32 1)
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* @LINK_USER_NAME_PRINT, align 4
  %176 = call i64 @StrCmpi(i8* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %200

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* @SNAT_USER_NAME_PRINT, align 4
  %182 = call i64 @StrCmpi(i8* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* @BRIDGE_USER_NAME_PRINT, align 4
  %188 = call i64 @StrCmpi(i8* %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = load i32, i32* @L3_USERNAME, align 4
  %194 = call i32 @StartWith(i8* %192, i32 %193)
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load i32*, i32** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 4
  %199 = call i32 @CmdPrintNodeInfo(i32* %197, i32* %198)
  br label %200

200:                                              ; preds = %196, %190, %184, %178, %169
  %201 = load i32*, i32** %18, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %203 = call i32 @CtFree(i32* %201, %struct.TYPE_17__* %202)
  %204 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %204)
  br label %205

205:                                              ; preds = %200
  %206 = call i32 @FreeRpcSessionStatus(%struct.TYPE_14__* %13)
  %207 = load i32*, i32** %10, align 8
  %208 = call i32 @FreeParamValueList(i32* %207)
  store i64 0, i64* %5, align 8
  br label %209

209:                                              ; preds = %205, %74, %52, %36
  %210 = load i64, i64* %5, align 8
  ret i64 %210
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i32* @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScGetSessionStatus(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @IPToStr4or6(i8*, i32, i32, i32) #1

declare dso_local i32 @StrToUni(i32*, i32, i8*) #1

declare dso_local i32 @CtInsert(i32*, i32, i32*) #1

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i64 @StrCmpi(i8*, i32) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @CmdPrintStatusToListViewEx(i32*, i32*, i32) #1

declare dso_local i32 @StartWith(i8*, i32) #1

declare dso_local i32 @CmdPrintNodeInfo(i32*, i32*) #1

declare dso_local i32 @CtFree(i32*, %struct.TYPE_17__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeRpcSessionStatus(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
