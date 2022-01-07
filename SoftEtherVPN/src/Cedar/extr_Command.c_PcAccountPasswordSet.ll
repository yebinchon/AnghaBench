; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountPasswordSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountPasswordSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, i32*)* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_16__*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i8*, i32*, i32*, i32*, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"PASSWORD\00", align 1
@CmdPromptChoosePassword = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"CMD_CascadePasswordSet_Prompt_Type\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@CLIENT_AUTHTYPE_PASSWORD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ntdomain\00", align 1
@CLIENT_AUTHTYPE_PLAIN_PASSWORD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"CMD_CascadePasswordSet_Type_Invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountPasswordSet(%struct.TYPE_20__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca [3 x %struct.TYPE_19__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %11, align 8
  %19 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %19, i64* %12, align 8
  %20 = getelementptr inbounds [3 x %struct.TYPE_19__], [3 x %struct.TYPE_19__]* %14, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %23 = load i32, i32* @CmdPrompt, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  %27 = call i32* @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 3
  %29 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %29, i32** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i64 1
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %34 = load i32, i32* @CmdPromptChoosePassword, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %33, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 4
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i64 1
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %43 = load i32, i32* @CmdPrompt, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %42, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 2
  %47 = call i32* @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32* %47, i32** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 3
  %49 = load i32*, i32** @CmdEvalNotEmpty, align 8
  store i32* %49, i32** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 4
  store i32 0, i32* %50, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds [3 x %struct.TYPE_19__], [3 x %struct.TYPE_19__]* %14, i64 0, i64 0
  %55 = call i32* @ParseCommandList(%struct.TYPE_20__* %51, i8* %52, i32* %53, %struct.TYPE_19__* %54, i32 3)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %4
  %59 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %59, i64* %5, align 8
  br label %167

60:                                               ; preds = %4
  %61 = call i32 @Zero(%struct.TYPE_17__* %13, i32 40)
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @GetParamUniStr(i32* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @UniStrCpy(i32 %63, i32 4, i32 %65)
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @CcGetAccount(i32 %69, %struct.TYPE_17__* %13)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @ERR_NO_ERROR, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %154

74:                                               ; preds = %60
  %75 = load i32*, i32** %10, align 8
  %76 = call i8* @GetParamStr(i32* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %76, i8** %15, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = call i64 @StartWith(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load i32, i32* @CLIENT_AUTHTYPE_PASSWORD, align 4
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = call i8* @GetParamStr(i32* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %95 = call i32 @HashPassword(i32 %88, i32 %92, i8* %94)
  br label %125

96:                                               ; preds = %74
  %97 = load i8*, i8** %15, align 8
  %98 = call i64 @StartWith(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i8*, i8** %15, align 8
  %102 = call i64 @StartWith(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %100, %96
  %105 = load i32, i32* @CLIENT_AUTHTYPE_PLAIN_PASSWORD, align 4
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = call i8* @GetParamStr(i32* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %115 = call i32 @StrCpy(i32 %112, i32 4, i8* %114)
  br label %124

116:                                              ; preds = %100
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i32 (%struct.TYPE_20__*, i32*)*, i32 (%struct.TYPE_20__*, i32*)** %118, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %121 = call i32* @_UU(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %122 = call i32 %119(%struct.TYPE_20__* %120, i32* %121)
  %123 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %123, i64* %12, align 8
  br label %124

124:                                              ; preds = %116, %104
  br label %125

125:                                              ; preds = %124, %80
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @ERR_NO_ERROR, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %125
  %130 = call i32 @Zero(%struct.TYPE_17__* %16, i32 40)
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 5
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 4
  store i32 %135, i32* %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 3
  store %struct.TYPE_16__* %138, %struct.TYPE_16__** %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  store i32 %141, i32* %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  store i32 %147, i32* %148, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @CcSetAccount(i32 %151, %struct.TYPE_17__* %16)
  store i64 %152, i64* %12, align 8
  br label %153

153:                                              ; preds = %129, %125
  br label %154

154:                                              ; preds = %153, %60
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* @ERR_NO_ERROR, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @CmdPrintError(%struct.TYPE_20__* %159, i64 %160)
  br label %162

162:                                              ; preds = %158, %154
  %163 = call i32 @CiFreeClientGetAccount(%struct.TYPE_17__* %13)
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @FreeParamValueList(i32* %164)
  %166 = load i64, i64* %12, align 8
  store i64 %166, i64* %5, align 8
  br label %167

167:                                              ; preds = %162, %58
  %168 = load i64, i64* %5, align 8
  ret i64 %168
}

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_20__*, i8*, i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @CcGetAccount(i32, %struct.TYPE_17__*) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local i32 @HashPassword(i32, i32, i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i64 @CcSetAccount(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @CiFreeClientGetAccount(%struct.TYPE_17__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
