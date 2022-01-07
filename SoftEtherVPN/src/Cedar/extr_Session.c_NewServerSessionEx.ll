; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Session.c_NewServerSessionEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Session.c_NewServerSessionEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_23__*, i32, i32, i32, %struct.TYPE_22__*, %struct.TYPE_19__*, i32, i8*, i8*, i32, i32, i32, i8*, i32, i32, %struct.TYPE_24__*, i32, i8*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_23__ = type { i8*, i32, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i8*, i32, i64, i64 }
%struct.TYPE_20__ = type { i32, i8** }

@MAX_SIZE = common dso_local global i32 0, align 4
@MAX_USERNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"b_support_qos\00", align 1
@CLIENT_STATUS_ESTABLISHED = common dso_local global i32 0, align 4
@ADMINISTRATOR_USERNAME = common dso_local global i32 0, align 4
@BRIDGE_USER_NAME = common dso_local global i32 0, align 4
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"SID-%s-%u\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"SID-%s-[%s]-%u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"SID-%s-%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"SID-%s-%s-%u\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%s@%s@%u\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"MAC Address for IPC: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @NewServerSessionEx(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, %struct.TYPE_22__* %2, i8* %3, i32* %4, i32 %5, i8** %6) #0 {
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca [5 x i8*], align 16
  %23 = alloca [32 x i8], align 16
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_20__*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8** %6, i8*** %15, align 8
  %34 = load i32, i32* @MAX_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %17, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %18, align 8
  %38 = load i32, i32* @MAX_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %19, align 8
  %41 = load i32, i32* @MAX_USERNAME_LEN, align 4
  %42 = add nsw i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %20, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %46 = icmp eq %struct.TYPE_24__* %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %7
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %49 = icmp eq %struct.TYPE_23__* %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %52 = icmp eq %struct.TYPE_22__* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %12, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32*, i32** %13, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %53, %50, %47, %7
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  store i32 1, i32* %21, align 4
  br label %377

60:                                               ; preds = %56
  %61 = call %struct.TYPE_21__* @ZeroMalloc(i32 176)
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** %16, align 8
  %62 = call i32 (...) @NewCounter()
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 26
  store i32 %62, i32* %64, align 8
  %65 = call i8* (...) @NewLock()
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 25
  store i8* %65, i8** %67, align 8
  %68 = call i32 (...) @NewRef()
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 24
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 23
  store %struct.TYPE_24__* %71, %struct.TYPE_24__** %73, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = call i32 (...) @Tick64()
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 21
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 22
  store i32 %76, i32* %80, align 4
  %81 = call i8* (...) @NewTraffic()
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 20
  store i8* %81, i8** %83, align 8
  %84 = call i32 (...) @NewEvent()
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 19
  store i32 %84, i32* %86, align 8
  %87 = call i32 (...) @NewCancel()
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 18
  store i32 %87, i32* %89, align 4
  %90 = call i32 (...) @NewCancelList()
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 17
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 13
  store %struct.TYPE_19__* %95, %struct.TYPE_19__** %97, align 8
  %98 = call i8* (...) @NewLock()
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 16
  store i8* %98, i8** %100, align 8
  %101 = call i8* (...) @NewTraffic()
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 15
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = call i32 @GetServerCapsBool(%struct.TYPE_18__* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 14
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 13
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @AddRef(i32 %114)
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 12
  store %struct.TYPE_22__* %116, %struct.TYPE_22__** %118, align 8
  %119 = load i32, i32* @CLIENT_STATUS_ESTABLISHED, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 11
  store i32 %119, i32* %121, align 8
  %122 = call i32 @NewList(i32* null)
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 10
  store i32 %122, i32* %124, align 4
  %125 = call i32 (...) @GetHubPacketAdapter()
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 9
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 8
  store %struct.TYPE_23__* %128, %struct.TYPE_23__** %130, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @AddRef(i32 %133)
  %135 = trunc i64 %39 to i32
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @StrCpy(i8* %40, i32 %135, i8* %138)
  %140 = call i32 @StrUpper(i8* %40)
  %141 = trunc i64 %43 to i32
  %142 = load i8*, i8** %12, align 8
  %143 = call i32 @StrCpy(i8* %44, i32 %141, i8* %142)
  %144 = call i32 @StrUpper(i8* %44)
  %145 = load i8*, i8** %12, align 8
  %146 = load i32, i32* @ADMINISTRATOR_USERNAME, align 4
  %147 = call i64 @StrCmpi(i8* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %60
  %150 = load i8*, i8** %12, align 8
  %151 = load i32, i32* @BRIDGE_USER_NAME, align 4
  %152 = call i64 @StrCmpi(i8* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %149, %60
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = icmp eq %struct.TYPE_18__* %157, null
  br i1 %158, label %167, label %159

159:                                              ; preds = %154
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %214

167:                                              ; preds = %159, %154, %149
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i64 @IsEmptyStr(i8* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %167
  %174 = trunc i64 %35 to i32
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @Inc(i32 %177)
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i8*
  %181 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Format(i8* %37, i32 %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %180)
  br label %192

182:                                              ; preds = %167
  %183 = trunc i64 %35 to i32
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @Inc(i32 %189)
  %191 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Format(i8* %37, i32 %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* %186, i32 %190)
  br label %192

192:                                              ; preds = %182, %173
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %192
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %197, %192
  %203 = getelementptr inbounds [5 x i8*], [5 x i8*]* %22, i64 0, i64 0
  %204 = call i32 @Rand(i8** %203, i32 40)
  %205 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %206 = getelementptr inbounds [5 x i8*], [5 x i8*]* %22, i64 0, i64 0
  %207 = call i32 @BinToStr(i8* %205, i32 32, i8** %206, i32 40)
  %208 = trunc i64 %35 to i32
  %209 = call i32 @StrCat(i8* %37, i32 %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %210 = trunc i64 %35 to i32
  %211 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %212 = call i32 @StrCat(i8* %37, i32 %210, i8* %211)
  br label %213

213:                                              ; preds = %202, %197
  br label %270

214:                                              ; preds = %159
  %215 = load i32, i32* @SHA1_SIZE, align 4
  %216 = zext i32 %215 to i64
  %217 = call i8* @llvm.stacksave()
  store i8* %217, i8** %24, align 8
  %218 = alloca i8*, i64 %216, align 16
  store i64 %216, i64* %25, align 8
  %219 = load i32, i32* @MAX_SIZE, align 4
  %220 = zext i32 %219 to i64
  %221 = alloca i8, i64 %220, align 16
  store i64 %220, i64* %26, align 8
  %222 = mul nuw i64 8, %216
  %223 = trunc i64 %222 to i32
  %224 = call i32 @Rand(i8** %218, i32 %223)
  %225 = trunc i64 %220 to i32
  %226 = call i32 @BinToStr(i8* %221, i32 %225, i8** %218, i32 3)
  %227 = load i8*, i8** %12, align 8
  %228 = load i32, i32* @BRIDGE_USER_NAME, align 4
  %229 = call i64 @StrCmpi(i8* %227, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %214
  %232 = trunc i64 %35 to i32
  %233 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Format(i8* %37, i32 %232, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %44, i8* %221)
  br label %268

234:                                              ; preds = %214
  %235 = load i32, i32* @MAX_SIZE, align 4
  %236 = zext i32 %235 to i64
  %237 = call i8* @llvm.stacksave()
  store i8* %237, i8** %27, align 8
  %238 = alloca i8, i64 %236, align 16
  store i64 %236, i64* %28, align 8
  %239 = trunc i64 %220 to i32
  %240 = call i32 @GetMachineName(i8* %221, i32 %239)
  %241 = call %struct.TYPE_20__* @ParseToken(i8* %221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_20__* %241, %struct.TYPE_20__** %29, align 8
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp sge i32 %244, 1
  br i1 %245, label %246, label %254

246:                                              ; preds = %234
  %247 = trunc i64 %236 to i32
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 1
  %250 = load i8**, i8*** %249, align 8
  %251 = getelementptr inbounds i8*, i8** %250, i64 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @StrCpy(i8* %238, i32 %247, i8* %252)
  br label %257

254:                                              ; preds = %234
  %255 = trunc i64 %236 to i32
  %256 = call i32 @StrCpy(i8* %238, i32 %255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %246
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %259 = call i32 @FreeToken(%struct.TYPE_20__* %258)
  %260 = call i32 @StrUpper(i8* %238)
  %261 = trunc i64 %35 to i32
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @Inc(i32 %264)
  %266 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Format(i8* %37, i32 %261, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %44, i8* %238, i32 %265)
  %267 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %267)
  br label %268

268:                                              ; preds = %257, %231
  %269 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %269)
  br label %270

270:                                              ; preds = %268, %213
  %271 = call i32 @CopyStr(i8* %37)
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 7
  store i32 %271, i32* %273, align 8
  %274 = load i32*, i32** %13, align 8
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 6
  store i32* %274, i32** %276, align 8
  %277 = load i32, i32* %14, align 4
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 4
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %282 = call i32 @AddSession(%struct.TYPE_22__* %280, %struct.TYPE_21__* %281)
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 4
  %289 = call i32 @NewSessionKey(%struct.TYPE_24__* %283, i32 %286, i32* %288)
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %375

294:                                              ; preds = %270
  %295 = load i8**, i8*** %15, align 8
  %296 = icmp ne i8** %295, null
  br i1 %296, label %297, label %303

297:                                              ; preds = %294
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 2
  %300 = load i32*, i32** %299, align 8
  %301 = load i8**, i8*** %15, align 8
  %302 = call i32 @Copy(i32* %300, i8** %301, i32 6)
  br label %374

303:                                              ; preds = %294
  %304 = load i32, i32* @MAX_SIZE, align 4
  %305 = zext i32 %304 to i64
  %306 = call i8* @llvm.stacksave()
  store i8* %306, i8** %30, align 8
  %307 = alloca i8, i64 %305, align 16
  store i64 %305, i64* %31, align 8
  %308 = load i32, i32* @MAX_SIZE, align 4
  %309 = zext i32 %308 to i64
  %310 = alloca i8, i64 %309, align 16
  store i64 %309, i64* %32, align 8
  %311 = load i32, i32* @SHA1_SIZE, align 4
  %312 = zext i32 %311 to i64
  %313 = alloca i8*, i64 %312, align 16
  store i64 %312, i64* %33, align 8
  %314 = trunc i64 %309 to i32
  %315 = call i32 @GetMachineName(i8* %310, i32 %314)
  %316 = trunc i64 %305 to i32
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 8
  %323 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Format(i8* %307, i32 %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %310, i8* %319, i32 %322)
  %324 = call i32 @StrUpper(i8* %307)
  %325 = call i32 @Trim(i8* %307)
  %326 = call i32 @StrLen(i8* %307)
  %327 = call i32 @Sha0(i8** %313, i8* %307, i32 %326)
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 2
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 0
  store i32 202, i32* %331, align 4
  %332 = getelementptr inbounds i8*, i8** %313, i64 1
  %333 = load i8*, i8** %332, align 8
  %334 = ptrtoint i8* %333 to i32
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 2
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  store i32 %334, i32* %338, align 4
  %339 = getelementptr inbounds i8*, i8** %313, i64 2
  %340 = load i8*, i8** %339, align 16
  %341 = ptrtoint i8* %340 to i32
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 2
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 2
  store i32 %341, i32* %345, align 4
  %346 = getelementptr inbounds i8*, i8** %313, i64 3
  %347 = load i8*, i8** %346, align 8
  %348 = ptrtoint i8* %347 to i32
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i32 0, i32 2
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 3
  store i32 %348, i32* %352, align 4
  %353 = getelementptr inbounds i8*, i8** %313, i64 4
  %354 = load i8*, i8** %353, align 16
  %355 = ptrtoint i8* %354 to i32
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %357 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %356, i32 0, i32 2
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 4
  store i32 %355, i32* %359, align 4
  %360 = getelementptr inbounds i8*, i8** %313, i64 5
  %361 = load i8*, i8** %360, align 8
  %362 = ptrtoint i8* %361 to i32
  %363 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %364 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %363, i32 0, i32 2
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 5
  store i32 %362, i32* %366, align 4
  %367 = trunc i64 %305 to i32
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 2
  %370 = load i32*, i32** %369, align 8
  %371 = call i32 @MacToStr(i8* %307, i32 %367, i32* %370)
  %372 = call i32 @Debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %307)
  %373 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %373)
  br label %374

374:                                              ; preds = %303, %297
  br label %375

375:                                              ; preds = %374, %270
  %376 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %376, %struct.TYPE_21__** %8, align 8
  store i32 1, i32* %21, align 4
  br label %377

377:                                              ; preds = %375, %59
  %378 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %378)
  %379 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  ret %struct.TYPE_21__* %379
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_21__* @ZeroMalloc(i32) #2

declare dso_local i32 @NewCounter(...) #2

declare dso_local i8* @NewLock(...) #2

declare dso_local i32 @NewRef(...) #2

declare dso_local i32 @Tick64(...) #2

declare dso_local i8* @NewTraffic(...) #2

declare dso_local i32 @NewEvent(...) #2

declare dso_local i32 @NewCancel(...) #2

declare dso_local i32 @NewCancelList(...) #2

declare dso_local i32 @GetServerCapsBool(%struct.TYPE_18__*, i8*) #2

declare dso_local i32 @AddRef(i32) #2

declare dso_local i32 @NewList(i32*) #2

declare dso_local i32 @GetHubPacketAdapter(...) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @StrUpper(i8*) #2

declare dso_local i64 @StrCmpi(i8*, i32) #2

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i32 @Inc(i32) #2

declare dso_local i32 @Rand(i8**, i32) #2

declare dso_local i32 @BinToStr(i8*, i32, i8**, i32) #2

declare dso_local i32 @StrCat(i8*, i32, i8*) #2

declare dso_local i32 @GetMachineName(i8*, i32) #2

declare dso_local %struct.TYPE_20__* @ParseToken(i8*, i8*) #2

declare dso_local i32 @FreeToken(%struct.TYPE_20__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @CopyStr(i8*) #2

declare dso_local i32 @AddSession(%struct.TYPE_22__*, %struct.TYPE_21__*) #2

declare dso_local i32 @NewSessionKey(%struct.TYPE_24__*, i32, i32*) #2

declare dso_local i32 @Copy(i32*, i8**, i32) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i32 @Sha0(i8**, i8*, i32) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @MacToStr(i8*, i32, i32*) #2

declare dso_local i32 @Debug(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
