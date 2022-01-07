; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSessionList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSessionList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32*)* }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"SM_SESS_COLUMN_1\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SM_SESS_COLUMN_8\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SM_SESS_COLUMN_2\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SM_SESS_COLUMN_3\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"SM_SESS_COLUMN_4\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"SM_SESS_COLUMN_5\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"SM_SESS_COLUMN_6\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"SM_SESS_COLUMN_7\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"SM_SESS_NORMAL\00", align 1
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"SM_SESS_REMOTE\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"SM_SESS_LOCAL\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"SM_SESS_LOCAL_2\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"SM_SESS_LINK\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"SM_SESS_SNAT\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"SM_SESS_LINK_HOSTNAME\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"SM_SESS_SNAT_HOSTNAME\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"SM_SESS_BRIDGE_HOSTNAME\00", align 1
@L3_USERNAME = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [24 x i8] c"SM_SESS_LAYER3_HOSTNAME\00", align 1
@.str.19 = private unnamed_addr constant [8 x i32] [i32 37, i32 117, i32 32, i32 47, i32 32, i32 37, i32 117, i32 0], align 4
@.str.20 = private unnamed_addr constant [17 x i8] c"SM_SESS_LINK_TCP\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"SM_SESS_SNAT_TCP\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"SM_SESS_BRIDGE_TCP\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"CM_ST_NO_VLAN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsSessionList(%struct.TYPE_19__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32* @ParseCommandList(%struct.TYPE_19__* %31, i8* %32, i32* %33, i32* null, i32 0)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %38, i64* %5, align 8
  br label %359

39:                                               ; preds = %4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_19__*, i32*)*, i32 (%struct.TYPE_19__*, i32*)** %46, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 %47(%struct.TYPE_19__* %48, i32* %49)
  %51 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %51, i64* %5, align 8
  br label %359

52:                                               ; preds = %39
  %53 = call i32 @Zero(%struct.TYPE_16__* %15, i32 32)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @ScGetServerInfo(i32 %56, %struct.TYPE_16__* %15)
  %58 = load i64, i64* @ERR_NO_ERROR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %14, align 8
  %63 = call i32 @FreeRpcServerInfo(%struct.TYPE_16__* %15)
  br label %64

64:                                               ; preds = %60, %52
  %65 = call i32 @Zero(%struct.TYPE_16__* %13, i32 32)
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @StrCpy(i32 %67, i32 4, i32* %70)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @ScEnumSession(i32 %74, %struct.TYPE_16__* %13)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @ERR_NO_ERROR, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %64
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @CmdPrintError(%struct.TYPE_19__* %80, i64 %81)
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @FreeParamValueList(i32* %83)
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %5, align 8
  br label %359

86:                                               ; preds = %64
  %87 = call i32* (...) @CtNew()
  store i32* %87, i32** %16, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %90 = call i32 @CtInsertColumn(i32* %88, i32* %89, i32 0)
  %91 = load i32*, i32** %16, align 8
  %92 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %93 = call i32 @CtInsertColumn(i32* %91, i32* %92, i32 0)
  %94 = load i32*, i32** %16, align 8
  %95 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %96 = call i32 @CtInsertColumn(i32* %94, i32* %95, i32 0)
  %97 = load i32*, i32** %16, align 8
  %98 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %99 = call i32 @CtInsertColumn(i32* %97, i32* %98, i32 0)
  %100 = load i32*, i32** %16, align 8
  %101 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %102 = call i32 @CtInsertColumn(i32* %100, i32* %101, i32 0)
  %103 = load i32*, i32** %16, align 8
  %104 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %105 = call i32 @CtInsertColumn(i32* %103, i32* %104, i32 1)
  %106 = load i32*, i32** %16, align 8
  %107 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %108 = call i32 @CtInsertColumn(i32* %106, i32* %107, i32 1)
  %109 = load i32*, i32** %16, align 8
  %110 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %111 = call i32 @CtInsertColumn(i32* %109, i32* %110, i32 1)
  store i64 0, i64* %17, align 8
  br label %112

112:                                              ; preds = %348, %86
  %113 = load i64, i64* %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %117, label %351

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = load i64, i64* %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i64 %120
  store %struct.TYPE_17__* %121, %struct.TYPE_17__** %18, align 8
  %122 = load i32, i32* @MAX_SIZE, align 4
  %123 = zext i32 %122 to i64
  %124 = call i8* @llvm.stacksave()
  store i8* %124, i8** %19, align 8
  %125 = alloca i32, i64 %123, align 16
  store i64 %123, i64* %20, align 8
  %126 = load i32, i32* @MAX_SIZE, align 4
  %127 = zext i32 %126 to i64
  %128 = alloca i32, i64 %127, align 16
  store i64 %127, i64* %22, align 8
  %129 = load i32, i32* @MAX_SIZE, align 4
  %130 = zext i32 %129 to i64
  %131 = alloca i32, i64 %130, align 16
  store i64 %130, i64* %23, align 8
  %132 = load i32, i32* @MAX_SIZE, align 4
  %133 = zext i32 %132 to i64
  %134 = alloca i32, i64 %133, align 16
  store i64 %133, i64* %24, align 8
  %135 = load i32, i32* @MAX_SIZE, align 4
  %136 = zext i32 %135 to i64
  %137 = alloca i32, i64 %136, align 16
  store i64 %136, i64* %25, align 8
  %138 = load i32, i32* @MAX_SIZE, align 4
  %139 = zext i32 %138 to i64
  %140 = alloca i32, i64 %139, align 16
  store i64 %139, i64* %26, align 8
  %141 = load i32, i32* @MAX_SIZE, align 4
  %142 = zext i32 %141 to i64
  %143 = alloca i32, i64 %142, align 16
  store i64 %142, i64* %27, align 8
  store i32 0, i32* %28, align 4
  %144 = mul nuw i64 4, %123
  %145 = trunc i64 %144 to i32
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 12
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @StrToUni(i32* %125, i32 %145, i32 %148)
  %150 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i32* %150, i32** %21, align 8
  %151 = load i64, i64* %14, align 8
  %152 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %191

154:                                              ; preds = %117
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 11
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  %160 = load i32, i32* @MAX_SIZE, align 4
  %161 = call i32* @ZeroMalloc(i32 %160)
  store i32* %161, i32** %21, align 8
  %162 = load i32*, i32** %21, align 8
  %163 = load i32, i32* @MAX_SIZE, align 4
  %164 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %165 = bitcast i32* %164 to i8*
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 10
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i32*, i32, i8*, i32, ...) @UniFormat(i32* %162, i32 %163, i8* %165, i32 %168)
  store i32 1, i32* %28, align 4
  br label %190

170:                                              ; preds = %154
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @StrLen(i32 %173)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = call i32* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  store i32* %177, i32** %21, align 8
  br label %189

178:                                              ; preds = %170
  %179 = load i32, i32* @MAX_SIZE, align 4
  %180 = call i32* @ZeroMalloc(i32 %179)
  store i32* %180, i32** %21, align 8
  %181 = load i32*, i32** %21, align 8
  %182 = load i32, i32* @MAX_SIZE, align 4
  %183 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %184 = bitcast i32* %183 to i8*
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 10
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (i32*, i32, i8*, i32, ...) @UniFormat(i32* %181, i32 %182, i8* %184, i32 %187)
  store i32 1, i32* %28, align 4
  br label %189

189:                                              ; preds = %178, %176
  br label %190

190:                                              ; preds = %189, %159
  br label %191

191:                                              ; preds = %190, %117
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %191
  %197 = load i32, i32* %28, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32*, i32** %21, align 8
  %201 = call i32 @Free(i32* %200)
  store i32 0, i32* %28, align 4
  br label %202

202:                                              ; preds = %199, %196
  %203 = call i32* @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  store i32* %203, i32** %21, align 8
  br label %212

204:                                              ; preds = %191
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = call i32* @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  store i32* %210, i32** %21, align 8
  br label %211

211:                                              ; preds = %209, %204
  br label %212

212:                                              ; preds = %211, %202
  %213 = mul nuw i64 4, %127
  %214 = trunc i64 %213 to i32
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @StrToUni(i32* %128, i32 %214, i32 %217)
  %219 = mul nuw i64 4, %130
  %220 = trunc i64 %219 to i32
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 9
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @StrToUni(i32* %131, i32 %220, i32 %223)
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %212
  %230 = mul nuw i64 4, %130
  %231 = trunc i64 %230 to i32
  %232 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %233 = call i32 @UniStrCpy(i32* %131, i32 %231, i32* %232)
  br label %269

234:                                              ; preds = %212
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  %240 = mul nuw i64 4, %130
  %241 = trunc i64 %240 to i32
  %242 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %243 = call i32 @UniStrCpy(i32* %131, i32 %241, i32* %242)
  br label %268

244:                                              ; preds = %234
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = mul nuw i64 4, %130
  %251 = trunc i64 %250 to i32
  %252 = call i32* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %253 = call i32 @UniStrCpy(i32* %131, i32 %251, i32* %252)
  br label %267

254:                                              ; preds = %244
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @L3_USERNAME, align 4
  %259 = call i64 @StartWith(i32 %257, i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %254
  %262 = mul nuw i64 4, %130
  %263 = trunc i64 %262 to i32
  %264 = call i32* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %265 = call i32 @UniStrCpy(i32* %131, i32 %263, i32* %264)
  br label %266

266:                                              ; preds = %261, %254
  br label %267

267:                                              ; preds = %266, %249
  br label %268

268:                                              ; preds = %267, %239
  br label %269

269:                                              ; preds = %268, %229
  %270 = mul nuw i64 4, %133
  %271 = trunc i64 %270 to i32
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 7
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = call i32 (i32*, i32, i8*, i32, ...) @UniFormat(i32* %134, i32 %271, i8* bitcast ([8 x i32]* @.str.19 to i8*), i32 %274, i32 %277)
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 5
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %269
  %284 = mul nuw i64 4, %133
  %285 = trunc i64 %284 to i32
  %286 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %287 = call i32 @UniStrCpy(i32* %134, i32 %285, i32* %286)
  br label %310

288:                                              ; preds = %269
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 4
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %288
  %294 = mul nuw i64 4, %133
  %295 = trunc i64 %294 to i32
  %296 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %297 = call i32 @UniStrCpy(i32* %134, i32 %295, i32* %296)
  br label %309

298:                                              ; preds = %288
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 3
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %298
  %304 = mul nuw i64 4, %133
  %305 = trunc i64 %304 to i32
  %306 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %307 = call i32 @UniStrCpy(i32* %134, i32 %305, i32* %306)
  br label %308

308:                                              ; preds = %303, %298
  br label %309

309:                                              ; preds = %308, %293
  br label %310

310:                                              ; preds = %309, %283
  %311 = mul nuw i64 4, %136
  %312 = trunc i64 %311 to i32
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @UniToStr3(i32* %137, i32 %312, i32 %315)
  %317 = mul nuw i64 4, %139
  %318 = trunc i64 %317 to i32
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @UniToStr3(i32* %140, i32 %318, i32 %321)
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %310
  %328 = mul nuw i64 4, %142
  %329 = trunc i64 %328 to i32
  %330 = call i32* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  %331 = call i32 @UniStrCpy(i32* %143, i32 %329, i32* %330)
  br label %337

332:                                              ; preds = %310
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = call i32 @UniToStru(i32* %143, i64 %335)
  br label %337

337:                                              ; preds = %332, %327
  %338 = load i32*, i32** %16, align 8
  %339 = load i32*, i32** %21, align 8
  %340 = call i32 @CtInsert(i32* %338, i32* %125, i32* %143, i32* %339, i32* %128, i32* %131, i32* %134, i32* %137, i32* %140)
  %341 = load i32, i32* %28, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %337
  %344 = load i32*, i32** %21, align 8
  %345 = call i32 @Free(i32* %344)
  br label %346

346:                                              ; preds = %343, %337
  %347 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %347)
  br label %348

348:                                              ; preds = %346
  %349 = load i64, i64* %17, align 8
  %350 = add nsw i64 %349, 1
  store i64 %350, i64* %17, align 8
  br label %112

351:                                              ; preds = %112
  %352 = load i32*, i32** %16, align 8
  %353 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %354 = call i32 @CtFreeEx(i32* %352, %struct.TYPE_19__* %353, i32 1)
  br label %355

355:                                              ; preds = %351
  %356 = call i32 @FreeRpcEnumSession(%struct.TYPE_16__* %13)
  %357 = load i32*, i32** %10, align 8
  %358 = call i32 @FreeParamValueList(i32* %357)
  store i64 0, i64* %5, align 8
  br label %359

359:                                              ; preds = %355, %79, %44, %37
  %360 = load i64, i64* %5, align 8
  ret i64 %360
}

declare dso_local i32* @ParseCommandList(%struct.TYPE_19__*, i8*, i32*, i32*, i32) #1

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @ScGetServerInfo(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @FreeRpcServerInfo(%struct.TYPE_16__*) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScEnumSession(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32* @ZeroMalloc(i32) #1

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32, ...) #1

declare dso_local i64 @StrLen(i32) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #1

declare dso_local i64 @StartWith(i32, i32) #1

declare dso_local i32 @UniToStr3(i32*, i32, i32) #1

declare dso_local i32 @UniToStru(i32*, i64) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFreeEx(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @FreeRpcEnumSession(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
