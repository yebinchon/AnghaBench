; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountHttpHeaderAdd.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcAccountHttpHeaderAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_18__ = type { i8*, i32*, i32*, i32, i32 }
%struct.TYPE_15__ = type { i64, i32* }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_AccountCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"CMD_AccountHttpHeader_Prompt_Name\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"CMD_AccountHttpHeader_Prompt_Data\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@HTTP_CUSTOM_HEADER_MAX_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"%s: %s\0D\0A\00", align 1
@ERR_TOO_MANT_ITEMS = common dso_local global i64 0, align 8
@ERR_OBJECT_EXISTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcAccountHttpHeaderAdd(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca [3 x %struct.TYPE_18__], align 16
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_16__, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %11, align 8
  %24 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %24, i64* %12, align 8
  %25 = getelementptr inbounds [3 x %struct.TYPE_18__], [3 x %struct.TYPE_18__]* %14, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %26, align 16
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %28 = load i32, i32* @CmdPrompt, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %27, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  %32 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %31, align 16
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 3
  %36 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %37 = ptrtoint i32* %36 to i32
  store i32 %37, i32* %35, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 4
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i64 1
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %40, align 16
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %42 = load i32, i32* @CmdPrompt, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %41, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %46 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %45, align 16
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 3
  %50 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %51 = ptrtoint i32* %50 to i32
  store i32 %51, i32* %49, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 4
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i64 1
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %54, align 16
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %56 = load i32, i32* @CmdPrompt, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %55, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %60 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %59, align 16
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  store i32 0, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 4
  store i32 0, i32* %64, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds [3 x %struct.TYPE_18__], [3 x %struct.TYPE_18__]* %14, i64 0, i64 0
  %69 = call i32* @ParseCommandList(i32* %65, i8* %66, i32* %67, %struct.TYPE_18__* %68, i32 3)
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %4
  %73 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %73, i64* %5, align 8
  br label %196

74:                                               ; preds = %4
  %75 = call i32 @Zero(%struct.TYPE_16__* %13, i32 32)
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @GetParamUniStr(i32* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %80 = call i32 @UniStrCpy(i32 %77, i32 4, i32 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @CcGetAccount(i32 %83, %struct.TYPE_16__* %13)
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* @ERR_NO_ERROR, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %183

88:                                               ; preds = %74
  store i64 0, i64* %15, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %16, align 8
  store i32* null, i32** %17, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = call i8* @GetParamStr(i32* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %90, i8** %18, align 8
  %91 = load i8*, i8** %18, align 8
  %92 = call i32 @Trim(i8* %91)
  %93 = call i32* @NewHttpHeader(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  store i32* %93, i32** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call %struct.TYPE_15__* @ParseToken(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %16, align 8
  store i64 0, i64* %15, align 8
  br label %99

99:                                               ; preds = %114, %88
  %100 = load i64, i64* %15, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %100, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %99
  %106 = load i32*, i32** %17, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @AddHttpValueStr(i32* %106, i32 %112)
  br label %114

114:                                              ; preds = %105
  %115 = load i64, i64* %15, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %15, align 8
  br label %99

117:                                              ; preds = %99
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %119 = call i32 @FreeToken(%struct.TYPE_15__* %118)
  %120 = load i32*, i32** %17, align 8
  %121 = load i8*, i8** %18, align 8
  %122 = call i32* @GetHttpValue(i32* %120, i8* %121)
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %178

124:                                              ; preds = %117
  %125 = load i32, i32* @HTTP_CUSTOM_HEADER_MAX_SIZE, align 4
  %126 = zext i32 %125 to i64
  %127 = call i8* @llvm.stacksave()
  store i8* %127, i8** %20, align 8
  %128 = alloca i8, i64 %126, align 16
  store i64 %126, i64* %21, align 8
  %129 = trunc i64 %126 to i32
  %130 = load i8*, i8** %18, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i8* @GetParamStr(i32* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %133 = call i32 @Format(i8* %128, i32 %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %130, i8* %132)
  %134 = call i32 @EnSafeHttpHeaderValueStr(i8* %128, i8 signext 32)
  %135 = call i32 @StrLen(i8* %128)
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @StrLen(i8* %139)
  %141 = add nsw i32 %135, %140
  %142 = sext i32 %141 to i64
  %143 = icmp ult i64 %142, 8
  br i1 %143, label %144, label %174

144:                                              ; preds = %124
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = trunc i64 %126 to i32
  %150 = call i32 @StrCat(i8* %148, i32 %149, i8* %128)
  %151 = call i32 @Zero(%struct.TYPE_16__* %19, i32 32)
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 5
  store i32 %153, i32* %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 4
  store i32 %156, i32* %157, align 4
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  store i32 %159, i32* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  store %struct.TYPE_14__* %162, %struct.TYPE_14__** %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  store i32 %165, i32* %166, align 4
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store i32 %168, i32* %169, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @CcSetAccount(i32 %172, %struct.TYPE_16__* %19)
  store i64 %173, i64* %12, align 8
  br label %176

174:                                              ; preds = %124
  %175 = load i64, i64* @ERR_TOO_MANT_ITEMS, align 8
  store i64 %175, i64* %12, align 8
  br label %176

176:                                              ; preds = %174, %144
  %177 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %177)
  br label %180

178:                                              ; preds = %117
  %179 = load i64, i64* @ERR_OBJECT_EXISTS, align 8
  store i64 %179, i64* %12, align 8
  br label %180

180:                                              ; preds = %178, %176
  %181 = load i32*, i32** %17, align 8
  %182 = call i32 @FreeHttpHeader(i32* %181)
  br label %183

183:                                              ; preds = %180, %74
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* @ERR_NO_ERROR, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load i32*, i32** %6, align 8
  %189 = load i64, i64* %12, align 8
  %190 = call i32 @CmdPrintError(i32* %188, i64 %189)
  br label %191

191:                                              ; preds = %187, %183
  %192 = call i32 @CiFreeClientGetAccount(%struct.TYPE_16__* %13)
  %193 = load i32*, i32** %10, align 8
  %194 = call i32 @FreeParamValueList(i32* %193)
  %195 = load i64, i64* %12, align 8
  store i64 %195, i64* %5, align 8
  br label %196

196:                                              ; preds = %191, %72
  %197 = load i64, i64* %5, align 8
  ret i64 %197
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @CcGetAccount(i32, %struct.TYPE_16__*) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i32* @NewHttpHeader(i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_15__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @AddHttpValueStr(i32*, i32) #1

declare dso_local i32 @FreeToken(%struct.TYPE_15__*) #1

declare dso_local i32* @GetHttpValue(i32*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @EnSafeHttpHeaderValueStr(i8*, i8 signext) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @StrCat(i8*, i32, i8*) #1

declare dso_local i64 @CcSetAccount(i32, %struct.TYPE_16__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeHttpHeader(i32*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @CiFreeClientGetAccount(%struct.TYPE_16__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
