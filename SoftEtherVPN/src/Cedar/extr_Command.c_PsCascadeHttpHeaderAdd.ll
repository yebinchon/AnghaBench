; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeHttpHeaderAdd.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeHttpHeaderAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*, i32)* }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i8*, i32*, i32*, i32, i32 }
%struct.TYPE_18__ = type { i64, i32* }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_CascadeCreate_Prompt_Name\00", align 1
@CmdEvalNotEmpty = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"CMD_CascadeHttpHeader_Prompt_Name\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"CMD_CascadeHttpHeader_Prompt_Data\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@HTTP_CUSTOM_HEADER_MAX_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"%s: %s\0D\0A\00", align 1
@ERR_TOO_MANT_ITEMS = common dso_local global i64 0, align 8
@ERR_OBJECT_EXISTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadeHttpHeaderAdd(%struct.TYPE_22__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca [3 x %struct.TYPE_21__], align 16
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %11, align 8
  %23 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %23, i64* %12, align 8
  %24 = getelementptr inbounds [3 x %struct.TYPE_21__], [3 x %struct.TYPE_21__]* %14, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %25, align 16
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %27 = load i32, i32* @CmdPrompt, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %26, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 2
  %31 = call i32 @_UU(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %30, align 16
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 3
  %35 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %36 = ptrtoint i32* %35 to i32
  store i32 %36, i32* %34, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 4
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i64 1
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %39, align 16
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %41 = load i32, i32* @CmdPrompt, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %40, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 2
  %45 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %44, align 16
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 3
  %49 = load i32*, i32** @CmdEvalNotEmpty, align 8
  %50 = ptrtoint i32* %49 to i32
  store i32 %50, i32* %48, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 4
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i64 1
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %53, align 16
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %55 = load i32, i32* @CmdPrompt, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %54, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 2
  %59 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %58, align 16
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 3
  store i32 0, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 4
  store i32 0, i32* %63, align 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %70, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %73 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %74 = call i32 %71(%struct.TYPE_22__* %72, i32 %73)
  %75 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %75, i64* %5, align 8
  br label %199

76:                                               ; preds = %4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds [3 x %struct.TYPE_21__], [3 x %struct.TYPE_21__]* %14, i64 0, i64 0
  %81 = call i32* @ParseCommandList(%struct.TYPE_22__* %77, i8* %78, i32* %79, %struct.TYPE_21__* %80, i32 3)
  store i32* %81, i32** %10, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %85, i64* %5, align 8
  br label %199

86:                                               ; preds = %76
  %87 = call i32 @Zero(%struct.TYPE_19__* %13, i32 16)
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @StrCpy(i32 %89, i32 4, i32* %92)
  %94 = call %struct.TYPE_23__* @ZeroMalloc(i32 4)
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  store %struct.TYPE_23__* %94, %struct.TYPE_23__** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @GetParamUniStr(i32* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %102 = call i32 @UniStrCpy(i32 %99, i32 4, i32 %101)
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @ScGetLink(i32 %105, %struct.TYPE_19__* %13)
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* @ERR_NO_ERROR, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %186

110:                                              ; preds = %86
  store i64 0, i64* %15, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %16, align 8
  store i32* null, i32** %17, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = call i8* @GetParamStr(i32* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %112, i8** %18, align 8
  %113 = load i8*, i8** %18, align 8
  %114 = call i32 @Trim(i8* %113)
  %115 = call i32* @NewHttpHeader(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  store i32* %115, i32** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call %struct.TYPE_18__* @ParseToken(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_18__* %120, %struct.TYPE_18__** %16, align 8
  store i64 0, i64* %15, align 8
  br label %121

121:                                              ; preds = %136, %110
  %122 = load i64, i64* %15, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %121
  %128 = load i32*, i32** %17, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %15, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @AddHttpValueStr(i32* %128, i32 %134)
  br label %136

136:                                              ; preds = %127
  %137 = load i64, i64* %15, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %15, align 8
  br label %121

139:                                              ; preds = %121
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %141 = call i32 @FreeToken(%struct.TYPE_18__* %140)
  %142 = load i32*, i32** %17, align 8
  %143 = load i8*, i8** %18, align 8
  %144 = call i32* @GetHttpValue(i32* %142, i8* %143)
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %181

146:                                              ; preds = %139
  %147 = load i32, i32* @HTTP_CUSTOM_HEADER_MAX_SIZE, align 4
  %148 = zext i32 %147 to i64
  %149 = call i8* @llvm.stacksave()
  store i8* %149, i8** %19, align 8
  %150 = alloca i8, i64 %148, align 16
  store i64 %148, i64* %20, align 8
  %151 = trunc i64 %148 to i32
  %152 = load i8*, i8** %18, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = call i8* @GetParamStr(i32* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %155 = call i32 @Format(i8* %150, i32 %151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %152, i8* %154)
  %156 = call i32 @EnSafeHttpHeaderValueStr(i8* %150, i8 signext 32)
  %157 = call i32 @StrLen(i8* %150)
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @StrLen(i8* %161)
  %163 = add nsw i32 %157, %162
  %164 = sext i32 %163 to i64
  %165 = icmp ult i64 %164, 8
  br i1 %165, label %166, label %177

166:                                              ; preds = %146
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = trunc i64 %148 to i32
  %172 = call i32 @StrCat(i8* %170, i32 %171, i8* %150)
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @ScSetLink(i32 %175, %struct.TYPE_19__* %13)
  store i64 %176, i64* %12, align 8
  br label %179

177:                                              ; preds = %146
  %178 = load i64, i64* @ERR_TOO_MANT_ITEMS, align 8
  store i64 %178, i64* %12, align 8
  br label %179

179:                                              ; preds = %177, %166
  %180 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %180)
  br label %183

181:                                              ; preds = %139
  %182 = load i64, i64* @ERR_OBJECT_EXISTS, align 8
  store i64 %182, i64* %12, align 8
  br label %183

183:                                              ; preds = %181, %179
  %184 = load i32*, i32** %17, align 8
  %185 = call i32 @FreeHttpHeader(i32* %184)
  br label %186

186:                                              ; preds = %183, %86
  %187 = load i64, i64* %12, align 8
  %188 = load i64, i64* @ERR_NO_ERROR, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %192 = load i64, i64* %12, align 8
  %193 = call i32 @CmdPrintError(%struct.TYPE_22__* %191, i64 %192)
  br label %194

194:                                              ; preds = %190, %186
  %195 = call i32 @FreeRpcCreateLink(%struct.TYPE_19__* %13)
  %196 = load i32*, i32** %10, align 8
  %197 = call i32 @FreeParamValueList(i32* %196)
  %198 = load i64, i64* %12, align 8
  store i64 %198, i64* %5, align 8
  br label %199

199:                                              ; preds = %194, %84, %68
  %200 = load i64, i64* %5, align 8
  ret i64 %200
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_22__*, i8*, i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local %struct.TYPE_23__* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetParamUniStr(i32*, i8*) #1

declare dso_local i64 @ScGetLink(i32, %struct.TYPE_19__*) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i32* @NewHttpHeader(i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_18__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @AddHttpValueStr(i32*, i32) #1

declare dso_local i32 @FreeToken(%struct.TYPE_18__*) #1

declare dso_local i32* @GetHttpValue(i32*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @EnSafeHttpHeaderValueStr(i8*, i8 signext) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @StrCat(i8*, i32, i8*) #1

declare dso_local i64 @ScSetLink(i32, %struct.TYPE_19__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeHttpHeader(i32*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @FreeRpcCreateLink(%struct.TYPE_19__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
