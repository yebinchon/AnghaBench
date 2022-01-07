; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsNatSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsNatSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_18__ = type { i8*, i32, i32 }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_18__*, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"CMD_NatSet_Eval_MTU\00", align 1
@TCP_HEADER_SIZE = common dso_local global i64 0, align 8
@IP_HEADER_SIZE = common dso_local global i64 0, align 8
@MAC_HEADER_SIZE = common dso_local global i64 0, align 8
@MAX_L3_DATA_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"CMD_NatSet_Eval_TCP\00", align 1
@NAT_TCP_MIN_TIMEOUT = common dso_local global i32 0, align 4
@NAT_TCP_MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"CMD_NatSet_Eval_UDP\00", align 1
@NAT_UDP_MIN_TIMEOUT = common dso_local global i32 0, align 4
@NAT_UDP_MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"MTU\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"CMD_NatSet_Prompt_MTU\00", align 1
@CmdEvalMinMax = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"TCPTIMEOUT\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"CMD_NatSet_Prompt_TCPTIMEOUT\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"UDPTIMEOUT\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"CMD_NatSet_Prompt_UDPTIMEOUT\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"LOG\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"CMD_NatSet_Prompt_LOG\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsNatSet(%struct.TYPE_17__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca %struct.TYPE_18__, align 8
  %16 = alloca %struct.TYPE_18__, align 8
  %17 = alloca [4 x %struct.TYPE_16__], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %22 = load i64, i64* @TCP_HEADER_SIZE, align 8
  %23 = load i64, i64* @IP_HEADER_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @MAC_HEADER_SIZE, align 8
  %26 = add nsw i64 %24, %25
  %27 = add nsw i64 %26, 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %21, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %30 = load i32, i32* @MAX_L3_DATA_SIZE, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %33 = load i32, i32* @NAT_TCP_MIN_TIMEOUT, align 4
  %34 = sdiv i32 %33, 1000
  store i32 %34, i32* %32, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 2
  %36 = load i32, i32* @NAT_TCP_MAX_TIMEOUT, align 4
  %37 = sdiv i32 %36, 1000
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %40 = load i32, i32* @NAT_UDP_MIN_TIMEOUT, align 4
  %41 = sdiv i32 %40, 1000
  store i32 %41, i32* %39, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %43 = load i32, i32* @NAT_UDP_MAX_TIMEOUT, align 4
  %44 = sdiv i32 %43, 1000
  store i32 %44, i32* %42, align 4
  %45 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %17, i64 0, i64 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %46, align 16
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %48 = load i32, i32* @CmdPrompt, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %50, %struct.TYPE_18__** %47, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %52 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 %52, i32* %51, align 16
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 3
  %54 = load i32, i32* @CmdEvalMinMax, align 4
  store i32 %54, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 4
  %56 = ptrtoint %struct.TYPE_18__* %14 to i32
  store i32 %56, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i64 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %58, align 16
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %60 = load i32, i32* @CmdPrompt, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %62, %struct.TYPE_18__** %59, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %64 = call i32 @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i32 %64, i32* %63, align 16
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  %66 = load i32, i32* @CmdEvalMinMax, align 4
  store i32 %66, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 4
  %68 = ptrtoint %struct.TYPE_18__* %15 to i32
  store i32 %68, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i64 1
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %70, align 16
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %72 = load i32, i32* @CmdPrompt, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %74, %struct.TYPE_18__** %71, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %76 = call i32 @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i32 %76, i32* %75, align 16
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 3
  %78 = load i32, i32* @CmdEvalMinMax, align 4
  store i32 %78, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 4
  %80 = ptrtoint %struct.TYPE_18__* %16 to i32
  store i32 %80, i32* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i64 1
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %82, align 16
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %84 = load i32, i32* @CmdPrompt, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %83, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %88 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  store i32 %88, i32* %87, align 16
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 3
  %90 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %90, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 4
  store i32 0, i32* %91, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %98, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %101 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %102 = call i32 %99(%struct.TYPE_17__* %100, i32 %101)
  %103 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %103, i64* %5, align 8
  br label %173

104:                                              ; preds = %4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %17, i64 0, i64 0
  %109 = call i32* @ParseCommandList(%struct.TYPE_17__* %105, i8* %106, i32* %107, %struct.TYPE_16__* %108, i32 4)
  store i32* %109, i32** %10, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %113, i64* %5, align 8
  br label %173

114:                                              ; preds = %104
  %115 = call i32 @Zero(%struct.TYPE_14__* %13, i32 32)
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @StrCpy(i32 %117, i32 4, i32* %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @ScGetSecureNATOption(i32 %124, %struct.TYPE_14__* %13)
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @ERR_NO_ERROR, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %114
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @CmdPrintError(%struct.TYPE_17__* %130, i64 %131)
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @FreeParamValueList(i32* %133)
  %135 = load i64, i64* %12, align 8
  store i64 %135, i64* %5, align 8
  br label %173

136:                                              ; preds = %114
  %137 = load i32*, i32** %10, align 8
  %138 = call i8* @GetParamInt(i32* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 4
  store i8* %138, i8** %139, align 8
  %140 = load i32*, i32** %10, align 8
  %141 = call i8* @GetParamInt(i32* %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  store i8* %141, i8** %142, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = call i8* @GetParamInt(i32* %143, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i8* %144, i8** %145, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = call i32 @GetParamYes(i32* %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store i32 %147, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @StrCpy(i32 %150, i32 4, i32* %153)
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @ScSetSecureNATOption(i32 %157, %struct.TYPE_14__* %13)
  store i64 %158, i64* %12, align 8
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* @ERR_NO_ERROR, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %136
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %164 = load i64, i64* %12, align 8
  %165 = call i32 @CmdPrintError(%struct.TYPE_17__* %163, i64 %164)
  %166 = load i32*, i32** %10, align 8
  %167 = call i32 @FreeParamValueList(i32* %166)
  %168 = load i64, i64* %12, align 8
  store i64 %168, i64* %5, align 8
  br label %173

169:                                              ; preds = %136
  br label %170

170:                                              ; preds = %169
  %171 = load i32*, i32** %10, align 8
  %172 = call i32 @FreeParamValueList(i32* %171)
  store i64 0, i64* %5, align 8
  br label %173

173:                                              ; preds = %170, %162, %129, %112, %96
  %174 = load i64, i64* %5, align 8
  ret i64 %174
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetSecureNATOption(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i8* @GetParamInt(i32*, i8*) #1

declare dso_local i32 @GetParamYes(i32*, i8*) #1

declare dso_local i64 @ScSetSecureNATOption(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
