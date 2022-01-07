; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsGroupGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsGroupGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 (%struct.TYPE_29__*, i8*)* }
%struct.TYPE_27__ = type { i8*, i32 }
%struct.TYPE_25__ = type { i8*, i8*, i8*, i8*, i64, %struct.TYPE_26__*, i32* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_28__ = type { i8*, i8*, i32*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[name]\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"CMD_GroupCreate_Prompt_NAME\00", align 1
@CmdEvalNotEmpty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@MAX_USERNAME_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"CMD_GroupGet_Column_NAME\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"CMD_GroupGet_Column_REALNAME\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"CMD_GroupGet_Column_NOTE\00", align 1
@.str.6 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"CMD_GroupGet_Column_POLICY\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"CMD_GroupGet_Column_MEMBERS\00", align 1
@.str.9 = private unnamed_addr constant [4 x i32] [i32 32, i32 37, i32 83, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsGroupGet(%struct.TYPE_29__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_25__, align 8
  %14 = alloca [1 x %struct.TYPE_28__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_25__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %24, %struct.TYPE_27__** %11, align 8
  store i64 0, i64* %12, align 8
  %25 = getelementptr inbounds [1 x %struct.TYPE_28__], [1 x %struct.TYPE_28__]* %14, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %26, align 16
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 1
  %28 = load i32, i32* @CmdPrompt, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %27, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 2
  %32 = call i8* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %31, align 16
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 3
  %35 = load i32, i32* @CmdEvalNotEmpty, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 4
  store i32 0, i32* %36, align 4
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %4
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_29__*, i8*)*, i32 (%struct.TYPE_29__*, i8*)** %43, align 8
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %46 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 %44(%struct.TYPE_29__* %45, i8* %46)
  %48 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %48, i64* %5, align 8
  br label %216

49:                                               ; preds = %4
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds [1 x %struct.TYPE_28__], [1 x %struct.TYPE_28__]* %14, i64 0, i64 0
  %54 = call i32* @ParseCommandList(%struct.TYPE_29__* %50, i8* %51, i8* %52, %struct.TYPE_28__* %53, i32 1)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %58, i64* %5, align 8
  br label %216

59:                                               ; preds = %49
  %60 = call i32 @Zero(%struct.TYPE_25__* %13, i32 56)
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @StrCpy(i8* %62, i32 8, i8* %65)
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i8* @GetParamStr(i32* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 @StrCpy(i8* %68, i32 8, i8* %70)
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @ScGetGroup(i32 %74, %struct.TYPE_25__* %13)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @ERR_NO_ERROR, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %59
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @CmdPrintError(%struct.TYPE_29__* %80, i64 %81)
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @FreeParamValueList(i32* %83)
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %5, align 8
  br label %216

86:                                               ; preds = %59
  %87 = load i32, i32* @MAX_SIZE, align 4
  %88 = zext i32 %87 to i64
  %89 = call i8* @llvm.stacksave()
  store i8* %89, i8** %15, align 8
  %90 = alloca i8, i64 %88, align 16
  store i64 %88, i64* %16, align 8
  %91 = load i32, i32* @MAX_USERNAME_LEN, align 4
  %92 = add nsw i32 %91, 1
  %93 = zext i32 %92 to i64
  %94 = alloca i8, i64 %93, align 16
  store i64 %93, i64* %17, align 8
  %95 = call i32* (...) @CtNewStandard()
  store i32* %95, i32** %18, align 8
  %96 = trunc i64 %93 to i32
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @StrCpy(i8* %94, i32 %96, i8* %98)
  %100 = trunc i64 %88 to i32
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @StrToUni(i8* %90, i32 %100, i8* %102)
  %104 = load i32*, i32** %18, align 8
  %105 = call i8* @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %106 = call i32 @CtInsert(i32* %104, i8* %105, i8* %90)
  %107 = load i32*, i32** %18, align 8
  %108 = call i8* @_UU(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @CtInsert(i32* %107, i8* %108, i8* %110)
  %112 = load i32*, i32** %18, align 8
  %113 = call i8* @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @CtInsert(i32* %112, i8* %113, i8* %115)
  %117 = load i32*, i32** %18, align 8
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %119 = call i32 @CtFree(i32* %117, %struct.TYPE_29__* %118)
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %86
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load i32 (%struct.TYPE_29__*, i8*)*, i32 (%struct.TYPE_29__*, i8*)** %125, align 8
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %128 = call i32 %126(%struct.TYPE_29__* %127, i8* bitcast ([1 x i32]* @.str.6 to i8*))
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 0
  %131 = load i32 (%struct.TYPE_29__*, i8*)*, i32 (%struct.TYPE_29__*, i8*)** %130, align 8
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %133 = call i8* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %134 = call i32 %131(%struct.TYPE_29__* %132, i8* %133)
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @PrintPolicy(%struct.TYPE_29__* %135, i32* %137, i32 0)
  br label %139

139:                                              ; preds = %123, %86
  store i32 0, i32* %20, align 4
  %140 = call i32 @Zero(%struct.TYPE_25__* %19, i32 56)
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @StrCpy(i8* %142, i32 8, i8* %145)
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @ScEnumUser(i32 %149, %struct.TYPE_25__* %19)
  %151 = load i64, i64* @ERR_NO_ERROR, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %210

153:                                              ; preds = %139
  store i64 0, i64* %21, align 8
  br label %154

154:                                              ; preds = %196, %153
  %155 = load i64, i64* %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = icmp slt i64 %155, %157
  br i1 %158, label %159, label %199

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 5
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %160, align 8
  %162 = load i64, i64* %21, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i64 %162
  store %struct.TYPE_26__* %163, %struct.TYPE_26__** %22, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @StrCmpi(i32 %166, i8* %94)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %195

169:                                              ; preds = %159
  %170 = load i32, i32* %20, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  store i32 1, i32* %20, align 4
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 0
  %175 = load i32 (%struct.TYPE_29__*, i8*)*, i32 (%struct.TYPE_29__*, i8*)** %174, align 8
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %177 = call i32 %175(%struct.TYPE_29__* %176, i8* bitcast ([1 x i32]* @.str.6 to i8*))
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  %180 = load i32 (%struct.TYPE_29__*, i8*)*, i32 (%struct.TYPE_29__*, i8*)** %179, align 8
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %182 = call i8* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %183 = call i32 %180(%struct.TYPE_29__* %181, i8* %182)
  br label %184

184:                                              ; preds = %172, %169
  %185 = trunc i64 %88 to i32
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @UniFormat(i8* %90, i32 %185, i8* bitcast ([4 x i32]* @.str.9 to i8*), i32 %188)
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 0
  %192 = load i32 (%struct.TYPE_29__*, i8*)*, i32 (%struct.TYPE_29__*, i8*)** %191, align 8
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %194 = call i32 %192(%struct.TYPE_29__* %193, i8* %90)
  br label %195

195:                                              ; preds = %184, %159
  br label %196

196:                                              ; preds = %195
  %197 = load i64, i64* %21, align 8
  %198 = add nsw i64 %197, 1
  store i64 %198, i64* %21, align 8
  br label %154

199:                                              ; preds = %154
  %200 = call i32 @FreeRpcEnumUser(%struct.TYPE_25__* %19)
  %201 = load i32, i32* %20, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %199
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 0
  %206 = load i32 (%struct.TYPE_29__*, i8*)*, i32 (%struct.TYPE_29__*, i8*)** %205, align 8
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %208 = call i32 %206(%struct.TYPE_29__* %207, i8* bitcast ([1 x i32]* @.str.6 to i8*))
  br label %209

209:                                              ; preds = %203, %199
  br label %210

210:                                              ; preds = %209, %139
  %211 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %211)
  br label %212

212:                                              ; preds = %210
  %213 = call i32 @FreeRpcSetGroup(%struct.TYPE_25__* %13)
  %214 = load i32*, i32** %10, align 8
  %215 = call i32 @FreeParamValueList(i32* %214)
  store i64 0, i64* %5, align 8
  br label %216

216:                                              ; preds = %212, %79, %57, %41
  %217 = load i64, i64* %5, align 8
  ret i64 %217
}

declare dso_local i8* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_29__*, i8*, i8*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScGetGroup(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @StrToUni(i8*, i32, i8*) #1

declare dso_local i32 @CtInsert(i32*, i8*, i8*) #1

declare dso_local i32 @CtFree(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @PrintPolicy(%struct.TYPE_29__*, i32*, i32) #1

declare dso_local i64 @ScEnumUser(i32, %struct.TYPE_25__*) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i32 @UniFormat(i8*, i32, i8*, i32) #1

declare dso_local i32 @FreeRpcEnumUser(%struct.TYPE_25__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeRpcSetGroup(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
