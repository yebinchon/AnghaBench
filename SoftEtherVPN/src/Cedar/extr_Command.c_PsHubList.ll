; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsHubList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsHubList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i64, i32, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"SM_HUB_COLUMN_1\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SM_HUB_COLUMN_2\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"SM_HUB_COLUMN_3\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"SM_HUB_COLUMN_4\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"SM_HUB_COLUMN_5\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"SM_HUB_COLUMN_6\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"SM_HUB_COLUMN_7\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"SM_HUB_COLUMN_8\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"SM_HUB_COLUMN_9\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"SM_HUB_COLUMN_10\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"SM_HUB_COLUMN_11\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"SM_SESS_COLUMN_6\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"SM_SESS_COLUMN_7\00", align 1
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"COMMON_UNKNOWN\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"CM_ST_NONE\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"SM_HUB_ONLINE\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"SM_HUB_OFFLINE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsHubList(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [64 x i32], align 16
  %20 = alloca [64 x i32], align 16
  %21 = alloca [64 x i32], align 16
  %22 = alloca [64 x i32], align 16
  %23 = alloca [64 x i32], align 16
  %24 = alloca [64 x i32], align 16
  %25 = alloca [128 x i32], align 16
  %26 = alloca [128 x i32], align 16
  %27 = alloca [64 x i32], align 16
  %28 = alloca [64 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32* @ParseCommandList(i32* %31, i8* %32, i32* %33, i32* null, i32 0)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %38, i64* %5, align 8
  br label %280

39:                                               ; preds = %4
  %40 = call i32 @Zero(%struct.TYPE_14__* %13, i32 16)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ScEnumHub(i32 %43, %struct.TYPE_14__* %13)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @ERR_NO_ERROR, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @CmdPrintError(i32* %49, i64 %50)
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @FreeParamValueList(i32* %52)
  %54 = load i64, i64* %12, align 8
  store i64 %54, i64* %5, align 8
  br label %280

55:                                               ; preds = %39
  %56 = call i32* (...) @CtNew()
  store i32* %56, i32** %15, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 @CtInsertColumn(i32* %57, i32 %58, i32 0)
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @CtInsertColumn(i32* %60, i32 %61, i32 0)
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32 @CtInsertColumn(i32* %63, i32 %64, i32 0)
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i32 @CtInsertColumn(i32* %66, i32 %67, i32 0)
  %69 = load i32*, i32** %15, align 8
  %70 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %71 = call i32 @CtInsertColumn(i32* %69, i32 %70, i32 0)
  %72 = load i32*, i32** %15, align 8
  %73 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %74 = call i32 @CtInsertColumn(i32* %72, i32 %73, i32 0)
  %75 = load i32*, i32** %15, align 8
  %76 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %77 = call i32 @CtInsertColumn(i32* %75, i32 %76, i32 0)
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %80 = call i32 @CtInsertColumn(i32* %78, i32 %79, i32 0)
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %83 = call i32 @CtInsertColumn(i32* %81, i32 %82, i32 0)
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %86 = call i32 @CtInsertColumn(i32* %84, i32 %85, i32 0)
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %89 = call i32 @CtInsertColumn(i32* %87, i32 %88, i32 0)
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %92 = call i32 @CtInsertColumn(i32* %90, i32 %91, i32 0)
  %93 = load i32*, i32** %15, align 8
  %94 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %95 = call i32 @CtInsertColumn(i32* %93, i32 %94, i32 0)
  store i64 0, i64* %14, align 8
  br label %96

96:                                               ; preds = %269, %55
  %97 = load i64, i64* %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %101, label %272

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i64 %104
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %16, align 8
  %106 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %107 = add nsw i32 %106, 1
  %108 = zext i32 %107 to i64
  %109 = call i8* @llvm.stacksave()
  store i8* %109, i8** %17, align 8
  %110 = alloca i32, i64 %108, align 16
  store i64 %108, i64* %18, align 8
  %111 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 0
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @UniToStru(i32* %111, i32 %114)
  %116 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 11
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @UniToStru(i32* %116, i32 %119)
  %121 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 0
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @UniToStru(i32* %121, i32 %124)
  %126 = getelementptr inbounds [64 x i32], [64 x i32]* %22, i64 0, i64 0
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @UniToStru(i32* %126, i32 %129)
  %131 = getelementptr inbounds [64 x i32], [64 x i32]* %23, i64 0, i64 0
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @UniToStru(i32* %131, i32 %134)
  %136 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @UniToStru(i32* %136, i32 %139)
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %101
  %146 = getelementptr inbounds [128 x i32], [128 x i32]* %25, i64 0, i64 0
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @SystemToLocal64(i64 %149)
  %151 = call i32 @GetDateTimeStr64Uni(i32* %146, i32 512, i32 %150)
  br label %156

152:                                              ; preds = %101
  %153 = getelementptr inbounds [128 x i32], [128 x i32]* %25, i64 0, i64 0
  %154 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %155 = call i32 @UniStrCpy(i32* %153, i32 512, i32 %154)
  br label %156

156:                                              ; preds = %152, %145
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = getelementptr inbounds [128 x i32], [128 x i32]* %26, i64 0, i64 0
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @SystemToLocal64(i64 %165)
  %167 = call i32 @GetDateTimeStr64Uni(i32* %162, i32 512, i32 %166)
  br label %172

168:                                              ; preds = %156
  %169 = getelementptr inbounds [128 x i32], [128 x i32]* %26, i64 0, i64 0
  %170 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %171 = call i32 @UniStrCpy(i32* %169, i32 512, i32 %170)
  br label %172

172:                                              ; preds = %168, %161
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %172
  %178 = getelementptr inbounds [64 x i32], [64 x i32]* %27, i64 0, i64 0
  %179 = call i32 @_UU(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %180 = call i32 @UniStrCpy(i32* %178, i32 256, i32 %179)
  %181 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 0
  %182 = call i32 @_UU(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %183 = call i32 @UniStrCpy(i32* %181, i32 256, i32 %182)
  br label %235

184:                                              ; preds = %172
  %185 = getelementptr inbounds [64 x i32], [64 x i32]* %27, i64 0, i64 0
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %190, %195
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 6
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %196, %201
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %202, %207
  %209 = call i32 @UniToStr3(i32* %185, i32 256, i64 %208)
  %210 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 0
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 6
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 6
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %215, %220
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 6
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %221, %226
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 6
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %227, %232
  %234 = call i32 @UniToStr3(i32* %210, i32 256, i64 %233)
  br label %235

235:                                              ; preds = %184, %177
  %236 = mul nuw i64 4, %108
  %237 = trunc i64 %236 to i32
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @StrToUni(i32* %110, i32 %237, i32 %240)
  %242 = load i32*, i32** %15, align 8
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %235
  %248 = call i32 @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  br label %251

249:                                              ; preds = %235
  %250 = call i32 @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  br label %251

251:                                              ; preds = %249, %247
  %252 = phi i32 [ %248, %247 ], [ %250, %249 ]
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @GetHubTypeStr(i32 %255)
  %257 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 0
  %258 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %259 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 0
  %260 = getelementptr inbounds [64 x i32], [64 x i32]* %22, i64 0, i64 0
  %261 = getelementptr inbounds [64 x i32], [64 x i32]* %23, i64 0, i64 0
  %262 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %263 = getelementptr inbounds [128 x i32], [128 x i32]* %25, i64 0, i64 0
  %264 = getelementptr inbounds [128 x i32], [128 x i32]* %26, i64 0, i64 0
  %265 = getelementptr inbounds [64 x i32], [64 x i32]* %27, i64 0, i64 0
  %266 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 0
  %267 = call i32 @CtInsert(i32* %242, i32* %110, i32 %252, i32 %256, i32* %257, i32* %258, i32* %259, i32* %260, i32* %261, i32* %262, i32* %263, i32* %264, i32* %265, i32* %266)
  %268 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %268)
  br label %269

269:                                              ; preds = %251
  %270 = load i64, i64* %14, align 8
  %271 = add nsw i64 %270, 1
  store i64 %271, i64* %14, align 8
  br label %96

272:                                              ; preds = %96
  %273 = load i32*, i32** %15, align 8
  %274 = load i32*, i32** %6, align 8
  %275 = call i32 @CtFreeEx(i32* %273, i32* %274, i32 1)
  br label %276

276:                                              ; preds = %272
  %277 = call i32 @FreeRpcEnumHub(%struct.TYPE_14__* %13)
  %278 = load i32*, i32** %10, align 8
  %279 = call i32 @FreeParamValueList(i32* %278)
  store i64 0, i64* %5, align 8
  br label %280

280:                                              ; preds = %276, %48, %37
  %281 = load i64, i64* %5, align 8
  ret i64 %281
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ScEnumHub(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

declare dso_local i32 @_UU(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32 @GetDateTimeStr64Uni(i32*, i32, i32) #1

declare dso_local i32 @SystemToLocal64(i64) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32) #1

declare dso_local i32 @UniToStr3(i32*, i32, i64) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @GetHubTypeStr(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFreeEx(i32*, i32*, i32) #1

declare dso_local i32 @FreeRpcEnumHub(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
