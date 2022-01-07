; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsNatTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsNatTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i8*)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"NM_NAT_ID\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"NM_NAT_PROTOCOL\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"NM_NAT_SRC_HOST\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"NM_NAT_SRC_PORT\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"NM_NAT_DST_HOST\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"NM_NAT_DST_PORT\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"NM_NAT_CREATED\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"NM_NAT_LAST_COMM\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"NM_NAT_SIZE\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"NM_NAT_TCP_STATUS\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"NM_NAT_PROTO_TCP\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"NM_NAT_PROTO_UDP\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"NM_NAT_PROTO_DNS\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"NM_NAT_PROTO_ICMP\00", align 1
@.str.16 = private unnamed_addr constant [8 x i32] [i32 37, i32 83, i32 32, i32 47, i32 32, i32 37, i32 83, i32 0], align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"NAT_TCP_CONNECTING\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"NAT_TCP_SEND_RESET\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"NAT_TCP_CONNECTED\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"NAT_TCP_ESTABLISHED\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"NAT_TCP_WAIT_DISCONNECT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsNatTable(%struct.TYPE_16__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca [128 x i8], align 16
  %29 = alloca [128 x i8], align 16
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_16__*, i8*)*, i32 (%struct.TYPE_16__*, i8*)** %38, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 %39(%struct.TYPE_16__* %40, i8* %41)
  %43 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %43, i64* %5, align 8
  br label %238

44:                                               ; preds = %4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32* @ParseCommandList(%struct.TYPE_16__* %45, i8* %46, i8* %47, i32* null, i32 0)
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %52, i64* %5, align 8
  br label %238

53:                                               ; preds = %44
  %54 = call i32 @Zero(%struct.TYPE_14__* %13, i32 24)
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @StrCpy(i32 %56, i32 4, i32* %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @ScEnumNAT(i32 %63, %struct.TYPE_14__* %13)
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @ERR_NO_ERROR, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %53
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @CmdPrintError(%struct.TYPE_16__* %69, i64 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @FreeParamValueList(i32* %72)
  %74 = load i64, i64* %12, align 8
  store i64 %74, i64* %5, align 8
  br label %238

75:                                               ; preds = %53
  %76 = call i32* (...) @CtNew()
  store i32* %76, i32** %14, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = call i8* @_UU(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %79 = call i32 @CtInsertColumn(i32* %77, i8* %78, i32 0)
  %80 = load i32*, i32** %14, align 8
  %81 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i32 @CtInsertColumn(i32* %80, i8* %81, i32 0)
  %83 = load i32*, i32** %14, align 8
  %84 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %85 = call i32 @CtInsertColumn(i32* %83, i8* %84, i32 0)
  %86 = load i32*, i32** %14, align 8
  %87 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %88 = call i32 @CtInsertColumn(i32* %86, i8* %87, i32 0)
  %89 = load i32*, i32** %14, align 8
  %90 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %91 = call i32 @CtInsertColumn(i32* %89, i8* %90, i32 0)
  %92 = load i32*, i32** %14, align 8
  %93 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %94 = call i32 @CtInsertColumn(i32* %92, i8* %93, i32 0)
  %95 = load i32*, i32** %14, align 8
  %96 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %97 = call i32 @CtInsertColumn(i32* %95, i8* %96, i32 0)
  %98 = load i32*, i32** %14, align 8
  %99 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %100 = call i32 @CtInsertColumn(i32* %98, i8* %99, i32 0)
  %101 = load i32*, i32** %14, align 8
  %102 = call i8* @_UU(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %103 = call i32 @CtInsertColumn(i32* %101, i8* %102, i32 0)
  %104 = load i32*, i32** %14, align 8
  %105 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %106 = call i32 @CtInsertColumn(i32* %104, i8* %105, i32 0)
  store i64 0, i64* %15, align 8
  br label %107

107:                                              ; preds = %227, %75
  %108 = load i64, i64* %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %112, label %230

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = load i64, i64* %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i64 %115
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %16, align 8
  %117 = load i32, i32* @MAX_SIZE, align 4
  %118 = zext i32 %117 to i64
  %119 = call i8* @llvm.stacksave()
  store i8* %119, i8** %17, align 8
  %120 = alloca i8, i64 %118, align 16
  store i64 %118, i64* %18, align 8
  store i8* bitcast ([1 x i32]* @.str.11 to i8*), i8** %19, align 8
  %121 = load i32, i32* @MAX_SIZE, align 4
  %122 = zext i32 %121 to i64
  %123 = alloca i8, i64 %122, align 16
  store i64 %122, i64* %20, align 8
  %124 = load i32, i32* @MAX_SIZE, align 4
  %125 = zext i32 %124 to i64
  %126 = alloca i8, i64 %125, align 16
  store i64 %125, i64* %21, align 8
  %127 = load i32, i32* @MAX_SIZE, align 4
  %128 = zext i32 %127 to i64
  %129 = alloca i8, i64 %128, align 16
  store i64 %128, i64* %22, align 8
  %130 = load i32, i32* @MAX_SIZE, align 4
  %131 = zext i32 %130 to i64
  %132 = alloca i8, i64 %131, align 16
  store i64 %131, i64* %23, align 8
  %133 = load i32, i32* @MAX_SIZE, align 4
  %134 = zext i32 %133 to i64
  %135 = alloca i8, i64 %134, align 16
  store i64 %134, i64* %24, align 8
  %136 = load i32, i32* @MAX_SIZE, align 4
  %137 = zext i32 %136 to i64
  %138 = alloca i8, i64 %137, align 16
  store i64 %137, i64* %25, align 8
  %139 = load i32, i32* @MAX_SIZE, align 4
  %140 = zext i32 %139 to i64
  %141 = alloca i8, i64 %140, align 16
  store i64 %140, i64* %26, align 8
  store i8* bitcast ([1 x i32]* @.str.11 to i8*), i8** %27, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 10
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @UniToStru(i8* %120, i32 %144)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  switch i32 %148, label %157 [
    i32 134, label %149
    i32 128, label %151
    i32 136, label %153
    i32 135, label %155
  ]

149:                                              ; preds = %112
  %150 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  store i8* %150, i8** %19, align 8
  br label %157

151:                                              ; preds = %112
  %152 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  store i8* %152, i8** %19, align 8
  br label %157

153:                                              ; preds = %112
  %154 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  store i8* %154, i8** %19, align 8
  br label %157

155:                                              ; preds = %112
  %156 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  store i8* %156, i8** %19, align 8
  br label %157

157:                                              ; preds = %112, %155, %153, %151, %149
  %158 = trunc i64 %122 to i32
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @StrToUni(i8* %123, i32 %158, i32 %161)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @UniToStru(i8* %126, i32 %165)
  %167 = trunc i64 %128 to i32
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @StrToUni(i8* %129, i32 %167, i32 %170)
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @UniToStru(i8* %132, i32 %174)
  %176 = trunc i64 %134 to i32
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @SystemToLocal64(i32 %179)
  %181 = call i32 @GetDateTimeStrEx64(i8* %135, i32 %176, i32 %180, i32* null)
  %182 = trunc i64 %137 to i32
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @SystemToLocal64(i32 %185)
  %187 = call i32 @GetDateTimeStrEx64(i8* %138, i32 %182, i32 %186, i32* null)
  %188 = getelementptr inbounds [128 x i8], [128 x i8]* %28, i64 0, i64 0
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ToStr3(i8* %188, i32 128, i32 %191)
  %193 = getelementptr inbounds [128 x i8], [128 x i8]* %29, i64 0, i64 0
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @ToStr3(i8* %193, i32 128, i32 %196)
  %198 = trunc i64 %140 to i32
  %199 = getelementptr inbounds [128 x i8], [128 x i8]* %28, i64 0, i64 0
  %200 = getelementptr inbounds [128 x i8], [128 x i8]* %29, i64 0, i64 0
  %201 = call i32 @UniFormat(i8* %141, i32 %198, i8* bitcast ([8 x i32]* @.str.16 to i8*), i8* %199, i8* %200)
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 134
  br i1 %205, label %206, label %221

206:                                              ; preds = %157
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  switch i32 %209, label %220 [
    i32 132, label %210
    i32 130, label %212
    i32 133, label %214
    i32 131, label %216
    i32 129, label %218
  ]

210:                                              ; preds = %206
  %211 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  store i8* %211, i8** %27, align 8
  br label %220

212:                                              ; preds = %206
  %213 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  store i8* %213, i8** %27, align 8
  br label %220

214:                                              ; preds = %206
  %215 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  store i8* %215, i8** %27, align 8
  br label %220

216:                                              ; preds = %206
  %217 = call i8* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  store i8* %217, i8** %27, align 8
  br label %220

218:                                              ; preds = %206
  %219 = call i8* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  store i8* %219, i8** %27, align 8
  br label %220

220:                                              ; preds = %206, %218, %216, %214, %212, %210
  br label %221

221:                                              ; preds = %220, %157
  %222 = load i32*, i32** %14, align 8
  %223 = load i8*, i8** %19, align 8
  %224 = load i8*, i8** %27, align 8
  %225 = call i32 @CtInsert(i32* %222, i8* %120, i8* %223, i8* %123, i8* %126, i8* %129, i8* %132, i8* %135, i8* %138, i8* %141, i8* %224)
  %226 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %226)
  br label %227

227:                                              ; preds = %221
  %228 = load i64, i64* %15, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %15, align 8
  br label %107

230:                                              ; preds = %107
  %231 = load i32*, i32** %14, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %233 = call i32 @CtFreeEx(i32* %231, %struct.TYPE_16__* %232, i32 1)
  br label %234

234:                                              ; preds = %230
  %235 = call i32 @FreeRpcEnumNat(%struct.TYPE_14__* %13)
  %236 = load i32*, i32** %10, align 8
  %237 = call i32 @FreeParamValueList(i32* %236)
  store i64 0, i64* %5, align 8
  br label %238

238:                                              ; preds = %234, %68, %51, %36
  %239 = load i64, i64* %5, align 8
  ret i64 %239
}

declare dso_local i8* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScEnumNAT(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniToStru(i8*, i32) #1

declare dso_local i32 @StrToUni(i8*, i32, i32) #1

declare dso_local i32 @GetDateTimeStrEx64(i8*, i32, i32, i32*) #1

declare dso_local i32 @SystemToLocal64(i32) #1

declare dso_local i32 @ToStr3(i8*, i32, i32) #1

declare dso_local i32 @UniFormat(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @CtInsert(i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFreeEx(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @FreeRpcEnumNat(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
