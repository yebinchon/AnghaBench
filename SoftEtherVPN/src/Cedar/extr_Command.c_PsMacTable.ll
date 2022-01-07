; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsMacTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsMacTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32)* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i8*, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i8*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [15 x i8] c"[session_name]\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"CMD_ID\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"SM_MAC_COLUMN_1\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SM_MAC_COLUMN_1A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"SM_MAC_COLUMN_2\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"SM_MAC_COLUMN_3\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"SM_MAC_COLUMN_4\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"SM_MAC_COLUMN_5\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"SM_MACIP_LOCAL\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"SM_MACIP_SERVER\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"CM_ST_NONE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsMacTable(%struct.TYPE_19__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i64, align 8
  %15 = alloca [1 x %struct.TYPE_18__], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca [128 x i32], align 16
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %12, align 8
  %30 = bitcast [1 x %struct.TYPE_18__]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 40, i1 false)
  %31 = bitcast i8* %30 to [1 x %struct.TYPE_18__]*
  %32 = getelementptr inbounds [1 x %struct.TYPE_18__], [1 x %struct.TYPE_18__]* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8** %33, align 16
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %40, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 %41(%struct.TYPE_19__* %42, i32 %43)
  %45 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %45, i64* %5, align 8
  br label %232

46:                                               ; preds = %4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds [1 x %struct.TYPE_18__], [1 x %struct.TYPE_18__]* %15, i64 0, i64 0
  %51 = call i32* @ParseCommandList(%struct.TYPE_19__* %47, i8* %48, i32* %49, %struct.TYPE_18__* %50, i32 1)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %55, i64* %5, align 8
  br label %232

56:                                               ; preds = %46
  %57 = call i32 @Zero(%struct.TYPE_16__* %13, i32 24)
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @StrCpy(i32 %59, i32 4, i32* %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ScEnumMacTable(i32 %66, %struct.TYPE_16__* %13)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @ERR_NO_ERROR, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %56
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @CmdPrintError(%struct.TYPE_19__* %72, i64 %73)
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @FreeParamValueList(i32* %75)
  %77 = load i64, i64* %12, align 8
  store i64 %77, i64* %5, align 8
  br label %232

78:                                               ; preds = %56
  %79 = call i32* (...) @CtNew()
  store i32* %79, i32** %16, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i8* @GetParamStr(i32* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %81, i8** %17, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = call i64 @IsEmptyStr(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i8* null, i8** %17, align 8
  br label %86

86:                                               ; preds = %85, %78
  %87 = load i32*, i32** %16, align 8
  %88 = call i32 @_UU(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %89 = call i32 @CtInsertColumn(i32* %87, i32 %88, i32 0)
  %90 = load i32*, i32** %16, align 8
  %91 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %92 = call i32 @CtInsertColumn(i32* %90, i32 %91, i32 0)
  %93 = load i32*, i32** %16, align 8
  %94 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %95 = call i32 @CtInsertColumn(i32* %93, i32 %94, i32 0)
  %96 = load i32*, i32** %16, align 8
  %97 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %98 = call i32 @CtInsertColumn(i32* %96, i32 %97, i32 0)
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %101 = call i32 @CtInsertColumn(i32* %99, i32 %100, i32 0)
  %102 = load i32*, i32** %16, align 8
  %103 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %104 = call i32 @CtInsertColumn(i32* %102, i32 %103, i32 0)
  %105 = load i32*, i32** %16, align 8
  %106 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %107 = call i32 @CtInsertColumn(i32* %105, i32 %106, i32 0)
  store i64 0, i64* %14, align 8
  br label %108

108:                                              ; preds = %221, %86
  %109 = load i64, i64* %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %109, %111
  br i1 %112, label %113, label %224

113:                                              ; preds = %108
  %114 = load i32, i32* @MAX_SIZE, align 4
  %115 = zext i32 %114 to i64
  %116 = call i8* @llvm.stacksave()
  store i8* %116, i8** %18, align 8
  %117 = alloca i8, i64 %115, align 16
  store i64 %115, i64* %19, align 8
  %118 = load i32, i32* @MAX_SIZE, align 4
  %119 = zext i32 %118 to i64
  %120 = alloca i32, i64 %119, align 16
  store i64 %119, i64* %21, align 8
  %121 = load i32, i32* @MAX_SIZE, align 4
  %122 = zext i32 %121 to i64
  %123 = alloca i32, i64 %122, align 16
  store i64 %122, i64* %22, align 8
  %124 = load i32, i32* @MAX_SIZE, align 4
  %125 = zext i32 %124 to i64
  %126 = alloca i32, i64 %125, align 16
  store i64 %125, i64* %23, align 8
  %127 = load i32, i32* @MAX_SIZE, align 4
  %128 = zext i32 %127 to i64
  %129 = alloca i32, i64 %128, align 16
  store i64 %128, i64* %24, align 8
  %130 = load i32, i32* @MAX_SIZE, align 4
  %131 = zext i32 %130 to i64
  %132 = alloca i32, i64 %131, align 16
  store i64 %131, i64* %25, align 8
  %133 = load i32, i32* @MAX_SIZE, align 4
  %134 = zext i32 %133 to i64
  %135 = alloca i32, i64 %134, align 16
  store i64 %134, i64* %26, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = load i64, i64* %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i64 %138
  store %struct.TYPE_15__* %139, %struct.TYPE_15__** %27, align 8
  %140 = load i8*, i8** %17, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %149, label %142

142:                                              ; preds = %113
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** %17, align 8
  %147 = call i64 @StrCmpi(i8* %145, i8* %146)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %219

149:                                              ; preds = %142, %113
  %150 = getelementptr inbounds [128 x i32], [128 x i32]* %20, i64 0, i64 0
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @UniToStru(i32* %150, i64 %153)
  %155 = mul nuw i64 4, %119
  %156 = trunc i64 %155 to i32
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @StrToUni(i32* %120, i32 %156, i8* %159)
  %161 = trunc i64 %115 to i32
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @MacToStr(i8* %117, i32 %161, i32 %164)
  %166 = mul nuw i64 4, %122
  %167 = trunc i64 %166 to i32
  %168 = call i32 @StrToUni(i32* %123, i32 %167, i8* %117)
  %169 = mul nuw i64 4, %125
  %170 = trunc i64 %169 to i32
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @SystemToLocal64(i32 %173)
  %175 = call i32 @GetDateTimeStr64Uni(i32* %126, i32 %170, i32 %174)
  %176 = mul nuw i64 4, %128
  %177 = trunc i64 %176 to i32
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @SystemToLocal64(i32 %180)
  %182 = call i32 @GetDateTimeStr64Uni(i32* %129, i32 %177, i32 %181)
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = call i64 @StrLen(i32 %185)
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %149
  %189 = mul nuw i64 4, %131
  %190 = trunc i64 %189 to i32
  %191 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %192 = call i32 @UniStrCpy(i32* %132, i32 %190, i32 %191)
  br label %201

193:                                              ; preds = %149
  %194 = mul nuw i64 4, %131
  %195 = trunc i64 %194 to i32
  %196 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @UniFormat(i32* %132, i32 %195, i32 %196, i32 %199)
  br label %201

201:                                              ; preds = %193, %188
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @UniToStru(i32* %135, i64 %204)
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %201
  %211 = mul nuw i64 4, %134
  %212 = trunc i64 %211 to i32
  %213 = call i32 @_UU(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %214 = call i32 @UniStrCpy(i32* %135, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %210, %201
  %216 = load i32*, i32** %16, align 8
  %217 = getelementptr inbounds [128 x i32], [128 x i32]* %20, i64 0, i64 0
  %218 = call i32 @CtInsert(i32* %216, i32* %217, i32* %120, i32* %135, i32* %123, i32* %126, i32* %129, i32* %132)
  br label %219

219:                                              ; preds = %215, %142
  %220 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %220)
  br label %221

221:                                              ; preds = %219
  %222 = load i64, i64* %14, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %14, align 8
  br label %108

224:                                              ; preds = %108
  %225 = load i32*, i32** %16, align 8
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %227 = call i32 @CtFreeEx(i32* %225, %struct.TYPE_19__* %226, i32 1)
  br label %228

228:                                              ; preds = %224
  %229 = call i32 @FreeRpcEnumMacTable(%struct.TYPE_16__* %13)
  %230 = load i32*, i32** %10, align 8
  %231 = call i32 @FreeParamValueList(i32* %230)
  store i64 0, i64* %5, align 8
  br label %232

232:                                              ; preds = %228, %71, %54, %38
  %233 = load i64, i64* %5, align 8
  ret i64 %233
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32*) #2

declare dso_local i64 @ScEnumMacTable(i32, %struct.TYPE_16__*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_19__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i32* @CtNew(...) #2

declare dso_local i8* @GetParamStr(i32*, i8*) #2

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @StrCmpi(i8*, i8*) #2

declare dso_local i32 @UniToStru(i32*, i64) #2

declare dso_local i32 @StrToUni(i32*, i32, i8*) #2

declare dso_local i32 @MacToStr(i8*, i32, i32) #2

declare dso_local i32 @GetDateTimeStr64Uni(i32*, i32, i32) #2

declare dso_local i32 @SystemToLocal64(i32) #2

declare dso_local i64 @StrLen(i32) #2

declare dso_local i32 @UniStrCpy(i32*, i32, i32) #2

declare dso_local i32 @UniFormat(i32*, i32, i32, i32) #2

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @CtFreeEx(i32*, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @FreeRpcEnumMacTable(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
