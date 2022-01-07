; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountProxySocks5.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountProxySocks5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_14__ = type { i8*, i32*, i32*, i32*, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"CMD_AccountProxyHttp_Prompt_Server\00", align 1
@CmdEvalHostAndPort = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"USERNAME\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"PASSWORD\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@PROXY_SOCKS5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountProxySocks5(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca [4 x %struct.TYPE_14__], align 16
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %11, align 8
  %20 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %20, i64* %12, align 8
  %21 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %14, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %24 = load i32, i32* @CmdPrompt, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %23, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %28 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  %30 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %30, i32** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 4
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i64 1
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %35 = load i32, i32* @CmdPrompt, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %34, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %39 = call i32* @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32* %39, i32** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 3
  %41 = load i32*, i32** @CmdEvalHostAndPort, align 8
  store i32* %41, i32** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 4
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i64 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %46 = load i32, i32* @CmdPrompt, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %45, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 4
  store i32 0, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i64 1
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %55 = load i32, i32* @CmdPrompt, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %54, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 4
  store i32 0, i32* %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %14, i64 0, i64 0
  %65 = call i32* @ParseCommandList(i32* %61, i8* %62, i32* %63, %struct.TYPE_14__* %64, i32 4)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %4
  %69 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %69, i64* %5, align 8
  br label %157

70:                                               ; preds = %4
  %71 = call i32 @Zero(%struct.TYPE_12__* %13, i32 32)
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @GetParamUniStr(i32* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %76 = call i32 @UniStrCpy(i32 %73, i32 4, i32 %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @CcGetAccount(i32 %79, %struct.TYPE_12__* %13)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @ERR_NO_ERROR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %144

84:                                               ; preds = %70
  %85 = load i32*, i32** %10, align 8
  %86 = call i8* @GetParamStr(i32* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i64 @ParseHostPort(i8* %86, i8** %16, i64* %17, i32 1080)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %84
  %90 = load i32, i32* @PROXY_SOCKS5, align 4
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 4
  store i32 %90, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** %16, align 8
  %99 = call i32 @StrCpy(i32 %97, i32 4, i8* %98)
  %100 = load i64, i64* %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  store i64 %100, i64* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = call i8* @GetParamStr(i32* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %110 = call i32 @StrCpy(i32 %107, i32 4, i8* %109)
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = call i8* @GetParamStr(i32* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %117 = call i32 @StrCpy(i32 %114, i32 4, i8* %116)
  %118 = load i8*, i8** %16, align 8
  %119 = call i32 @Free(i8* %118)
  br label %120

120:                                              ; preds = %89, %84
  %121 = call i32 @Zero(%struct.TYPE_12__* %15, i32 32)
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 5
  store i32 %123, i32* %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  store i32 %126, i32* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  store i32 %129, i32* %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  store i32 %135, i32* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i32 %138, i32* %139, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @CcSetAccount(i32 %142, %struct.TYPE_12__* %15)
  store i64 %143, i64* %12, align 8
  br label %144

144:                                              ; preds = %120, %70
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* @ERR_NO_ERROR, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i32*, i32** %6, align 8
  %150 = load i64, i64* %12, align 8
  %151 = call i32 @CmdPrintError(i32* %149, i64 %150)
  br label %152

152:                                              ; preds = %148, %144
  %153 = call i32 @CiFreeClientGetAccount(%struct.TYPE_12__* %13)
  %154 = load i32*, i32** %10, align 8
  %155 = call i32 @FreeParamValueList(i32* %154)
  %156 = load i64, i64* %12, align 8
  store i64 %156, i64* %5, align 8
  br label %157

157:                                              ; preds = %152, %68
  %158 = load i64, i64* %5, align 8
  ret i64 %158
}

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @CcGetAccount(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @ParseHostPort(i8*, i8**, i64*, i32) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Free(i8*) #1

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
