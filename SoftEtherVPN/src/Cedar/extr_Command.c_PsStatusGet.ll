; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsStatusGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsStatusGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32*)* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"SM_HUB_STATUS_HUBNAME\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"SM_HUB_STATUS_ONLINE\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"SM_HUB_ONLINE\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"SM_HUB_OFFLINE\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"SM_HUB_TYPE\00", align 1
@HUB_TYPE_STANDALONE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"SM_HUB_SECURE_NAT\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"SM_HUB_SECURE_NAT_YES\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"SM_HUB_SECURE_NAT_NO\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"SM_HUB_NUM_SESSIONS\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SM_HUB_NUM_SESSIONS_CLIENT\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"SM_HUB_NUM_SESSIONS_BRIDGE\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"SM_HUB_NUM_ACCESSES\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"SM_HUB_NUM_USERS\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"SM_HUB_NUM_GROUPS\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"SM_HUB_NUM_MAC_TABLES\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"SM_HUB_NUM_IP_TABLES\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"SM_HUB_NUM_LOGIN\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"COMMON_UNKNOWN\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"SM_HUB_LAST_LOGIN_TIME\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"SM_HUB_LAST_COMM_TIME\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"SM_HUB_CREATED_TIME\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsStatusGet(%struct.TYPE_13__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32* @ParseCommandList(%struct.TYPE_13__* %20, i8* %21, i32* %22, i32* null, i32 0)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %27, i64* %5, align 8
  br label %244

28:                                               ; preds = %4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*)** %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 %36(%struct.TYPE_13__* %37, i32* %38)
  %40 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %40, i64* %5, align 8
  br label %244

41:                                               ; preds = %28
  %42 = call i32 @Zero(%struct.TYPE_11__* %13, i32 96)
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 16
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @StrCpy(i32 %44, i32 4, i32* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @ScGetHubStatus(i32 %51, %struct.TYPE_11__* %13)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @ERR_NO_ERROR, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %41
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @CmdPrintError(%struct.TYPE_13__* %57, i64 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @FreeParamValueList(i32* %60)
  %62 = load i64, i64* %12, align 8
  store i64 %62, i64* %5, align 8
  br label %244

63:                                               ; preds = %41
  %64 = call i32* (...) @CtNewStandard()
  store i32* %64, i32** %14, align 8
  %65 = load i32, i32* @MAX_SIZE, align 4
  %66 = zext i32 %65 to i64
  %67 = call i8* @llvm.stacksave()
  store i8* %67, i8** %16, align 8
  %68 = alloca i32, i64 %66, align 16
  store i64 %66, i64* %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 16
  %70 = load i32, i32* %69, align 8
  %71 = call i32* @CopyStrToUni(i32 %70)
  store i32* %71, i32** %15, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32*, i32** %15, align 8
  %75 = call i32 @CtInsert(i32* %72, i32* %73, i32* %74)
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @Free(i32* %76)
  %78 = load i32*, i32** %14, align 8
  %79 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 15
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %63
  %84 = call i32* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %87

85:                                               ; preds = %63
  %86 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32* [ %84, %83 ], [ %86, %85 ]
  %89 = call i32 @CtInsert(i32* %78, i32* %79, i32* %88)
  %90 = load i32*, i32** %14, align 8
  %91 = call i32* @_UU(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32* @GetHubTypeStr(i64 %93)
  %95 = call i32 @CtInsert(i32* %90, i32* %91, i32* %94)
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @HUB_TYPE_STANDALONE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %87
  %101 = load i32*, i32** %14, align 8
  %102 = call i32* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 14
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %110

108:                                              ; preds = %100
  %109 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32* [ %107, %106 ], [ %109, %108 ]
  %112 = call i32 @CtInsert(i32* %101, i32* %102, i32* %111)
  br label %113

113:                                              ; preds = %110, %87
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 13
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @UniToStru(i32* %68, i32 %115)
  %117 = load i32*, i32** %14, align 8
  %118 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %119 = call i32 @CtInsert(i32* %117, i32* %118, i32* %68)
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 12
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 11
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %123, %113
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 12
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @UniToStru(i32* %68, i32 %129)
  %131 = load i32*, i32** %14, align 8
  %132 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %133 = call i32 @CtInsert(i32* %131, i32* %132, i32* %68)
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 11
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @UniToStru(i32* %68, i32 %135)
  %137 = load i32*, i32** %14, align 8
  %138 = call i32* @_UU(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %139 = call i32 @CtInsert(i32* %137, i32* %138, i32* %68)
  br label %140

140:                                              ; preds = %127, %123
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 10
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @UniToStru(i32* %68, i32 %142)
  %144 = load i32*, i32** %14, align 8
  %145 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %146 = call i32 @CtInsert(i32* %144, i32* %145, i32* %68)
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 9
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @UniToStru(i32* %68, i32 %148)
  %150 = load i32*, i32** %14, align 8
  %151 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %152 = call i32 @CtInsert(i32* %150, i32* %151, i32* %68)
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @UniToStru(i32* %68, i32 %154)
  %156 = load i32*, i32** %14, align 8
  %157 = call i32* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %158 = call i32 @CtInsert(i32* %156, i32* %157, i32* %68)
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 7
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @UniToStru(i32* %68, i32 %160)
  %162 = load i32*, i32** %14, align 8
  %163 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %164 = call i32 @CtInsert(i32* %162, i32* %163, i32* %68)
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @UniToStru(i32* %68, i32 %166)
  %168 = load i32*, i32** %14, align 8
  %169 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %170 = call i32 @CtInsert(i32* %168, i32* %169, i32* %68)
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @UniToStru(i32* %68, i32 %172)
  %174 = load i32*, i32** %14, align 8
  %175 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %176 = call i32 @CtInsert(i32* %174, i32* %175, i32* %68)
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %140
  %181 = mul nuw i64 4, %66
  %182 = trunc i64 %181 to i32
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @SystemToLocal64(i64 %184)
  %186 = call i32 @GetDateTimeStr64Uni(i32* %68, i32 %182, i32 %185)
  br label %192

187:                                              ; preds = %140
  %188 = mul nuw i64 4, %66
  %189 = trunc i64 %188 to i32
  %190 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %191 = call i32 @UniStrCpy(i32* %68, i32 %189, i32* %190)
  br label %192

192:                                              ; preds = %187, %180
  %193 = load i32*, i32** %14, align 8
  %194 = call i32* @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %195 = call i32 @CtInsert(i32* %193, i32* %194, i32* %68)
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %192
  %200 = mul nuw i64 4, %66
  %201 = trunc i64 %200 to i32
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @SystemToLocal64(i64 %203)
  %205 = call i32 @GetDateTimeStr64Uni(i32* %68, i32 %201, i32 %204)
  br label %211

206:                                              ; preds = %192
  %207 = mul nuw i64 4, %66
  %208 = trunc i64 %207 to i32
  %209 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %210 = call i32 @UniStrCpy(i32* %68, i32 %208, i32* %209)
  br label %211

211:                                              ; preds = %206, %199
  %212 = load i32*, i32** %14, align 8
  %213 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %214 = call i32 @CtInsert(i32* %212, i32* %213, i32* %68)
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %211
  %219 = mul nuw i64 4, %66
  %220 = trunc i64 %219 to i32
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @SystemToLocal64(i64 %222)
  %224 = call i32 @GetDateTimeStr64Uni(i32* %68, i32 %220, i32 %223)
  br label %230

225:                                              ; preds = %211
  %226 = mul nuw i64 4, %66
  %227 = trunc i64 %226 to i32
  %228 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %229 = call i32 @UniStrCpy(i32* %68, i32 %227, i32* %228)
  br label %230

230:                                              ; preds = %225, %218
  %231 = load i32*, i32** %14, align 8
  %232 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  %233 = call i32 @CtInsert(i32* %231, i32* %232, i32* %68)
  %234 = load i32*, i32** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  %236 = call i32 @CmdInsertTrafficInfo(i32* %234, i32* %235)
  %237 = load i32*, i32** %14, align 8
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %239 = call i32 @CtFree(i32* %237, %struct.TYPE_13__* %238)
  %240 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %240)
  br label %241

241:                                              ; preds = %230
  %242 = load i32*, i32** %10, align 8
  %243 = call i32 @FreeParamValueList(i32* %242)
  store i64 0, i64* %5, align 8
  br label %244

244:                                              ; preds = %241, %56, %33, %26
  %245 = load i64, i64* %5, align 8
  ret i64 %245
}

declare dso_local i32* @ParseCommandList(%struct.TYPE_13__*, i8*, i32*, i32*, i32) #1

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetHubStatus(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNewStandard(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CopyStrToUni(i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32* @GetHubTypeStr(i64) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32 @GetDateTimeStr64Uni(i32*, i32, i32) #1

declare dso_local i32 @SystemToLocal64(i64) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #1

declare dso_local i32 @CmdInsertTrafficInfo(i32*, i32*) #1

declare dso_local i32 @CtFree(i32*, %struct.TYPE_13__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
