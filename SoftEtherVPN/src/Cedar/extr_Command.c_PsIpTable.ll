; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsIpTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsIpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32)* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i8*, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i8*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [15 x i8] c"[session_name]\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"CMD_ID\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"SM_IP_COLUMN_1\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"SM_IP_COLUMN_2\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"SM_IP_COLUMN_3\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"SM_IP_COLUMN_4\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"SM_IP_COLUMN_5\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"SM_MAC_IP_DHCP\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"SM_MACIP_LOCAL\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"SM_MACIP_SERVER\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsIpTable(%struct.TYPE_19__* %0, i8* %1, i32* %2, i8* %3) #0 {
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
  %26 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %12, align 8
  %29 = bitcast [1 x %struct.TYPE_18__]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 40, i1 false)
  %30 = bitcast i8* %29 to [1 x %struct.TYPE_18__]*
  %31 = getelementptr inbounds [1 x %struct.TYPE_18__], [1 x %struct.TYPE_18__]* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8** %32, align 16
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %39, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %42 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 %40(%struct.TYPE_19__* %41, i32 %42)
  %44 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %44, i64* %5, align 8
  br label %225

45:                                               ; preds = %4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds [1 x %struct.TYPE_18__], [1 x %struct.TYPE_18__]* %15, i64 0, i64 0
  %50 = call i32* @ParseCommandList(%struct.TYPE_19__* %46, i8* %47, i32* %48, %struct.TYPE_18__* %49, i32 1)
  store i32* %50, i32** %10, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %54, i64* %5, align 8
  br label %225

55:                                               ; preds = %45
  %56 = call i32 @Zero(%struct.TYPE_16__* %13, i32 24)
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @StrCpy(i32 %58, i32 4, i32* %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ScEnumIpTable(i32 %65, %struct.TYPE_16__* %13)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @ERR_NO_ERROR, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %55
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @CmdPrintError(%struct.TYPE_19__* %71, i64 %72)
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @FreeParamValueList(i32* %74)
  %76 = load i64, i64* %12, align 8
  store i64 %76, i64* %5, align 8
  br label %225

77:                                               ; preds = %55
  %78 = call i32* (...) @CtNew()
  store i32* %78, i32** %16, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = call i8* @GetParamStr(i32* %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %80, i8** %17, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = call i64 @IsEmptyStr(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i8* null, i8** %17, align 8
  br label %85

85:                                               ; preds = %84, %77
  %86 = load i32*, i32** %16, align 8
  %87 = call i32 @_UU(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %88 = call i32 @CtInsertColumn(i32* %86, i32 %87, i32 0)
  %89 = load i32*, i32** %16, align 8
  %90 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %91 = call i32 @CtInsertColumn(i32* %89, i32 %90, i32 0)
  %92 = load i32*, i32** %16, align 8
  %93 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %94 = call i32 @CtInsertColumn(i32* %92, i32 %93, i32 0)
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %97 = call i32 @CtInsertColumn(i32* %95, i32 %96, i32 0)
  %98 = load i32*, i32** %16, align 8
  %99 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %100 = call i32 @CtInsertColumn(i32* %98, i32 %99, i32 0)
  %101 = load i32*, i32** %16, align 8
  %102 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %103 = call i32 @CtInsertColumn(i32* %101, i32 %102, i32 0)
  store i64 0, i64* %14, align 8
  br label %104

104:                                              ; preds = %214, %85
  %105 = load i64, i64* %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %109, label %217

109:                                              ; preds = %104
  %110 = load i32, i32* @MAX_SIZE, align 4
  %111 = zext i32 %110 to i64
  %112 = call i8* @llvm.stacksave()
  store i8* %112, i8** %18, align 8
  %113 = alloca i8, i64 %111, align 16
  store i64 %111, i64* %19, align 8
  %114 = load i32, i32* @MAX_SIZE, align 4
  %115 = zext i32 %114 to i64
  %116 = alloca i32, i64 %115, align 16
  store i64 %115, i64* %21, align 8
  %117 = load i32, i32* @MAX_SIZE, align 4
  %118 = zext i32 %117 to i64
  %119 = alloca i32, i64 %118, align 16
  store i64 %118, i64* %22, align 8
  %120 = load i32, i32* @MAX_SIZE, align 4
  %121 = zext i32 %120 to i64
  %122 = alloca i32, i64 %121, align 16
  store i64 %121, i64* %23, align 8
  %123 = load i32, i32* @MAX_SIZE, align 4
  %124 = zext i32 %123 to i64
  %125 = alloca i32, i64 %124, align 16
  store i64 %124, i64* %24, align 8
  %126 = load i32, i32* @MAX_SIZE, align 4
  %127 = zext i32 %126 to i64
  %128 = alloca i32, i64 %127, align 16
  store i64 %127, i64* %25, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = load i64, i64* %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i64 %131
  store %struct.TYPE_15__* %132, %struct.TYPE_15__** %26, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %109
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = call i64 @StrCmpi(i8* %138, i8* %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %212

142:                                              ; preds = %135, %109
  %143 = getelementptr inbounds [128 x i32], [128 x i32]* %20, i64 0, i64 0
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @UniToStru(i32* %143, i32 %146)
  %148 = mul nuw i64 4, %115
  %149 = trunc i64 %148 to i32
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @StrToUni(i32* %116, i32 %149, i8* %152)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %142
  %159 = trunc i64 %111 to i32
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 5
  %162 = call i32 @IPToStr(i8* %113, i32 %159, i32* %161)
  %163 = mul nuw i64 4, %118
  %164 = trunc i64 %163 to i32
  %165 = call i32 @StrToUni(i32* %119, i32 %164, i8* %113)
  br label %175

166:                                              ; preds = %142
  %167 = trunc i64 %111 to i32
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 5
  %170 = call i32 @IPToStr(i8* %113, i32 %167, i32* %169)
  %171 = mul nuw i64 4, %118
  %172 = trunc i64 %171 to i32
  %173 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %174 = call i32 @UniFormat(i32* %119, i32 %172, i32 %173, i8* %113)
  br label %175

175:                                              ; preds = %166, %158
  %176 = mul nuw i64 4, %121
  %177 = trunc i64 %176 to i32
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @SystemToLocal64(i32 %180)
  %182 = call i32 @GetDateTimeStr64Uni(i32* %122, i32 %177, i32 %181)
  %183 = mul nuw i64 4, %124
  %184 = trunc i64 %183 to i32
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @SystemToLocal64(i32 %187)
  %189 = call i32 @GetDateTimeStr64Uni(i32* %125, i32 %184, i32 %188)
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = call i64 @StrLen(i8* %192)
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %175
  %196 = mul nuw i64 4, %127
  %197 = trunc i64 %196 to i32
  %198 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %199 = call i32 @UniStrCpy(i32* %128, i32 %197, i32 %198)
  br label %208

200:                                              ; preds = %175
  %201 = mul nuw i64 4, %127
  %202 = trunc i64 %201 to i32
  %203 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @UniFormat(i32* %128, i32 %202, i32 %203, i8* %206)
  br label %208

208:                                              ; preds = %200, %195
  %209 = load i32*, i32** %16, align 8
  %210 = getelementptr inbounds [128 x i32], [128 x i32]* %20, i64 0, i64 0
  %211 = call i32 @CtInsert(i32* %209, i32* %210, i32* %116, i32* %119, i32* %122, i32* %125, i32* %128)
  br label %212

212:                                              ; preds = %208, %135
  %213 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %213)
  br label %214

214:                                              ; preds = %212
  %215 = load i64, i64* %14, align 8
  %216 = add nsw i64 %215, 1
  store i64 %216, i64* %14, align 8
  br label %104

217:                                              ; preds = %104
  %218 = load i32*, i32** %16, align 8
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %220 = call i32 @CtFreeEx(i32* %218, %struct.TYPE_19__* %219, i32 1)
  br label %221

221:                                              ; preds = %217
  %222 = call i32 @FreeRpcEnumIpTable(%struct.TYPE_16__* %13)
  %223 = load i32*, i32** %10, align 8
  %224 = call i32 @FreeParamValueList(i32* %223)
  store i64 0, i64* %5, align 8
  br label %225

225:                                              ; preds = %221, %70, %53, %37
  %226 = load i64, i64* %5, align 8
  ret i64 %226
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32* @ParseCommandList(%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32*) #2

declare dso_local i64 @ScEnumIpTable(i32, %struct.TYPE_16__*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_19__*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i32* @CtNew(...) #2

declare dso_local i8* @GetParamStr(i32*, i8*) #2

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @StrCmpi(i8*, i8*) #2

declare dso_local i32 @UniToStru(i32*, i32) #2

declare dso_local i32 @StrToUni(i32*, i32, i8*) #2

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

declare dso_local i32 @UniFormat(i32*, i32, i32, i8*) #2

declare dso_local i32 @GetDateTimeStr64Uni(i32*, i32, i32) #2

declare dso_local i32 @SystemToLocal64(i32) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i32 @UniStrCpy(i32*, i32, i32) #2

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @CtFreeEx(i32*, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @FreeRpcEnumIpTable(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
