; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PtTrafficClient.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PtTrafficClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32*, i32 (%struct.TYPE_15__*, i32*)* }
%struct.TYPE_16__ = type { i8*, i32, i32 }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_16__*, i32*, i32*, i32* }
%struct.TYPE_14__ = type { i32* }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"CMD_TrafficClient_EVAL_NUMTCP\00", align 1
@TRAFFIC_NUMTCP_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"[host:port]\00", align 1
@CmdPrompt = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"CMD_TrafficClient_PROMPT_HOST\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"NUMTCP\00", align 1
@CmdEvalMinMax = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"SPAN\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DOUBLE\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"RAW\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@TRAFFIC_DEFAULT_PORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"CMD_TrafficClient_ERROR_HOSTPORT\00", align 1
@TRAFFIC_NUMTCP_DEFAULT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"download\00", align 1
@TRAFFIC_TYPE_DOWNLOAD = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"upload\00", align 1
@TRAFFIC_TYPE_UPLOAD = common dso_local global i64 0, align 8
@TRAFFIC_TYPE_FULL = common dso_local global i64 0, align 8
@TRAFFIC_SPAN_DEFAULT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [31 x i8] c"CMD_TrafficClient_ERROR_NUMTCP\00", align 1
@PtTrafficPrintProc = common dso_local global i32 0, align 4
@CONSOLE_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PtTrafficClient(%struct.TYPE_15__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_16__, align 8
  %21 = alloca [6 x %struct.TYPE_13__], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %25 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %25, i64* %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %29 = load i32, i32* @TRAFFIC_NUMTCP_MAX, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds [6 x %struct.TYPE_13__], [6 x %struct.TYPE_13__]* %21, i64 0, i64 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %33 = load i32*, i32** @CmdPrompt, align 8
  %34 = bitcast i32* %33 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %32, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %36 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32* %36, i32** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 3
  %38 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %38, i32** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 4
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i64 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 3
  %45 = load i32*, i32** @CmdEvalMinMax, align 8
  store i32* %45, i32** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 4
  %47 = bitcast %struct.TYPE_16__* %20 to i32*
  store i32* %47, i32** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 1
  %49 = bitcast %struct.TYPE_13__* %48 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %49, i8 0, i64 40, i1 false)
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i64 1
  %52 = bitcast %struct.TYPE_13__* %51 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %52, i8 0, i64 40, i1 false)
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i64 1
  %55 = bitcast %struct.TYPE_13__* %54 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %55, i8 0, i64 40, i1 false)
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i64 1
  %58 = bitcast %struct.TYPE_13__* %57 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %58, i8 0, i64 40, i1 false)
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds [6 x %struct.TYPE_13__], [6 x %struct.TYPE_13__]* %21, i64 0, i64 0
  %64 = call i32* @ParseCommandList(%struct.TYPE_15__* %60, i8* %61, i32* %62, %struct.TYPE_13__* %63, i32 6)
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %4
  %68 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %68, i64* %5, align 8
  br label %200

69:                                               ; preds = %4
  %70 = load i32*, i32** %11, align 8
  %71 = call i8* @GetParamStr(i32* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @TRAFFIC_DEFAULT_PORT, align 4
  %73 = call i32 @ParseHostPort(i8* %71, i8** %13, i64* %14, i32 %72)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  %78 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %77, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = call i32* @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %81 = call i32 %78(%struct.TYPE_15__* %79, i32* %80)
  %82 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %82, i64* %12, align 8
  br label %186

83:                                               ; preds = %69
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @Trim(i8* %84)
  %86 = load i32*, i32** %11, align 8
  %87 = call i64 @GetParamInt(i32* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i64 %87, i64* %15, align 8
  %88 = load i64, i64* %15, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i64, i64* @TRAFFIC_NUMTCP_DEFAULT, align 8
  store i64 %91, i64* %15, align 8
  br label %92

92:                                               ; preds = %90, %83
  %93 = load i32*, i32** %11, align 8
  %94 = call i8* @GetParamStr(i32* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %94, i8** %22, align 8
  %95 = load i8*, i8** %22, align 8
  %96 = call i64 @StartWith(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i64, i64* @TRAFFIC_TYPE_DOWNLOAD, align 8
  store i64 %99, i64* %16, align 8
  br label %109

100:                                              ; preds = %92
  %101 = load i8*, i8** %22, align 8
  %102 = call i64 @StartWith(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i64, i64* @TRAFFIC_TYPE_UPLOAD, align 8
  store i64 %105, i64* %16, align 8
  br label %108

106:                                              ; preds = %100
  %107 = load i64, i64* @TRAFFIC_TYPE_FULL, align 8
  store i64 %107, i64* %16, align 8
  br label %108

108:                                              ; preds = %106, %104
  br label %109

109:                                              ; preds = %108, %98
  %110 = load i32*, i32** %11, align 8
  %111 = call i64 @GetParamInt(i32* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i64 %111, i64* %23, align 8
  %112 = load i64, i64* %23, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i64, i64* @TRAFFIC_SPAN_DEFAULT, align 8
  store i64 %115, i64* %23, align 8
  br label %116

116:                                              ; preds = %114, %109
  %117 = load i64, i64* %23, align 8
  %118 = mul i64 %117, 1000
  store i64 %118, i64* %19, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @GetParamYes(i32* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 %120, i32* %17, align 4
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @GetParamYes(i32* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 %122, i32* %18, align 4
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* @TRAFFIC_TYPE_FULL, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %116
  %127 = load i64, i64* %15, align 8
  %128 = srem i64 %127, 2
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %131, i64* %12, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  %134 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %133, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %136 = call i32* @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %137 = call i32 %134(%struct.TYPE_15__* %135, i32* %136)
  br label %138

138:                                              ; preds = %130, %126
  br label %139

139:                                              ; preds = %138, %116
  %140 = load i64, i64* %12, align 8
  %141 = load i64, i64* @ERR_NO_ERROR, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %185

143:                                              ; preds = %139
  %144 = load i8*, i8** %13, align 8
  %145 = load i64, i64* %14, align 8
  %146 = load i64, i64* %15, align 8
  %147 = load i64, i64* %16, align 8
  %148 = load i64, i64* %19, align 8
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* @PtTrafficPrintProc, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %153 = call i32* @NewTtc(i8* %144, i64 %145, i64 %146, i64 %147, i64 %148, i32 %149, i32 %150, i32 %151, %struct.TYPE_15__* %152)
  store i32* %153, i32** %10, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @CONSOLE_LOCAL, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %143
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %173

164:                                              ; preds = %159
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = bitcast i32* %167 to %struct.TYPE_14__*
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %164, %159
  br label %174

174:                                              ; preds = %173, %143
  %175 = call i32 @Zero(i32* %24, i32 4)
  %176 = load i32*, i32** %10, align 8
  %177 = call i64 @FreeTtc(i32* %176, i32* %24)
  store i64 %177, i64* %12, align 8
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* @ERR_NO_ERROR, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %183 = call i32 @TtcPrintResult(%struct.TYPE_15__* %182, i32* %24)
  br label %184

184:                                              ; preds = %181, %174
  br label %185

185:                                              ; preds = %184, %139
  br label %186

186:                                              ; preds = %185, %75
  %187 = load i64, i64* %12, align 8
  %188 = load i64, i64* @ERR_NO_ERROR, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %192 = load i64, i64* %12, align 8
  %193 = call i32 @CmdPrintError(%struct.TYPE_15__* %191, i64 %192)
  br label %194

194:                                              ; preds = %190, %186
  %195 = load i32*, i32** %11, align 8
  %196 = call i32 @FreeParamValueList(i32* %195)
  %197 = load i8*, i8** %13, align 8
  %198 = call i32 @Free(i8* %197)
  %199 = load i64, i64* %12, align 8
  store i64 %199, i64* %5, align 8
  br label %200

200:                                              ; preds = %194, %67
  %201 = load i64, i64* %5, align 8
  ret i64 %201
}

declare dso_local i32* @_UU(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ParseHostPort(i8*, i8**, i64*, i32) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i64 @GetParamInt(i32*, i8*) #1

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local i32 @GetParamYes(i32*, i8*) #1

declare dso_local i32* @NewTtc(i8*, i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i64 @FreeTtc(i32*, i32*) #1

declare dso_local i32 @TtcPrintResult(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
