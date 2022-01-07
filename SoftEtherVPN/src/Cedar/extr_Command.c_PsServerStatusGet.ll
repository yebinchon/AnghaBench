; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerStatusGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsServerStatusGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i8*, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"SM_STATUS_COLUMN_1\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SM_STATUS_COLUMN_2\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SM_ST_SERVER_TYPE\00", align 1
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"SM_SERVER_STANDALONE\00", align 1
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"SM_FARM_MEMBER\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"SM_FARM_CONTROLLER\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"SM_ST_NUM_TCP\00", align 1
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"SM_ST_NUM_TCP_LOCAL\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"SM_ST_NUM_TCP_REMOTE\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"SM_ST_NUM_HUB_TOTAL\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"SM_ST_NUM_HUB_STATIC\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"SM_ST_NUM_HUB_DYNAMIC\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"SM_ST_NUM_SESSION_TOTAL\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"SM_ST_NUM_SESSION_LOCAL\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"SM_ST_NUM_SESSION_REMOTE\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"SM_ST_NUM_MAC_TABLE\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"SM_ST_NUM_IP_TABLE\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"SM_ST_NUM_USERS\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"SM_ST_NUM_GROUPS\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"SM_ST_CLIENT_LICENSE\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"SM_ST_BRIDGE_LICENSE\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"SM_ST_CLIENT_LICENSE_EX\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"SM_ST_BRIDGE_LICENSE_EX\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"SM_ST_START_TIME\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"SM_ST_CURRENT_TIME\00", align 1
@.str.25 = private unnamed_addr constant [6 x i32] [i32 37, i32 73, i32 54, i32 52, i32 117, i32 0], align 4
@.str.26 = private unnamed_addr constant [19 x i8] c"SM_ST_CURRENT_TICK\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"SM_ST_RAM_SIZE_KB\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"SM_ST_TOTAL_MEMORY\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"SM_ST_USED_MEMORY\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"SM_ST_FREE_MEMORY\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"SM_ST_TOTAL_PHYS\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"SM_ST_USED_PHYS\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"SM_ST_FREE_PHYS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsServerStatusGet(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [128 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %11, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32* @ParseCommandList(i32* %29, i8* %30, i8* %31, i32* null, i32 0)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %36, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %320

37:                                               ; preds = %4
  %38 = call i32 @Zero(%struct.TYPE_7__* %13, i32 144)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ScGetServerStatus(i32 %41, %struct.TYPE_7__* %13)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @ERR_NO_ERROR, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @CmdPrintError(i32* %47, i64 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @FreeParamValueList(i32* %50)
  %52 = load i64, i64* %12, align 8
  store i64 %52, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %320

53:                                               ; preds = %37
  %54 = call i32* (...) @CtNew()
  store i32* %54, i32** %17, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @CtInsertColumn(i32* %55, i8* %56, i32 0)
  %58 = load i32*, i32** %17, align 8
  %59 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @CtInsertColumn(i32* %58, i8* %59, i32 0)
  %61 = load i32*, i32** %17, align 8
  %62 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %80

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %78

76:                                               ; preds = %69
  %77 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i8* [ %75, %74 ], [ %77, %76 ]
  br label %80

80:                                               ; preds = %78, %67
  %81 = phi i8* [ %68, %67 ], [ %79, %78 ]
  %82 = call i32 @CtInsert(i32* %61, i8* %62, i8* %81)
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 22
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @UniToStru(i8* %25, i32 %84)
  %86 = load i32*, i32** %17, align 8
  %87 = call i8* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %88 = call i32 @CtInsert(i32* %86, i8* %87, i8* %25)
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %80
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 21
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @UniToStru(i8* %25, i32 %95)
  %97 = load i32*, i32** %17, align 8
  %98 = call i8* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %99 = call i32 @CtInsert(i32* %97, i8* %98, i8* %25)
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 20
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @UniToStru(i8* %25, i32 %101)
  %103 = load i32*, i32** %17, align 8
  %104 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %105 = call i32 @CtInsert(i32* %103, i8* %104, i8* %25)
  br label %106

106:                                              ; preds = %93, %80
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 19
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @UniToStru(i8* %25, i32 %108)
  %110 = load i32*, i32** %17, align 8
  %111 = call i8* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %112 = call i32 @CtInsert(i32* %110, i8* %111, i8* %25)
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 18
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @UniToStru(i8* %25, i32 %119)
  %121 = load i32*, i32** %17, align 8
  %122 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %123 = call i32 @CtInsert(i32* %121, i8* %122, i8* %25)
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 17
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @UniToStru(i8* %25, i32 %125)
  %127 = load i32*, i32** %17, align 8
  %128 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %129 = call i32 @CtInsert(i32* %127, i8* %128, i8* %25)
  br label %130

130:                                              ; preds = %117, %106
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 16
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @UniToStru(i8* %25, i32 %132)
  %134 = load i32*, i32** %17, align 8
  %135 = call i8* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %136 = call i32 @CtInsert(i32* %134, i8* %135, i8* %25)
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %130
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 15
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @UniToStru(i8* %25, i32 %143)
  %145 = load i32*, i32** %17, align 8
  %146 = call i8* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %147 = call i32 @CtInsert(i32* %145, i8* %146, i8* %25)
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 14
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @UniToStru(i8* %25, i32 %149)
  %151 = load i32*, i32** %17, align 8
  %152 = call i8* @_UU(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %153 = call i32 @CtInsert(i32* %151, i8* %152, i8* %25)
  br label %154

154:                                              ; preds = %141, %130
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 13
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @UniToStru(i8* %25, i32 %156)
  %158 = load i32*, i32** %17, align 8
  %159 = call i8* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %160 = call i32 @CtInsert(i32* %158, i8* %159, i8* %25)
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 12
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @UniToStru(i8* %25, i32 %162)
  %164 = load i32*, i32** %17, align 8
  %165 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %166 = call i32 @CtInsert(i32* %164, i8* %165, i8* %25)
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 11
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @UniToStru(i8* %25, i32 %168)
  %170 = load i32*, i32** %17, align 8
  %171 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %172 = call i32 @CtInsert(i32* %170, i8* %171, i8* %25)
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @UniToStru(i8* %25, i32 %174)
  %176 = load i32*, i32** %17, align 8
  %177 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %178 = call i32 @CtInsert(i32* %176, i8* %177, i8* %25)
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 9
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @UniToStru(i8* %25, i32 %180)
  %182 = load i32*, i32** %17, align 8
  %183 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %184 = call i32 @CtInsert(i32* %182, i8* %183, i8* %25)
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 8
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @UniToStru(i8* %25, i32 %186)
  %188 = load i32*, i32** %17, align 8
  %189 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  %190 = call i32 @CtInsert(i32* %188, i8* %189, i8* %25)
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %208

195:                                              ; preds = %154
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @UniToStru(i8* %25, i32 %197)
  %199 = load i32*, i32** %17, align 8
  %200 = call i8* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  %201 = call i32 @CtInsert(i32* %199, i8* %200, i8* %25)
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 6
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @UniToStru(i8* %25, i32 %203)
  %205 = load i32*, i32** %17, align 8
  %206 = call i8* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %207 = call i32 @CtInsert(i32* %205, i8* %206, i8* %25)
  br label %208

208:                                              ; preds = %195, %154
  %209 = load i32*, i32** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 5
  %211 = call i32 @CmdInsertTrafficInfo(i32* %209, i32* %210)
  %212 = trunc i64 %23 to i32
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @SystemToLocal64(i32 %214)
  %216 = call i32 @GetDateTimeStrEx64(i8* %25, i32 %212, i32 %215, i32* null)
  %217 = load i32*, i32** %17, align 8
  %218 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  %219 = call i32 @CtInsert(i32* %217, i8* %218, i8* %25)
  %220 = trunc i64 %27 to i32
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @SystemToLocal64(i32 %222)
  %224 = call i32 @GetDateTimeStrMilli64(i8* %28, i32 %220, i32 %223)
  %225 = trunc i64 %23 to i32
  %226 = call i32 @StrToUni(i8* %25, i32 %225, i8* %28)
  %227 = load i32*, i32** %17, align 8
  %228 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %229 = call i32 @CtInsert(i32* %227, i8* %228, i8* %25)
  %230 = trunc i64 %23 to i32
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @UniFormat(i8* %25, i32 %230, i8* bitcast ([6 x i32]* @.str.25 to i8*), i8* %232)
  %234 = load i32*, i32** %17, align 8
  %235 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  %236 = call i32 @CtInsert(i32* %234, i8* %235, i8* %25)
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %314

241:                                              ; preds = %208
  %242 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @ToStr3(i8* %242, i32 128, i64 %245)
  %247 = trunc i64 %23 to i32
  %248 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %249 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %250 = call i32 @UniFormat(i8* %25, i32 %247, i8* %248, i8* %249)
  %251 = load i32*, i32** %17, align 8
  %252 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %253 = call i32 @CtInsert(i32* %251, i8* %252, i8* %25)
  %254 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @ToStr3(i8* %254, i32 128, i64 %257)
  %259 = trunc i64 %23 to i32
  %260 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %261 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %262 = call i32 @UniFormat(i8* %25, i32 %259, i8* %260, i8* %261)
  %263 = load i32*, i32** %17, align 8
  %264 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  %265 = call i32 @CtInsert(i32* %263, i8* %264, i8* %25)
  %266 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @ToStr3(i8* %266, i32 128, i64 %269)
  %271 = trunc i64 %23 to i32
  %272 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %273 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %274 = call i32 @UniFormat(i8* %25, i32 %271, i8* %272, i8* %273)
  %275 = load i32*, i32** %17, align 8
  %276 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  %277 = call i32 @CtInsert(i32* %275, i8* %276, i8* %25)
  %278 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = call i32 @ToStr3(i8* %278, i32 128, i64 %281)
  %283 = trunc i64 %23 to i32
  %284 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %285 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %286 = call i32 @UniFormat(i8* %25, i32 %283, i8* %284, i8* %285)
  %287 = load i32*, i32** %17, align 8
  %288 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0))
  %289 = call i32 @CtInsert(i32* %287, i8* %288, i8* %25)
  %290 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 4
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @ToStr3(i8* %290, i32 128, i64 %293)
  %295 = trunc i64 %23 to i32
  %296 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %297 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %298 = call i32 @UniFormat(i8* %25, i32 %295, i8* %296, i8* %297)
  %299 = load i32*, i32** %17, align 8
  %300 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  %301 = call i32 @CtInsert(i32* %299, i8* %300, i8* %25)
  %302 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 5
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @ToStr3(i8* %302, i32 128, i64 %305)
  %307 = trunc i64 %23 to i32
  %308 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %309 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %310 = call i32 @UniFormat(i8* %25, i32 %307, i8* %308, i8* %309)
  %311 = load i32*, i32** %17, align 8
  %312 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0))
  %313 = call i32 @CtInsert(i32* %311, i8* %312, i8* %25)
  br label %314

314:                                              ; preds = %241, %208
  %315 = load i32*, i32** %17, align 8
  %316 = load i32*, i32** %6, align 8
  %317 = call i32 @CtFree(i32* %315, i32* %316)
  %318 = load i32*, i32** %10, align 8
  %319 = call i32 @FreeParamValueList(i32* %318)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %320

320:                                              ; preds = %314, %46, %35
  %321 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %321)
  %322 = load i64, i64* %5, align 8
  ret i64 %322
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i8*, i32*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #2

declare dso_local i64 @ScGetServerStatus(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #2

declare dso_local i32 @FreeParamValueList(i32*) #2

declare dso_local i32* @CtNew(...) #2

declare dso_local i32 @CtInsertColumn(i32*, i8*, i32) #2

declare dso_local i8* @_UU(i8*) #2

declare dso_local i32 @CtInsert(i32*, i8*, i8*) #2

declare dso_local i32 @UniToStru(i8*, i32) #2

declare dso_local i32 @CmdInsertTrafficInfo(i32*, i32*) #2

declare dso_local i32 @GetDateTimeStrEx64(i8*, i32, i32, i32*) #2

declare dso_local i32 @SystemToLocal64(i32) #2

declare dso_local i32 @GetDateTimeStrMilli64(i8*, i32, i32) #2

declare dso_local i32 @StrToUni(i8*, i32, i8*) #2

declare dso_local i32 @UniFormat(i8*, i32, i8*, i8*) #2

declare dso_local i32 @ToStr3(i8*, i32, i64) #2

declare dso_local i32 @CtFree(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
