; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeProxySocks5.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeProxySocks5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32*)* }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i8*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_CascadeCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"CMD_CascadeProxyHttp_Prompt_Server\00", align 1
@CmdEvalHostAndPort = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"USERNAME\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"PASSWORD\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@PROXY_SOCKS5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadeProxySocks5(%struct.TYPE_18__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca [4 x %struct.TYPE_17__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = getelementptr inbounds [4 x %struct.TYPE_17__], [4 x %struct.TYPE_17__]* %14, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %22 = load i32*, i32** @CmdPrompt, align 8
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %24 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  %26 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %26, i32** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i64 1
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %31 = load i32*, i32** @CmdPrompt, align 8
  store i32* %31, i32** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 2
  %33 = call i32* @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32* %33, i32** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 3
  %35 = load i32*, i32** @CmdEvalHostAndPort, align 8
  store i32* %35, i32** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i64 1
  %38 = bitcast %struct.TYPE_17__* %37 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 40, i1 false)
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i64 1
  %41 = bitcast %struct.TYPE_17__* %40 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 40, i1 false)
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %42, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_18__*, i32*)*, i32 (%struct.TYPE_18__*, i32*)** %49, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %53 = call i32 %50(%struct.TYPE_18__* %51, i32* %52)
  %54 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %54, i64* %5, align 8
  br label %152

55:                                               ; preds = %4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds [4 x %struct.TYPE_17__], [4 x %struct.TYPE_17__]* %14, i64 0, i64 0
  %60 = call i32* @ParseCommandList(%struct.TYPE_18__* %56, i8* %57, i32* %58, %struct.TYPE_17__* %59, i32 4)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %64, i64* %5, align 8
  br label %152

65:                                               ; preds = %55
  %66 = call i32 @Zero(%struct.TYPE_15__* %13, i32 16)
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @StrCpy(i32 %68, i32 4, i8* %71)
  %73 = call %struct.TYPE_19__* @ZeroMalloc(i32 4)
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store %struct.TYPE_19__* %73, %struct.TYPE_19__** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @GetParamUniStr(i32* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %81 = call i32 @UniStrCpy(i32 %78, i32 4, i32 %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @ScGetLink(i32 %84, %struct.TYPE_15__* %13)
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @ERR_NO_ERROR, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %65
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @CmdPrintError(%struct.TYPE_18__* %90, i64 %91)
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @FreeParamValueList(i32* %93)
  %95 = load i64, i64* %12, align 8
  store i64 %95, i64* %5, align 8
  br label %152

96:                                               ; preds = %65
  %97 = load i32*, i32** %10, align 8
  %98 = call i8* @GetParamStr(i32* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %99 = call i64 @ParseHostPort(i8* %98, i8** %15, i64* %16, i32 1080)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %132

101:                                              ; preds = %96
  %102 = load i32, i32* @PROXY_SOCKS5, align 4
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 4
  store i32 %102, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = call i32 @StrCpy(i32 %109, i32 4, i8* %110)
  %112 = load i64, i64* %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 2
  store i64 %112, i64* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = call i8* @GetParamStr(i32* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %122 = call i32 @StrCpy(i32 %119, i32 4, i8* %121)
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = call i8* @GetParamStr(i32* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %129 = call i32 @StrCpy(i32 %126, i32 4, i8* %128)
  %130 = load i8*, i8** %15, align 8
  %131 = call i32 @Free(i8* %130)
  br label %132

132:                                              ; preds = %101, %96
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @ScSetLink(i32 %135, %struct.TYPE_15__* %13)
  store i64 %136, i64* %12, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* @ERR_NO_ERROR, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %132
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %142 = load i64, i64* %12, align 8
  %143 = call i32 @CmdPrintError(%struct.TYPE_18__* %141, i64 %142)
  %144 = load i32*, i32** %10, align 8
  %145 = call i32 @FreeParamValueList(i32* %144)
  %146 = load i64, i64* %12, align 8
  store i64 %146, i64* %5, align 8
  br label %152

147:                                              ; preds = %132
  %148 = call i32 @FreeRpcCreateLink(%struct.TYPE_15__* %13)
  br label %149

149:                                              ; preds = %147
  %150 = load i32*, i32** %10, align 8
  %151 = call i32 @FreeParamValueList(i32* %150)
  store i64 0, i64* %5, align 8
  br label %152

152:                                              ; preds = %149, %140, %89, %63, %47
  %153 = load i64, i64* %5, align 8
  ret i64 %153
}

declare dso_local i32* @_UU(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local %struct.TYPE_19__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScGetLink(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i64 @ParseHostPort(i8*, i8**, i64*, i32) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i64 @ScSetLink(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
