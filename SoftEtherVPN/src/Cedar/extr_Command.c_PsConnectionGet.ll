; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsConnectionGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsConnectionGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32*, i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_ConnectionGet_PROMPT_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"SM_CONNINFO_NAME\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SM_CONNINFO_TYPE\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"SM_CONNINFO_HOSTNAME\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"SM_CONNINFO_PORT\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"SM_CONNINFO_TIME\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"SM_CONNINFO_SERVER_STR\00", align 1
@.str.8 = private unnamed_addr constant [8 x i32] [i32 37, i32 117, i32 46, i32 37, i32 48, i32 50, i32 117, i32 0], align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"SM_CONNINFO_SERVER_VER\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"SM_CONNINFO_SERVER_BUILD\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"SM_CONNINFO_CLIENT_STR\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"SM_CONNINFO_CLIENT_VER\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"SM_CONNINFO_CLIENT_BUILD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsConnectionGet(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [1 x %struct.TYPE_9__], align 16
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %11, align 8
  store i64 0, i64* %12, align 8
  %21 = load i32, i32* @MAX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %15, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  %25 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %17, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %26, align 16
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %28 = load i32, i32* @CmdPrompt, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %27, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %32 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %31, align 16
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %34 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  store i32 0, i32* %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %17, i64 0, i64 0
  %40 = call i32* @ParseCommandList(i32* %36, i8* %37, i32* %38, %struct.TYPE_9__* %39, i32 1)
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %4
  %44 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %44, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %169

45:                                               ; preds = %4
  %46 = call i32 @Zero(%struct.TYPE_7__* %13, i32 44)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 10
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @GetParamStr(i32* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @StrCpy(i32 %48, i32 4, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ScGetConnectionInfo(i32 %54, %struct.TYPE_7__* %13)
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* @ERR_NO_ERROR, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %45
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @CmdPrintError(i32* %60, i64 %61)
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @FreeParamValueList(i32* %63)
  %65 = load i64, i64* %12, align 8
  store i64 %65, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %169

66:                                               ; preds = %45
  %67 = call i32* (...) @CtNewStandard()
  store i32* %67, i32** %14, align 8
  %68 = mul nuw i64 4, %22
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 10
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @StrToUni(i32* %24, i32 %69, i32 %71)
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 @CtInsert(i32* %73, i32 %74, i32* %24)
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = call i32* @GetConnectionTypeStr(i32 %79)
  %81 = call i32 @CtInsert(i32* %76, i32 %77, i32* %80)
  %82 = mul nuw i64 4, %22
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @StrToUni(i32* %24, i32 %83, i32 %85)
  %87 = load i32*, i32** %14, align 8
  %88 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %89 = call i32 @CtInsert(i32* %87, i32 %88, i32* %24)
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @UniToStru(i32* %24, i32 %91)
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %95 = call i32 @CtInsert(i32* %93, i32 %94, i32* %24)
  %96 = mul nuw i64 4, %22
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @SystemToLocal64(i32 %99)
  %101 = call i32 @GetDateTimeStrEx64(i32* %24, i32 %97, i32 %100, i32* null)
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %104 = call i32 @CtInsert(i32* %102, i32 %103, i32* %24)
  %105 = mul nuw i64 4, %22
  %106 = trunc i64 %105 to i32
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @StrToUni(i32* %24, i32 %106, i32 %108)
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %112 = call i32 @CtInsert(i32* %110, i32 %111, i32* %24)
  %113 = mul nuw i64 4, %22
  %114 = trunc i64 %113 to i32
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %116, 100
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = srem i32 %119, 100
  %121 = call i32 @UniFormat(i32* %24, i32 %114, i8* bitcast ([8 x i32]* @.str.8 to i8*), i32 %117, i32 %120)
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %124 = call i32 @CtInsert(i32* %122, i32 %123, i32* %24)
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @UniToStru(i32* %24, i32 %126)
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %130 = call i32 @CtInsert(i32* %128, i32 %129, i32* %24)
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @StrLen(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %162

135:                                              ; preds = %66
  %136 = mul nuw i64 4, %22
  %137 = trunc i64 %136 to i32
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @StrToUni(i32* %24, i32 %137, i32 %139)
  %141 = load i32*, i32** %14, align 8
  %142 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %143 = call i32 @CtInsert(i32* %141, i32 %142, i32* %24)
  %144 = mul nuw i64 4, %22
  %145 = trunc i64 %144 to i32
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sdiv i32 %147, 100
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = srem i32 %150, 100
  %152 = call i32 @UniFormat(i32* %24, i32 %145, i8* bitcast ([8 x i32]* @.str.8 to i8*), i32 %148, i32 %151)
  %153 = load i32*, i32** %14, align 8
  %154 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %155 = call i32 @CtInsert(i32* %153, i32 %154, i32* %24)
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @UniToStru(i32* %24, i32 %157)
  %159 = load i32*, i32** %14, align 8
  %160 = call i32 @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %161 = call i32 @CtInsert(i32* %159, i32 %160, i32* %24)
  br label %162

162:                                              ; preds = %135, %66
  %163 = load i32*, i32** %14, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @CtFree(i32* %163, i32* %164)
  br label %166

166:                                              ; preds = %162
  %167 = load i32*, i32** %10, align 8
  %168 = call i32 @FreeParamValueList(i32* %167)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %169

169:                                              ; preds = %166, %59, %43
  %170 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i64, i64* %5, align 8
  ret i64 %171
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32) #2

declare dso_local i32 @GetParamStr(i32*, i8*) #2

declare dso_local i64 @ScGetConnectionInfo(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i32* @CtNewStandard(...) #2

declare dso_local i32 @StrToUni(i32*, i32, i32) #2

declare dso_local i32 @CtInsert(i32*, i32, i32*) #2

declare dso_local i32* @GetConnectionTypeStr(i32) #2

declare dso_local i32 @UniToStru(i32*, i32) #2

declare dso_local i32 @GetDateTimeStrEx64(i32*, i32, i32, i32*) #2

declare dso_local i32 @SystemToLocal64(i32) #2

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32, i32) #2

declare dso_local i64 @StrLen(i32) #2

declare dso_local i32 @CtFree(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
