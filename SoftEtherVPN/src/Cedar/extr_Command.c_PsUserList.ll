; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsUserList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*, i32)* }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_18__, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"SM_USER_COLUMN_1\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SM_USER_COLUMN_2\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SM_USER_COLUMN_3\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SM_USER_COLUMN_4\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"SM_USER_COLUMN_5\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"SM_USER_COLUMN_6\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"SM_USER_COLUMN_7\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"SM_LICENSE_COLUMN_5\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"SM_SESS_COLUMN_6\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"SM_SESS_COLUMN_7\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"SM_NO_GROUP\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"CM_ST_NONE\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"SM_LICENSE_NO_EXPIRES\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsUserList(%struct.TYPE_22__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca [64 x i32], align 16
  %24 = alloca [64 x i32], align 16
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %11, align 8
  store i64 0, i64* %12, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %33, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %36 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 %34(%struct.TYPE_22__* %35, i32 %36)
  %38 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %38, i64* %5, align 8
  br label %281

39:                                               ; preds = %4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32* @ParseCommandList(%struct.TYPE_22__* %40, i8* %41, i32* %42, i32* null, i32 0)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %47, i64* %5, align 8
  br label %281

48:                                               ; preds = %39
  %49 = call i32 @Zero(%struct.TYPE_20__* %13, i32 24)
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @StrCpy(i32 %51, i32 4, i32* %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @ScEnumUser(i32 %58, %struct.TYPE_20__* %13)
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* @ERR_NO_ERROR, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %48
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @CmdPrintError(%struct.TYPE_22__* %64, i64 %65)
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @FreeParamValueList(i32* %67)
  %69 = load i64, i64* %12, align 8
  store i64 %69, i64* %5, align 8
  br label %281

70:                                               ; preds = %48
  %71 = call i32* (...) @CtNew()
  store i32* %71, i32** %15, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 @CtInsertColumn(i32* %72, i32 %73, i32 0)
  %75 = load i32*, i32** %15, align 8
  %76 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i32 @CtInsertColumn(i32* %75, i32 %76, i32 0)
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @CtInsertColumn(i32* %78, i32 %79, i32 0)
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %83 = call i32 @CtInsertColumn(i32* %81, i32 %82, i32 0)
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %86 = call i32 @CtInsertColumn(i32* %84, i32 %85, i32 0)
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %89 = call i32 @CtInsertColumn(i32* %87, i32 %88, i32 0)
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %92 = call i32 @CtInsertColumn(i32* %90, i32 %91, i32 0)
  %93 = load i32*, i32** %15, align 8
  %94 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %95 = call i32 @CtInsertColumn(i32* %93, i32 %94, i32 0)
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %98 = call i32 @CtInsertColumn(i32* %96, i32 %97, i32 0)
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %101 = call i32 @CtInsertColumn(i32* %99, i32 %100, i32 0)
  store i64 0, i64* %14, align 8
  br label %102

102:                                              ; preds = %270, %70
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %103, %105
  br i1 %106, label %107, label %273

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = load i64, i64* %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i64 %110
  store %struct.TYPE_19__* %111, %struct.TYPE_19__** %16, align 8
  %112 = load i32, i32* @MAX_SIZE, align 4
  %113 = zext i32 %112 to i64
  %114 = call i8* @llvm.stacksave()
  store i8* %114, i8** %17, align 8
  %115 = alloca i32, i64 %113, align 16
  store i64 %113, i64* %18, align 8
  %116 = load i32, i32* @MAX_SIZE, align 4
  %117 = zext i32 %116 to i64
  %118 = alloca i32, i64 %117, align 16
  store i64 %117, i64* %19, align 8
  %119 = load i32, i32* @MAX_SIZE, align 4
  %120 = zext i32 %119 to i64
  %121 = alloca i32, i64 %120, align 16
  store i64 %120, i64* %20, align 8
  %122 = load i32, i32* @MAX_SIZE, align 4
  %123 = zext i32 %122 to i64
  %124 = alloca i32, i64 %123, align 16
  store i64 %123, i64* %21, align 8
  %125 = load i32, i32* @MAX_SIZE, align 4
  %126 = zext i32 %125 to i64
  %127 = alloca i32, i64 %126, align 16
  store i64 %126, i64* %22, align 8
  %128 = mul nuw i64 4, %113
  %129 = trunc i64 %128 to i32
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 10
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @StrToUni(i32* %115, i32 %129, i32 %132)
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @StrLen(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %107
  %140 = mul nuw i64 4, %117
  %141 = trunc i64 %140 to i32
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @StrToUni(i32* %118, i32 %141, i32 %144)
  br label %151

146:                                              ; preds = %107
  %147 = mul nuw i64 4, %117
  %148 = trunc i64 %147 to i32
  %149 = call i32 @_UU(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %150 = call i32 @UniStrCpy(i32* %118, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %146, %139
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @UniToStru(i32* %121, i32 %154)
  %156 = mul nuw i64 4, %123
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @SystemToLocal64(i64 %160)
  %162 = call i32 @GetDateTimeStrEx64(i32* %124, i32 %157, i32 %161, i32* null)
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %151
  %168 = mul nuw i64 4, %126
  %169 = trunc i64 %168 to i32
  %170 = call i32 @_UU(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %171 = call i32 @UniStrCpy(i32* %127, i32 %169, i32 %170)
  br label %191

172:                                              ; preds = %151
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = mul nuw i64 4, %126
  %179 = trunc i64 %178 to i32
  %180 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %181 = call i32 @UniStrCpy(i32* %127, i32 %179, i32 %180)
  br label %190

182:                                              ; preds = %172
  %183 = mul nuw i64 4, %126
  %184 = trunc i64 %183 to i32
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @SystemToLocal64(i64 %187)
  %189 = call i32 @GetDateTimeStrEx64(i32* %127, i32 %184, i32 %188, i32* null)
  br label %190

190:                                              ; preds = %182, %177
  br label %191

191:                                              ; preds = %190, %167
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %191
  %197 = getelementptr inbounds [64 x i32], [64 x i32]* %23, i64 0, i64 0
  %198 = call i32 @_UU(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %199 = call i32 @UniStrCpy(i32* %197, i32 256, i32 %198)
  %200 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %201 = call i32 @_UU(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %202 = call i32 @UniStrCpy(i32* %200, i32 256, i32 %201)
  br label %254

203:                                              ; preds = %191
  %204 = getelementptr inbounds [64 x i32], [64 x i32]* %23, i64 0, i64 0
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 7
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %209, %214
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 7
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %215, %220
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 7
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %221, %226
  %228 = call i32 @UniToStr3(i32* %204, i32 256, i64 %227)
  %229 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 7
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 7
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %234, %239
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 7
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %240, %245
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 7
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %246, %251
  %253 = call i32 @UniToStr3(i32* %229, i32 256, i64 %252)
  br label %254

254:                                              ; preds = %203, %196
  %255 = load i32*, i32** %15, align 8
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @GetAuthTypeStr(i32 %264)
  %266 = getelementptr inbounds [64 x i32], [64 x i32]* %23, i64 0, i64 0
  %267 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %268 = call i32 @CtInsert(i32* %255, i32* %115, i32 %258, i32* %118, i32 %261, i32 %265, i32* %121, i32* %124, i32* %127, i32* %266, i32* %267)
  %269 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %269)
  br label %270

270:                                              ; preds = %254
  %271 = load i64, i64* %14, align 8
  %272 = add nsw i64 %271, 1
  store i64 %272, i64* %14, align 8
  br label %102

273:                                              ; preds = %102
  %274 = load i32*, i32** %15, align 8
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %276 = call i32 @CtFreeEx(i32* %274, %struct.TYPE_22__* %275, i32 1)
  br label %277

277:                                              ; preds = %273
  %278 = call i32 @FreeRpcEnumUser(%struct.TYPE_20__* %13)
  %279 = load i32*, i32** %10, align 8
  %280 = call i32 @FreeParamValueList(i32* %279)
  store i64 0, i64* %5, align 8
  br label %281

281:                                              ; preds = %277, %63, %46, %31
  %282 = load i64, i64* %5, align 8
  ret i64 %282
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_22__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScEnumUser(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i64 @StrLen(i32) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32 @GetDateTimeStrEx64(i32*, i32, i32, i32*) #1

declare dso_local i32 @SystemToLocal64(i64) #1

declare dso_local i32 @UniToStr3(i32*, i32, i64) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @GetAuthTypeStr(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFreeEx(i32*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @FreeRpcEnumUser(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
