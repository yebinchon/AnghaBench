; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminAccept.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminAccept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_26__*, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_27__ = type { i32, i8*, i32*, %struct.TYPE_24__*, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i8* }

@SHA1_SIZE = common dso_local global i32 0, align 4
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"accept_empty_password\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"hubname\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"LA_IP_DENIED\00", align 1
@ERR_IP_ADDRESS_DENIED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"secure_password\00", align 1
@ERR_PROTOCOL_ERROR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"LA_CONNECTED_1\00", align 1
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"LA_CONNECTED_2\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"LA_ERROR\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"LA_OK\00", align 1
@ERR_NULL_PASSWORD_LOCAL_ONLY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"empty_password\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@AdminDispatch = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"LA_RPC_START\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AdminAccept(%struct.TYPE_25__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = load i32, i32* @SHA1_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = load i32, i32* @SHA1_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %28 = load i32, i32* @SHA1_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %31 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %11, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %16, align 8
  store i32 0, i32* %19, align 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %36 = icmp eq %struct.TYPE_25__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i32*, i32** %5, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %2
  %41 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %41, i64* %3, align 8
  store i32 1, i32* %20, align 4
  br label %261

42:                                               ; preds = %37
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %44, align 8
  store %struct.TYPE_26__* %45, %struct.TYPE_26__** %12, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %47, align 8
  store %struct.TYPE_22__* %48, %struct.TYPE_22__** %13, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %50 = icmp ne %struct.TYPE_26__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %53, align 8
  store %struct.TYPE_23__* %54, %struct.TYPE_23__** %16, align 8
  br label %55

55:                                               ; preds = %51, %42
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @PackGetBool(i32* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %57, i32* %18, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @InRpcWinVer(i32* %17, i32* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = trunc i64 %33 to i32
  %62 = call i32 @PackGetStr(i32* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = trunc i64 %33 to i32
  %66 = call i32 @StrCpy(i8* %34, i32 %65, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %55
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %69 = call i32 @CheckAdminSourceAddress(%struct.TYPE_22__* %68, i8* %34)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %73, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (%struct.TYPE_26__*, i8*, i32, ...) @SLog(%struct.TYPE_26__* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i64, i64* @ERR_IP_ADDRESS_DENIED, align 8
  store i64 %79, i64* %3, align 8
  store i32 1, i32* %20, align 4
  br label %261

80:                                               ; preds = %67
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @PackGetDataSize(i32* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* @SHA1_SIZE, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i64, i64* @ERR_PROTOCOL_ERROR, align 8
  store i64 %86, i64* %3, align 8
  store i32 1, i32* %20, align 4
  br label %261

87:                                               ; preds = %80
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @PackGetData(i32* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %24)
  %90 = call i64 @StrLen(i8* %34)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %94, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct.TYPE_26__*, i8*, i32, ...) @SLog(%struct.TYPE_26__* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  br label %119

100:                                              ; preds = %87
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %102 = icmp ne %struct.TYPE_23__* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i64, i64* @ERR_NOT_ENOUGH_RIGHT, align 8
  store i64 %110, i64* %3, align 8
  store i32 1, i32* %20, align 4
  br label %261

111:                                              ; preds = %103, %100
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %113, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (%struct.TYPE_26__*, i8*, i32, ...) @SLog(%struct.TYPE_26__* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %117, i8* %34)
  br label %119

119:                                              ; preds = %111, %92
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @StrLen(i8* %34)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %128

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %126
  %129 = phi i8* [ %34, %126 ], [ null, %127 ]
  %130 = load i32, i32* %18, align 4
  %131 = call i64 @AdminCheckPassword(%struct.TYPE_26__* %120, i32 %123, i32* %24, i8* %129, i32 %130, i32* %19)
  store i64 %131, i64* %15, align 8
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* @ERR_NO_ERROR, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %128
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %137, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i64, i64* %15, align 8
  %143 = call i32 @GetUniErrorStr(i64 %142)
  %144 = load i64, i64* %15, align 8
  %145 = call i32 (%struct.TYPE_26__*, i8*, i32, ...) @SLog(%struct.TYPE_26__* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %141, i32 %143, i64 %144)
  %146 = load i64, i64* %15, align 8
  store i64 %146, i64* %3, align 8
  store i32 1, i32* %20, align 4
  br label %261

147:                                              ; preds = %128
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %149, align 8
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (%struct.TYPE_26__*, i8*, i32, ...) @SLog(%struct.TYPE_26__* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %153)
  %155 = call i32 @HashAdminPassword(i32* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @SecurePassword(i32* %30, i32* %27, i32 %158)
  %160 = load i32, i32* @SHA1_SIZE, align 4
  %161 = call i64 @Cmp(i32* %30, i32* %24, i32 %160)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %147
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 127
  br i1 %170, label %171, label %177

171:                                              ; preds = %163
  %172 = call i64 @StrLen(i8* %34)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i64, i64* @ERR_NULL_PASSWORD_LOCAL_ONLY, align 8
  store i64 %175, i64* %3, align 8
  store i32 1, i32* %20, align 4
  br label %261

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %176, %163
  br label %178

178:                                              ; preds = %177, %147
  %179 = call i32* (...) @NewPack()
  store i32* %179, i32** %5, align 8
  %180 = load i32, i32* %18, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  %183 = load i32, i32* %19, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32*, i32** %5, align 8
  %187 = call i32 @PackAddBool(i32* %186, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 1)
  br label %188

188:                                              ; preds = %185, %182, %178
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %190 = load i32*, i32** %5, align 8
  %191 = call i32 @HttpServerSend(%struct.TYPE_22__* %189, i32* %190)
  %192 = load i32*, i32** %5, align 8
  %193 = call i32 @FreePack(i32* %192)
  %194 = call %struct.TYPE_27__* @ZeroMalloc(i32 48)
  store %struct.TYPE_27__* %194, %struct.TYPE_27__** %6, align 8
  %195 = call i64 @StrLen(i8* %34)
  %196 = icmp eq i64 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 1, i32 0
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = call i64 @StrLen(i8* %34)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %188
  br label %205

204:                                              ; preds = %188
  br label %205

205:                                              ; preds = %204, %203
  %206 = phi i8* [ %34, %203 ], [ null, %204 ]
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 1
  store i8* %206, i8** %208, align 8
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %212, align 8
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 6
  store %struct.TYPE_23__* %213, %struct.TYPE_23__** %215, align 8
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 5
  store i32 %218, i32* %220, align 4
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 4
  %223 = call i32 @Copy(i32* %222, i32* %17, i32 4)
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %225 = load i32, i32* @INFINITE, align 4
  %226 = call i32 @SetTimeout(%struct.TYPE_22__* %224, i32 %225)
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %228 = load i32, i32* @AdminDispatch, align 4
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %230 = call %struct.TYPE_24__* @StartRpcServer(%struct.TYPE_22__* %227, i32 %228, %struct.TYPE_27__* %229)
  store %struct.TYPE_24__* %230, %struct.TYPE_24__** %14, align 8
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 3
  store %struct.TYPE_24__* %231, %struct.TYPE_24__** %233, align 8
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %235, align 8
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 (%struct.TYPE_26__*, i8*, i32, ...) @SLog(%struct.TYPE_26__* %236, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %239, i8* %242)
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %245 = call i32 @RpcServer(%struct.TYPE_24__* %244)
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %247 = call i32 @RpcFree(%struct.TYPE_24__* %246)
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 2
  %250 = load i32*, i32** %249, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %257

252:                                              ; preds = %205
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = call i32 @FreeEnumLogFile(i32* %255)
  br label %257

257:                                              ; preds = %252, %205
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %259 = call i32 @Free(%struct.TYPE_27__* %258)
  %260 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %260, i64* %3, align 8
  store i32 1, i32* %20, align 4
  br label %261

261:                                              ; preds = %257, %174, %135, %109, %85, %71, %40
  %262 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %262)
  %263 = load i64, i64* %3, align 8
  ret i64 %263
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PackGetBool(i32*, i8*) #2

declare dso_local i32 @InRpcWinVer(i32*, i32*) #2

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @CheckAdminSourceAddress(%struct.TYPE_22__*, i8*) #2

declare dso_local i32 @SLog(%struct.TYPE_26__*, i8*, i32, ...) #2

declare dso_local i32 @PackGetDataSize(i32*, i8*) #2

declare dso_local i32 @PackGetData(i32*, i8*, i32*) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i64 @AdminCheckPassword(%struct.TYPE_26__*, i32, i32*, i8*, i32, i32*) #2

declare dso_local i32 @GetUniErrorStr(i64) #2

declare dso_local i32 @HashAdminPassword(i32*, i8*) #2

declare dso_local i32 @SecurePassword(i32*, i32*, i32) #2

declare dso_local i64 @Cmp(i32*, i32*, i32) #2

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @PackAddBool(i32*, i8*, i32) #2

declare dso_local i32 @HttpServerSend(%struct.TYPE_22__*, i32*) #2

declare dso_local i32 @FreePack(i32*) #2

declare dso_local %struct.TYPE_27__* @ZeroMalloc(i32) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i32 @SetTimeout(%struct.TYPE_22__*, i32) #2

declare dso_local %struct.TYPE_24__* @StartRpcServer(%struct.TYPE_22__*, i32, %struct.TYPE_27__*) #2

declare dso_local i32 @RpcServer(%struct.TYPE_24__*) #2

declare dso_local i32 @RpcFree(%struct.TYPE_24__*) #2

declare dso_local i32 @FreeEnumLogFile(i32*) #2

declare dso_local i32 @Free(%struct.TYPE_27__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
