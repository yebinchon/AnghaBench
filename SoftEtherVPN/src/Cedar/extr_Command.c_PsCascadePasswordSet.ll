; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadePasswordSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadePasswordSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32*)* }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_22__*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i8*, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_CascadeCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"PASSWORD\00", align 1
@CmdPromptChoosePassword = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"CMD_CascadePasswordSet_Prompt_Type\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@CLIENT_AUTHTYPE_PASSWORD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ntdomain\00", align 1
@CLIENT_AUTHTYPE_PLAIN_PASSWORD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"CMD_CascadePasswordSet_Type_Invalid\00", align 1
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadePasswordSet(%struct.TYPE_21__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca [3 x %struct.TYPE_20__], align 16
  %15 = alloca i8*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %11, align 8
  store i64 0, i64* %12, align 8
  %18 = getelementptr inbounds [3 x %struct.TYPE_20__], [3 x %struct.TYPE_20__]* %14, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %21 = load i32, i32* @CmdPrompt, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 2
  %25 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 3
  %27 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %27, i32** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 4
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i64 1
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %32 = load i32, i32* @CmdPromptChoosePassword, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %31, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 4
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i64 1
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %41 = load i32, i32* @CmdPrompt, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %40, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 2
  %45 = call i32* @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32* %45, i32** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 3
  %47 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %47, i32** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 4
  store i32 0, i32* %48, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_21__*, i32*)*, i32 (%struct.TYPE_21__*, i32*)** %55, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %58 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %59 = call i32 %56(%struct.TYPE_21__* %57, i32* %58)
  %60 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %60, i64* %5, align 8
  br label %180

61:                                               ; preds = %4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds [3 x %struct.TYPE_20__], [3 x %struct.TYPE_20__]* %14, i64 0, i64 0
  %66 = call i32* @ParseCommandList(%struct.TYPE_21__* %62, i8* %63, i32* %64, %struct.TYPE_20__* %65, i32 3)
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %70, i64* %5, align 8
  br label %180

71:                                               ; preds = %61
  %72 = call i32 @Zero(%struct.TYPE_18__* %13, i32 24)
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @StrCpy(i32 %74, i32 4, i8* %77)
  %79 = call %struct.TYPE_22__* @ZeroMalloc(i32 4)
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store %struct.TYPE_22__* %79, %struct.TYPE_22__** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @GetParamUniStr(i32* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %87 = call i32 @UniStrCpy(i32 %84, i32 4, i32 %86)
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @ScGetLink(i32 %90, %struct.TYPE_18__* %13)
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* @ERR_NO_ERROR, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %71
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @CmdPrintError(%struct.TYPE_21__* %96, i64 %97)
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @FreeParamValueList(i32* %99)
  %101 = load i64, i64* %12, align 8
  store i64 %101, i64* %5, align 8
  br label %180

102:                                              ; preds = %71
  %103 = load i32*, i32** %10, align 8
  %104 = call i8* @GetParamStr(i32* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %104, i8** %15, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = call i64 @StartWith(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %102
  %109 = load i32, i32* @CLIENT_AUTHTYPE_PASSWORD, align 4
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %10, align 8
  %122 = call i8* @GetParamStr(i32* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %123 = call i32 @HashPassword(i32 %116, i32 %120, i8* %122)
  br label %160

124:                                              ; preds = %102
  %125 = load i8*, i8** %15, align 8
  %126 = call i64 @StartWith(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i8*, i8** %15, align 8
  %130 = call i64 @StartWith(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %128, %124
  %133 = load i32, i32* @CLIENT_AUTHTYPE_PLAIN_PASSWORD, align 4
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = call i8* @GetParamStr(i32* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %143 = call i32 @StrCpy(i32 %140, i32 4, i8* %142)
  br label %159

144:                                              ; preds = %128
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i32 (%struct.TYPE_21__*, i32*)*, i32 (%struct.TYPE_21__*, i32*)** %146, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = call i32* @_UU(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %150 = call i32 %147(%struct.TYPE_21__* %148, i32* %149)
  %151 = call i32 @FreeRpcCreateLink(%struct.TYPE_18__* %13)
  %152 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %152, i64* %12, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %154 = load i64, i64* %12, align 8
  %155 = call i32 @CmdPrintError(%struct.TYPE_21__* %153, i64 %154)
  %156 = load i32*, i32** %10, align 8
  %157 = call i32 @FreeParamValueList(i32* %156)
  %158 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %158, i64* %5, align 8
  br label %180

159:                                              ; preds = %132
  br label %160

160:                                              ; preds = %159, %108
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @ScSetLink(i32 %163, %struct.TYPE_18__* %13)
  store i64 %164, i64* %12, align 8
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* @ERR_NO_ERROR, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %160
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %170 = load i64, i64* %12, align 8
  %171 = call i32 @CmdPrintError(%struct.TYPE_21__* %169, i64 %170)
  %172 = load i32*, i32** %10, align 8
  %173 = call i32 @FreeParamValueList(i32* %172)
  %174 = load i64, i64* %12, align 8
  store i64 %174, i64* %5, align 8
  br label %180

175:                                              ; preds = %160
  %176 = call i32 @FreeRpcCreateLink(%struct.TYPE_18__* %13)
  br label %177

177:                                              ; preds = %175
  %178 = load i32*, i32** %10, align 8
  %179 = call i32 @FreeParamValueList(i32* %178)
  store i64 0, i64* %5, align 8
  br label %180

180:                                              ; preds = %177, %168, %144, %95, %69, %53
  %181 = load i64, i64* %5, align 8
  ret i64 %181
}

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local %struct.TYPE_22__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScGetLink(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local i32 @HashPassword(i32, i32, i8*) #1

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_18__*) #1

declare dso_local i64 @ScSetLink(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
