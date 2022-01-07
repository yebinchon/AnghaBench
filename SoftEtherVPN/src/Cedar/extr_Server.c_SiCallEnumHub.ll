; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCallEnumHub.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCallEnumHub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32*, i32, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32*, i64, i64, i32, i32, i64, i64 }
%struct.TYPE_34__ = type { i64, i32*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32, i32*, i64 }
%struct.TYPE_33__ = type { i32, i8*, i64, i32, i64, i32, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_34__*, i32*, i32, i32* }
%struct.TYPE_31__ = type { %struct.TYPE_30__*, i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }

@HUB_TYPE_FARM_DYNAMIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Delete HUB: %s\0A\00", align 1
@HUB_TYPE_FARM_STATIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"i_max_sessions\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Server %s: Point %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"MemberRandomKey\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"MemberSystemId\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"MemberSystemIdNum\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"enumhub\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"NumSession\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"HubType\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"NumSessions\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"NumSessionsClient\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"NumSessionsBridge\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"NumIpTables\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"NumMacTables\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"LastCommTime\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"NumTotalSessions\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"MaxSessions\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"NumTcpConnections\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"AssignedBridgeLicense\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"AssignedClientLicense\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"RandomKey\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"SystemId\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"TdType\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"TdName\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"TdHubName\00", align 1
@TRAFFIC_DIFF_HUB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiCallEnumHub(%struct.TYPE_32__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca %struct.TYPE_33__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_34__*, align 8
  %21 = alloca %struct.TYPE_34__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_33__*, align 8
  %24 = alloca %struct.TYPE_33__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_33__*, align 8
  %28 = alloca %struct.TYPE_33__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_33__*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca %struct.TYPE_31__*, align 8
  %36 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %4, align 8
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %38 = icmp eq %struct.TYPE_32__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %41 = icmp eq %struct.TYPE_34__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %2
  br label %876

43:                                               ; preds = %39
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %45, align 8
  store %struct.TYPE_35__* %46, %struct.TYPE_35__** %5, align 8
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %47, i32 0, i32 11
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %392

51:                                               ; preds = %43
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 10
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @LockList(i32* %54)
  %56 = call i32* @NewListFast(i32* null)
  store i32* %56, i32** %7, align 8
  store i64 0, i64* %6, align 8
  br label %57

57:                                               ; preds = %80, %51
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 10
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @LIST_NUM(i32* %61)
  %63 = icmp slt i64 %58, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %57
  %65 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %65, i32 0, i32 10
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i8* @LIST_DATA(i32* %67, i64 %68)
  %70 = bitcast i8* %69 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %70, %struct.TYPE_33__** %8, align 8
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %78 = call i32 @Add(i32* %76, %struct.TYPE_33__* %77)
  br label %79

79:                                               ; preds = %75, %64
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %6, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %57

83:                                               ; preds = %57
  store i64 0, i64* %6, align 8
  br label %84

84:                                               ; preds = %101, %83
  %85 = load i64, i64* %6, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i64 @LIST_NUM(i32* %86)
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = load i32*, i32** %7, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i8* @LIST_DATA(i32* %90, i64 %91)
  %93 = bitcast i8* %92 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %93, %struct.TYPE_33__** %9, align 8
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %95 = call i32 @Free(%struct.TYPE_33__* %94)
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 10
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %100 = call i32 @Delete(i32* %98, %struct.TYPE_33__* %99)
  br label %101

101:                                              ; preds = %89
  %102 = load i64, i64* %6, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %6, align 8
  br label %84

104:                                              ; preds = %84
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @ReleaseList(i32* %105)
  %107 = call i32* @NewListFast(i32* null)
  store i32* %107, i32** %7, align 8
  store i64 0, i64* %6, align 8
  br label %108

108:                                              ; preds = %165, %104
  %109 = load i64, i64* %6, align 8
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 10
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @LIST_NUM(i32* %112)
  %114 = icmp slt i64 %109, %113
  br i1 %114, label %115, label %168

115:                                              ; preds = %108
  %116 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %116, i32 0, i32 10
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %6, align 8
  %120 = call i8* @LIST_DATA(i32* %118, i64 %119)
  %121 = bitcast i8* %120 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %121, %struct.TYPE_33__** %10, align 8
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %164

126:                                              ; preds = %115
  %127 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @LockList(i32* %129)
  %131 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_35__*, %struct.TYPE_35__** %132, align 8
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call %struct.TYPE_33__* @GetHub(%struct.TYPE_35__* %133, i8* %136)
  store %struct.TYPE_33__* %137, %struct.TYPE_33__** %11, align 8
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %139 = icmp ne %struct.TYPE_33__* %138, null
  br i1 %139, label %140, label %159

140:                                              ; preds = %126
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %141, i32 0, i32 12
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @Count(i64 %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146, %140
  %153 = load i32*, i32** %7, align 8
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %155 = call i32 @Add(i32* %153, %struct.TYPE_33__* %154)
  br label %156

156:                                              ; preds = %152, %146
  %157 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %158 = call i32 @ReleaseHub(%struct.TYPE_33__* %157)
  br label %159

159:                                              ; preds = %156, %126
  %160 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @UnlockList(i32* %162)
  br label %164

164:                                              ; preds = %159, %115
  br label %165

165:                                              ; preds = %164
  %166 = load i64, i64* %6, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %6, align 8
  br label %108

168:                                              ; preds = %108
  store i64 0, i64* %6, align 8
  br label %169

169:                                              ; preds = %190, %168
  %170 = load i64, i64* %6, align 8
  %171 = load i32*, i32** %7, align 8
  %172 = call i64 @LIST_NUM(i32* %171)
  %173 = icmp slt i64 %170, %172
  br i1 %173, label %174, label %193

174:                                              ; preds = %169
  %175 = load i32*, i32** %7, align 8
  %176 = load i64, i64* %6, align 8
  %177 = call i8* @LIST_DATA(i32* %175, i64 %176)
  %178 = bitcast i8* %177 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %178, %struct.TYPE_33__** %12, align 8
  %179 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i8*, i8*, ...) @Debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %181)
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %184 = call i32 @Free(%struct.TYPE_33__* %183)
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 10
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %189 = call i32 @Delete(i32* %187, %struct.TYPE_33__* %188)
  br label %190

190:                                              ; preds = %174
  %191 = load i64, i64* %6, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %6, align 8
  br label %169

193:                                              ; preds = %169
  %194 = load i32*, i32** %7, align 8
  %195 = call i32 @ReleaseList(i32* %194)
  %196 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @LockList(i32* %198)
  store i64 0, i64* %6, align 8
  br label %200

200:                                              ; preds = %299, %193
  %201 = load i64, i64* %6, align 8
  %202 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = call i64 @LIST_NUM(i32* %204)
  %206 = icmp slt i64 %201, %205
  br i1 %206, label %207, label %302

207:                                              ; preds = %200
  %208 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* %6, align 8
  %212 = call i8* @LIST_DATA(i32* %210, i64 %211)
  %213 = bitcast i8* %212 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %213, %struct.TYPE_33__** %13, align 8
  %214 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %298

218:                                              ; preds = %207
  %219 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @HUB_TYPE_FARM_STATIC, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %297

224:                                              ; preds = %218
  %225 = call %struct.TYPE_33__* @ZeroMalloc(i32 128)
  store %struct.TYPE_33__* %225, %struct.TYPE_33__** %14, align 8
  %226 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %227 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 13
  store %struct.TYPE_34__* %226, %struct.TYPE_34__** %228, align 8
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 0
  store i32 0, i32* %230, align 8
  %231 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @StrCpy(i8* %233, i32 8, i8* %236)
  %238 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %238, i32 0, i32 10
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %242 = call i32 @Add(i32* %240, %struct.TYPE_33__* %241)
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 16
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @LockList(i32* %245)
  %247 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %247, i32 0, i32 16
  %249 = load i32*, i32** %248, align 8
  %250 = call i64 @LIST_NUM(i32* %249)
  %251 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %251, i32 0, i32 12
  store i64 %250, i64* %252, align 8
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %253, i32 0, i32 10
  %255 = load i64, i64* %254, align 8
  %256 = call i64 @Count(i64 %255)
  %257 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %258 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %257, i32 0, i32 10
  store i64 %256, i64* %258, align 8
  %259 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %259, i32 0, i32 11
  %261 = load i64, i64* %260, align 8
  %262 = call i64 @Count(i64 %261)
  %263 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %264 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %263, i32 0, i32 11
  store i64 %262, i64* %264, align 8
  %265 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %265, i32 0, i32 16
  %267 = load i32*, i32** %266, align 8
  %268 = call i32 @UnlockList(i32* %267)
  %269 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %269, i32 0, i32 15
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @LockHashList(i32 %271)
  %273 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %274 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %273, i32 0, i32 15
  %275 = load i32, i32* %274, align 8
  %276 = call i64 @HASH_LIST_NUM(i32 %275)
  %277 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %277, i32 0, i32 8
  store i64 %276, i64* %278, align 8
  %279 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %280 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %279, i32 0, i32 15
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @UnlockHashList(i32 %281)
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %283, i32 0, i32 14
  %285 = load i32*, i32** %284, align 8
  %286 = call i32 @LockList(i32* %285)
  %287 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %287, i32 0, i32 14
  %289 = load i32*, i32** %288, align 8
  %290 = call i64 @LIST_NUM(i32* %289)
  %291 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %291, i32 0, i32 9
  store i64 %290, i64* %292, align 8
  %293 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %293, i32 0, i32 14
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @UnlockList(i32* %295)
  br label %297

297:                                              ; preds = %224, %218
  br label %298

298:                                              ; preds = %297, %207
  br label %299

299:                                              ; preds = %298
  %300 = load i64, i64* %6, align 8
  %301 = add nsw i64 %300, 1
  store i64 %301, i64* %6, align 8
  br label %200

302:                                              ; preds = %200
  %303 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = call i32 @UnlockList(i32* %305)
  %307 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %307, i32 0, i32 10
  %309 = load i32*, i32** %308, align 8
  %310 = call i32 @UnlockList(i32* %309)
  %311 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %312 = call i8* @SiGetPoint(%struct.TYPE_32__* %311)
  %313 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %313, i32 0, i32 8
  store i8* %312, i8** %314, align 8
  %315 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %315, i32 0, i32 2
  %317 = load %struct.TYPE_35__*, %struct.TYPE_35__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %317, i32 0, i32 6
  %319 = load i64, i64* %318, align 8
  %320 = call i64 @Count(i64 %319)
  %321 = inttoptr i64 %320 to i8*
  %322 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %322, i32 0, i32 7
  store i8* %321, i8** %323, align 8
  %324 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %325 = call i8* @GetServerCapsInt(%struct.TYPE_32__* %324, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %326 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %326, i32 0, i32 6
  store i8* %325, i8** %327, align 8
  %328 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_35__*, %struct.TYPE_35__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %330, i32 0, i32 5
  %332 = load i64, i64* %331, align 8
  %333 = call i64 @Count(i64 %332)
  %334 = inttoptr i64 %333 to i8*
  %335 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %335, i32 0, i32 5
  store i8* %334, i8** %336, align 8
  %337 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %337, i32 0, i32 2
  %339 = load %struct.TYPE_35__*, %struct.TYPE_35__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @Lock(i32 %341)
  %343 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %343, i32 0, i32 4
  %345 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %345, i32 0, i32 2
  %347 = load %struct.TYPE_35__*, %struct.TYPE_35__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @Copy(i32* %344, i32 %349, i32 4)
  %351 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %351, i32 0, i32 2
  %353 = load %struct.TYPE_35__*, %struct.TYPE_35__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @Unlock(i32 %355)
  %357 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %357, i32 0, i32 2
  %359 = load %struct.TYPE_35__*, %struct.TYPE_35__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %359, i32 0, i32 2
  %361 = load i64, i64* %360, align 8
  %362 = call i64 @Count(i64 %361)
  %363 = inttoptr i64 %362 to i8*
  %364 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %364, i32 0, i32 3
  store i8* %363, i8** %365, align 8
  %366 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %366, i32 0, i32 2
  %368 = load %struct.TYPE_35__*, %struct.TYPE_35__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = call i64 @Count(i64 %370)
  %372 = inttoptr i64 %371 to i8*
  %373 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %373, i32 0, i32 2
  store i8* %372, i8** %374, align 8
  %375 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @SHA1_SIZE, align 4
  %382 = call i32 @Copy(i32* %377, i32 %380, i32 %381)
  %383 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %383, i32 0, i32 9
  %385 = load i32, i32* %384, align 8
  %386 = sext i32 %385 to i64
  %387 = inttoptr i64 %386 to i8*
  %388 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %388, i32 0, i32 8
  %390 = load i8*, i8** %389, align 8
  %391 = call i32 (i8*, i8*, ...) @Debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %387, i8* %390)
  br label %876

392:                                              ; preds = %43
  %393 = call i32* (...) @NewPack()
  store i32* %393, i32** %15, align 8
  %394 = call i32* @NewListFast(i32* null)
  store i32* %394, i32** %19, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %16, align 8
  br label %395

395:                                              ; preds = %424, %392
  %396 = load i64, i64* %16, align 8
  %397 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %397, i32 0, i32 0
  %399 = load i32*, i32** %398, align 8
  %400 = call i64 @LIST_NUM(i32* %399)
  %401 = icmp slt i64 %396, %400
  br i1 %401, label %402, label %427

402:                                              ; preds = %395
  %403 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %403, i32 0, i32 0
  %405 = load i32*, i32** %404, align 8
  %406 = load i64, i64* %16, align 8
  %407 = call i8* @LIST_DATA(i32* %405, i64 %406)
  %408 = bitcast i8* %407 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %408, %struct.TYPE_34__** %20, align 8
  %409 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %410 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %409, i32 0, i32 1
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* @SHA1_SIZE, align 4
  %413 = call i32 @IsZero(i32* %411, i32 %412)
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %423

415:                                              ; preds = %402
  %416 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %417 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %415
  %421 = load i64, i64* %17, align 8
  %422 = add nsw i64 %421, 1
  store i64 %422, i64* %17, align 8
  br label %423

423:                                              ; preds = %420, %415, %402
  br label %424

424:                                              ; preds = %423
  %425 = load i64, i64* %16, align 8
  %426 = add nsw i64 %425, 1
  store i64 %426, i64* %16, align 8
  br label %395

427:                                              ; preds = %395
  store i64 0, i64* %18, align 8
  store i64 0, i64* %16, align 8
  br label %428

428:                                              ; preds = %472, %427
  %429 = load i64, i64* %16, align 8
  %430 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %430, i32 0, i32 0
  %432 = load i32*, i32** %431, align 8
  %433 = call i64 @LIST_NUM(i32* %432)
  %434 = icmp slt i64 %429, %433
  br i1 %434, label %435, label %475

435:                                              ; preds = %428
  %436 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %437 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %436, i32 0, i32 0
  %438 = load i32*, i32** %437, align 8
  %439 = load i64, i64* %16, align 8
  %440 = call i8* @LIST_DATA(i32* %438, i64 %439)
  %441 = bitcast i8* %440 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %441, %struct.TYPE_34__** %21, align 8
  %442 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %443 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %442, i32 0, i32 1
  %444 = load i32*, i32** %443, align 8
  %445 = load i32, i32* @SHA1_SIZE, align 4
  %446 = call i32 @IsZero(i32* %444, i32 %445)
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %471

448:                                              ; preds = %435
  %449 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %450 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %471

453:                                              ; preds = %448
  %454 = load i32*, i32** %15, align 8
  %455 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %456 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %455, i32 0, i32 1
  %457 = load i32*, i32** %456, align 8
  %458 = load i32, i32* @SHA1_SIZE, align 4
  %459 = load i64, i64* %18, align 8
  %460 = load i64, i64* %17, align 8
  %461 = call i32 @PackAddDataEx(i32* %454, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %457, i32 %458, i64 %459, i64 %460)
  %462 = load i32*, i32** %15, align 8
  %463 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %464 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = load i64, i64* %18, align 8
  %467 = load i64, i64* %17, align 8
  %468 = call i32 @PackAddInt64Ex(i32* %462, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %465, i64 %466, i64 %467)
  %469 = load i64, i64* %18, align 8
  %470 = add nsw i64 %469, 1
  store i64 %470, i64* %18, align 8
  br label %471

471:                                              ; preds = %453, %448, %435
  br label %472

472:                                              ; preds = %471
  %473 = load i64, i64* %16, align 8
  %474 = add nsw i64 %473, 1
  store i64 %474, i64* %16, align 8
  br label %428

475:                                              ; preds = %428
  %476 = load i32*, i32** %15, align 8
  %477 = load i64, i64* %17, align 8
  %478 = call i32 @PackAddInt(i32* %476, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %477)
  %479 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %480 = load i32*, i32** %15, align 8
  %481 = call i32* @SiCallTask(%struct.TYPE_34__* %479, i32* %480, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32* %481, i32** %15, align 8
  %482 = load i32*, i32** %15, align 8
  %483 = icmp ne i32* %482, null
  br i1 %483, label %484, label %849

484:                                              ; preds = %475
  %485 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %485, i32 0, i32 10
  %487 = load i32*, i32** %486, align 8
  %488 = call i32 @LockList(i32* %487)
  store i64 0, i64* %22, align 8
  br label %489

489:                                              ; preds = %505, %484
  %490 = load i64, i64* %22, align 8
  %491 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %492 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %491, i32 0, i32 10
  %493 = load i32*, i32** %492, align 8
  %494 = call i64 @LIST_NUM(i32* %493)
  %495 = icmp slt i64 %490, %494
  br i1 %495, label %496, label %508

496:                                              ; preds = %489
  %497 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %498 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %497, i32 0, i32 10
  %499 = load i32*, i32** %498, align 8
  %500 = load i64, i64* %22, align 8
  %501 = call i8* @LIST_DATA(i32* %499, i64 %500)
  %502 = bitcast i8* %501 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %502, %struct.TYPE_33__** %23, align 8
  %503 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %504 = call i32 @Free(%struct.TYPE_33__* %503)
  br label %505

505:                                              ; preds = %496
  %506 = load i64, i64* %22, align 8
  %507 = add nsw i64 %506, 1
  store i64 %507, i64* %22, align 8
  br label %489

508:                                              ; preds = %489
  %509 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %510 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %509, i32 0, i32 10
  %511 = load i32*, i32** %510, align 8
  %512 = call i32 @DeleteAll(i32* %511)
  store i64 0, i64* %22, align 8
  br label %513

513:                                              ; preds = %662, %508
  %514 = load i64, i64* %22, align 8
  %515 = load i32*, i32** %15, align 8
  %516 = call i64 @PackGetIndexCount(i32* %515, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %517 = icmp slt i64 %514, %516
  br i1 %517, label %518, label %665

518:                                              ; preds = %513
  %519 = call %struct.TYPE_33__* @ZeroMalloc(i32 128)
  store %struct.TYPE_33__* %519, %struct.TYPE_33__** %24, align 8
  %520 = load i32*, i32** %15, align 8
  %521 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %522 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %521, i32 0, i32 1
  %523 = load i8*, i8** %522, align 8
  %524 = load i64, i64* %22, align 8
  %525 = call i32 @PackGetStrEx(i32* %520, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %523, i32 8, i64 %524)
  %526 = load i32*, i32** %15, align 8
  %527 = load i64, i64* %22, align 8
  %528 = call i64 @PackGetIntEx(i32* %526, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 %527)
  store i64 %528, i64* %25, align 8
  %529 = load i32*, i32** %15, align 8
  %530 = load i64, i64* %22, align 8
  %531 = call i64 @PackGetIntEx(i32* %529, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64 %530)
  %532 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  %533 = icmp eq i64 %531, %532
  %534 = zext i1 %533 to i64
  %535 = select i1 %533, i32 1, i32 0
  %536 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %537 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %536, i32 0, i32 0
  store i32 %535, i32* %537, align 8
  %538 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %539 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %540 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %539, i32 0, i32 13
  store %struct.TYPE_34__* %538, %struct.TYPE_34__** %540, align 8
  %541 = load i32*, i32** %15, align 8
  %542 = load i64, i64* %22, align 8
  %543 = call i64 @PackGetIntEx(i32* %541, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %542)
  %544 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %545 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %544, i32 0, i32 12
  store i64 %543, i64* %545, align 8
  %546 = load i32*, i32** %15, align 8
  %547 = load i64, i64* %22, align 8
  %548 = call i64 @PackGetIntEx(i32* %546, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i64 %547)
  %549 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %550 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %549, i32 0, i32 11
  store i64 %548, i64* %550, align 8
  %551 = load i32*, i32** %15, align 8
  %552 = load i64, i64* %22, align 8
  %553 = call i64 @PackGetIntEx(i32* %551, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i64 %552)
  %554 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %555 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %554, i32 0, i32 10
  store i64 %553, i64* %555, align 8
  %556 = load i32*, i32** %15, align 8
  %557 = load i64, i64* %22, align 8
  %558 = call i64 @PackGetIntEx(i32* %556, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i64 %557)
  %559 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %560 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %559, i32 0, i32 9
  store i64 %558, i64* %560, align 8
  %561 = load i32*, i32** %15, align 8
  %562 = load i64, i64* %22, align 8
  %563 = call i64 @PackGetIntEx(i32* %561, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i64 %562)
  %564 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %565 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %564, i32 0, i32 8
  store i64 %563, i64* %565, align 8
  %566 = load i32*, i32** %15, align 8
  %567 = load i64, i64* %22, align 8
  %568 = call i64 @PackGetInt64Ex(i32* %566, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 %567)
  store i64 %568, i64* %26, align 8
  %569 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %570 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %569, i32 0, i32 10
  %571 = load i32*, i32** %570, align 8
  %572 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %573 = call i32 @Add(i32* %571, %struct.TYPE_33__* %572)
  %574 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %575 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %574, i32 0, i32 0
  %576 = load i32*, i32** %575, align 8
  %577 = call i32 @LockList(i32* %576)
  %578 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %579 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %580 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %579, i32 0, i32 1
  %581 = load i8*, i8** %580, align 8
  %582 = call %struct.TYPE_33__* @GetHub(%struct.TYPE_35__* %578, i8* %581)
  store %struct.TYPE_33__* %582, %struct.TYPE_33__** %27, align 8
  %583 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %584 = icmp ne %struct.TYPE_33__* %583, null
  br i1 %584, label %585, label %606

585:                                              ; preds = %518
  %586 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %587 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %586, i32 0, i32 7
  %588 = load i32, i32* %587, align 8
  %589 = call i32 @Lock(i32 %588)
  %590 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %591 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %590, i32 0, i32 4
  %592 = load i64, i64* %591, align 8
  %593 = load i64, i64* %26, align 8
  %594 = icmp slt i64 %592, %593
  br i1 %594, label %595, label %599

595:                                              ; preds = %585
  %596 = load i64, i64* %26, align 8
  %597 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %598 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %597, i32 0, i32 4
  store i64 %596, i64* %598, align 8
  br label %599

599:                                              ; preds = %595, %585
  %600 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %601 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %600, i32 0, i32 7
  %602 = load i32, i32* %601, align 8
  %603 = call i32 @Unlock(i32 %602)
  %604 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %605 = call i32 @ReleaseHub(%struct.TYPE_33__* %604)
  br label %606

606:                                              ; preds = %599, %518
  %607 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %608 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %607, i32 0, i32 0
  %609 = load i32*, i32** %608, align 8
  %610 = call i32 @UnlockList(i32* %609)
  %611 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %612 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %624

615:                                              ; preds = %606
  %616 = load i64, i64* %25, align 8
  %617 = icmp sge i64 %616, 1
  br i1 %617, label %618, label %624

618:                                              ; preds = %615
  %619 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %620 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %621 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %620, i32 0, i32 1
  %622 = load i8*, i8** %621, align 8
  %623 = call i32 @SiDelHubCreateHistory(%struct.TYPE_32__* %619, i8* %622)
  br label %624

624:                                              ; preds = %618, %615, %606
  %625 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %626 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 8
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %661

629:                                              ; preds = %624
  %630 = load i64, i64* %25, align 8
  %631 = icmp eq i64 %630, 0
  br i1 %631, label %632, label %661

632:                                              ; preds = %629
  %633 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %634 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %635 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %634, i32 0, i32 1
  %636 = load i8*, i8** %635, align 8
  %637 = call i32 @SiIsHubRegistedOnCreateHistory(%struct.TYPE_32__* %633, i8* %636)
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %660

639:                                              ; preds = %632
  %640 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %641 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %640, i32 0, i32 0
  %642 = load i32*, i32** %641, align 8
  %643 = call i32 @LockList(i32* %642)
  %644 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %645 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %646 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %645, i32 0, i32 1
  %647 = load i8*, i8** %646, align 8
  %648 = call %struct.TYPE_33__* @GetHub(%struct.TYPE_35__* %644, i8* %647)
  store %struct.TYPE_33__* %648, %struct.TYPE_33__** %28, align 8
  %649 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %650 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %649, i32 0, i32 0
  %651 = load i32*, i32** %650, align 8
  %652 = call i32 @UnlockList(i32* %651)
  %653 = load %struct.TYPE_33__*, %struct.TYPE_33__** %28, align 8
  %654 = icmp ne %struct.TYPE_33__* %653, null
  br i1 %654, label %655, label %659

655:                                              ; preds = %639
  %656 = load i32*, i32** %19, align 8
  %657 = load %struct.TYPE_33__*, %struct.TYPE_33__** %28, align 8
  %658 = call i32 @Add(i32* %656, %struct.TYPE_33__* %657)
  br label %659

659:                                              ; preds = %655, %639
  br label %660

660:                                              ; preds = %659, %632
  br label %661

661:                                              ; preds = %660, %629, %624
  br label %662

662:                                              ; preds = %661
  %663 = load i64, i64* %22, align 8
  %664 = add nsw i64 %663, 1
  store i64 %664, i64* %22, align 8
  br label %513

665:                                              ; preds = %513
  %666 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %667 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %666, i32 0, i32 10
  %668 = load i32*, i32** %667, align 8
  %669 = call i32 @UnlockList(i32* %668)
  %670 = load i32*, i32** %15, align 8
  %671 = call i8* @PackGetInt(i32* %670, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %672 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %673 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %672, i32 0, i32 8
  store i8* %671, i8** %673, align 8
  %674 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %675 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %674, i32 0, i32 9
  %676 = load i32, i32* %675, align 8
  %677 = sext i32 %676 to i64
  %678 = inttoptr i64 %677 to i8*
  %679 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %680 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %679, i32 0, i32 8
  %681 = load i8*, i8** %680, align 8
  %682 = call i32 (i8*, i8*, ...) @Debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %678, i8* %681)
  %683 = load i32*, i32** %15, align 8
  %684 = call i8* @PackGetInt(i32* %683, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %685 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %686 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %685, i32 0, i32 7
  store i8* %684, i8** %686, align 8
  %687 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %688 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %687, i32 0, i32 7
  %689 = load i8*, i8** %688, align 8
  %690 = icmp eq i8* %689, null
  br i1 %690, label %691, label %696

691:                                              ; preds = %665
  %692 = load i32*, i32** %15, align 8
  %693 = call i8* @PackGetInt(i32* %692, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %694 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %695 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %694, i32 0, i32 7
  store i8* %693, i8** %695, align 8
  br label %696

696:                                              ; preds = %691, %665
  %697 = load i32*, i32** %15, align 8
  %698 = call i8* @PackGetInt(i32* %697, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %699 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %700 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %699, i32 0, i32 6
  store i8* %698, i8** %700, align 8
  %701 = load i32*, i32** %15, align 8
  %702 = call i8* @PackGetInt(i32* %701, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %703 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %704 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %703, i32 0, i32 5
  store i8* %702, i8** %704, align 8
  %705 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %706 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %705, i32 0, i32 4
  %707 = load i32*, i32** %15, align 8
  %708 = call i32 @InRpcTraffic(i32* %706, i32* %707)
  %709 = load i32*, i32** %15, align 8
  %710 = call i8* @PackGetInt(i32* %709, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %711 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %712 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %711, i32 0, i32 3
  store i8* %710, i8** %712, align 8
  %713 = load i32*, i32** %15, align 8
  %714 = call i8* @PackGetInt(i32* %713, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %715 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %716 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %715, i32 0, i32 2
  store i8* %714, i8** %716, align 8
  %717 = load i32*, i32** %15, align 8
  %718 = call i32 @PackGetDataSize(i32* %717, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %719 = load i32, i32* @SHA1_SIZE, align 4
  %720 = icmp eq i32 %718, %719
  br i1 %720, label %721, label %727

721:                                              ; preds = %696
  %722 = load i32*, i32** %15, align 8
  %723 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %724 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %723, i32 0, i32 1
  %725 = load i32*, i32** %724, align 8
  %726 = call i32 @PackGetData(i32* %722, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i32* %725)
  br label %727

727:                                              ; preds = %721, %696
  %728 = load i32*, i32** %15, align 8
  %729 = call i64 @PackGetInt64(i32* %728, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %730 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %731 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %730, i32 0, i32 0
  store i64 %729, i64* %731, align 8
  %732 = load i32*, i32** %15, align 8
  %733 = call i64 @PackGetIndexCount(i32* %732, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  store i64 %733, i64* %17, align 8
  store i64 0, i64* %16, align 8
  br label %734

734:                                              ; preds = %843, %727
  %735 = load i64, i64* %16, align 8
  %736 = load i64, i64* %17, align 8
  %737 = icmp slt i64 %735, %736
  br i1 %737, label %738, label %846

738:                                              ; preds = %734
  %739 = load i32, i32* @MAX_SIZE, align 4
  %740 = zext i32 %739 to i64
  %741 = call i8* @llvm.stacksave()
  store i8* %741, i8** %32, align 8
  %742 = alloca i8, i64 %740, align 16
  store i64 %740, i64* %33, align 8
  %743 = load i32, i32* @MAX_SIZE, align 4
  %744 = zext i32 %743 to i64
  %745 = alloca i8, i64 %744, align 16
  store i64 %744, i64* %34, align 8
  %746 = load i32*, i32** %15, align 8
  %747 = load i64, i64* %16, align 8
  %748 = call i64 @PackGetIntEx(i32* %746, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i64 %747)
  store i64 %748, i64* %30, align 8
  %749 = load i32*, i32** %15, align 8
  %750 = trunc i64 %740 to i32
  %751 = load i64, i64* %16, align 8
  %752 = call i32 @PackGetStrEx(i32* %749, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* %742, i32 %750, i64 %751)
  %753 = load i32*, i32** %15, align 8
  %754 = trunc i64 %744 to i32
  %755 = load i64, i64* %16, align 8
  %756 = call i32 @PackGetStrEx(i32* %753, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8* %745, i32 %754, i64 %755)
  %757 = load i32*, i32** %15, align 8
  %758 = load i64, i64* %16, align 8
  %759 = call i32 @InRpcTrafficEx(i32* %29, i32* %757, i64 %758)
  %760 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %761 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %760, i32 0, i32 0
  %762 = load i32*, i32** %761, align 8
  %763 = call i32 @LockList(i32* %762)
  %764 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %765 = call %struct.TYPE_33__* @GetHub(%struct.TYPE_35__* %764, i8* %745)
  store %struct.TYPE_33__* %765, %struct.TYPE_33__** %31, align 8
  %766 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %767 = icmp ne %struct.TYPE_33__* %766, null
  br i1 %767, label %768, label %837

768:                                              ; preds = %738
  %769 = load i64, i64* %30, align 8
  %770 = load i64, i64* @TRAFFIC_DIFF_HUB, align 8
  %771 = icmp eq i64 %769, %770
  br i1 %771, label %772, label %785

772:                                              ; preds = %768
  %773 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %774 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %773, i32 0, i32 5
  %775 = load i32, i32* %774, align 8
  %776 = call i32 @Lock(i32 %775)
  %777 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %778 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %777, i32 0, i32 6
  %779 = load i32, i32* %778, align 4
  %780 = call i32 @AddTraffic(i32 %779, i32* %29)
  %781 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %782 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %781, i32 0, i32 5
  %783 = load i32, i32* %782, align 8
  %784 = call i32 @Unlock(i32 %783)
  br label %834

785:                                              ; preds = %768
  %786 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %787 = call i32 @AcLock(%struct.TYPE_33__* %786)
  %788 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %789 = call %struct.TYPE_31__* @AcGetUser(%struct.TYPE_33__* %788, i8* %742)
  store %struct.TYPE_31__* %789, %struct.TYPE_31__** %35, align 8
  %790 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %791 = icmp ne %struct.TYPE_31__* %790, null
  br i1 %791, label %792, label %831

792:                                              ; preds = %785
  %793 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %794 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %793, i32 0, i32 1
  %795 = load i32, i32* %794, align 8
  %796 = call i32 @Lock(i32 %795)
  %797 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %798 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %797, i32 0, i32 2
  %799 = load i32, i32* %798, align 4
  %800 = call i32 @AddTraffic(i32 %799, i32* %29)
  %801 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %802 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %801, i32 0, i32 1
  %803 = load i32, i32* %802, align 8
  %804 = call i32 @Unlock(i32 %803)
  %805 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %806 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %805, i32 0, i32 0
  %807 = load %struct.TYPE_30__*, %struct.TYPE_30__** %806, align 8
  %808 = icmp ne %struct.TYPE_30__* %807, null
  br i1 %808, label %809, label %828

809:                                              ; preds = %792
  %810 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %811 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %810, i32 0, i32 0
  %812 = load %struct.TYPE_30__*, %struct.TYPE_30__** %811, align 8
  %813 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %812, i32 0, i32 0
  %814 = load i32, i32* %813, align 4
  %815 = call i32 @Lock(i32 %814)
  %816 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %817 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %816, i32 0, i32 0
  %818 = load %struct.TYPE_30__*, %struct.TYPE_30__** %817, align 8
  %819 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %818, i32 0, i32 1
  %820 = load i32, i32* %819, align 4
  %821 = call i32 @AddTraffic(i32 %820, i32* %29)
  %822 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %823 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %822, i32 0, i32 0
  %824 = load %struct.TYPE_30__*, %struct.TYPE_30__** %823, align 8
  %825 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %824, i32 0, i32 0
  %826 = load i32, i32* %825, align 4
  %827 = call i32 @Unlock(i32 %826)
  br label %828

828:                                              ; preds = %809, %792
  %829 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %830 = call i32 @ReleaseUser(%struct.TYPE_31__* %829)
  br label %831

831:                                              ; preds = %828, %785
  %832 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %833 = call i32 @AcUnlock(%struct.TYPE_33__* %832)
  br label %834

834:                                              ; preds = %831, %772
  %835 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %836 = call i32 @ReleaseHub(%struct.TYPE_33__* %835)
  br label %837

837:                                              ; preds = %834, %738
  %838 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %839 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %838, i32 0, i32 0
  %840 = load i32*, i32** %839, align 8
  %841 = call i32 @UnlockList(i32* %840)
  %842 = load i8*, i8** %32, align 8
  call void @llvm.stackrestore(i8* %842)
  br label %843

843:                                              ; preds = %837
  %844 = load i64, i64* %16, align 8
  %845 = add nsw i64 %844, 1
  store i64 %845, i64* %16, align 8
  br label %734

846:                                              ; preds = %734
  %847 = load i32*, i32** %15, align 8
  %848 = call i32 @FreePack(i32* %847)
  br label %849

849:                                              ; preds = %846, %475
  store i64 0, i64* %16, align 8
  br label %850

850:                                              ; preds = %870, %849
  %851 = load i64, i64* %16, align 8
  %852 = load i32*, i32** %19, align 8
  %853 = call i64 @LIST_NUM(i32* %852)
  %854 = icmp slt i64 %851, %853
  br i1 %854, label %855, label %873

855:                                              ; preds = %850
  %856 = load i32*, i32** %19, align 8
  %857 = load i64, i64* %16, align 8
  %858 = call i8* @LIST_DATA(i32* %856, i64 %857)
  %859 = bitcast i8* %858 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %859, %struct.TYPE_33__** %36, align 8
  %860 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %861 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %862 = load %struct.TYPE_33__*, %struct.TYPE_33__** %36, align 8
  %863 = call i32 @SiCallDeleteHub(%struct.TYPE_32__* %860, %struct.TYPE_34__* %861, %struct.TYPE_33__* %862)
  %864 = load %struct.TYPE_33__*, %struct.TYPE_33__** %36, align 8
  %865 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %864, i32 0, i32 1
  %866 = load i8*, i8** %865, align 8
  %867 = call i32 (i8*, i8*, ...) @Debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %866)
  %868 = load %struct.TYPE_33__*, %struct.TYPE_33__** %36, align 8
  %869 = call i32 @ReleaseHub(%struct.TYPE_33__* %868)
  br label %870

870:                                              ; preds = %855
  %871 = load i64, i64* %16, align 8
  %872 = add nsw i64 %871, 1
  store i64 %872, i64* %16, align 8
  br label %850

873:                                              ; preds = %850
  %874 = load i32*, i32** %19, align 8
  %875 = call i32 @ReleaseList(i32* %874)
  br label %876

876:                                              ; preds = %42, %873, %302
  ret void
}

declare dso_local i32 @LockList(i32*) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i8* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @Free(%struct.TYPE_33__*) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local %struct.TYPE_33__* @GetHub(%struct.TYPE_35__*, i8*) #1

declare dso_local i64 @Count(i64) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_33__*) #1

declare dso_local i32 @UnlockList(i32*) #1

declare dso_local i32 @Debug(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_33__* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @LockHashList(i32) #1

declare dso_local i64 @HASH_LIST_NUM(i32) #1

declare dso_local i32 @UnlockHashList(i32) #1

declare dso_local i8* @SiGetPoint(%struct.TYPE_32__*) #1

declare dso_local i8* @GetServerCapsInt(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Copy(i32*, i32, i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @IsZero(i32*, i32) #1

declare dso_local i32 @PackAddDataEx(i32*, i8*, i32*, i32, i64, i64) #1

declare dso_local i32 @PackAddInt64Ex(i32*, i8*, i64, i64, i64) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i64) #1

declare dso_local i32* @SiCallTask(%struct.TYPE_34__*, i32*, i8*) #1

declare dso_local i32 @DeleteAll(i32*) #1

declare dso_local i64 @PackGetIndexCount(i32*, i8*) #1

declare dso_local i32 @PackGetStrEx(i32*, i8*, i8*, i32, i64) #1

declare dso_local i64 @PackGetIntEx(i32*, i8*, i64) #1

declare dso_local i64 @PackGetInt64Ex(i32*, i8*, i64) #1

declare dso_local i32 @SiDelHubCreateHistory(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @SiIsHubRegistedOnCreateHistory(%struct.TYPE_32__*, i8*) #1

declare dso_local i8* @PackGetInt(i32*, i8*) #1

declare dso_local i32 @InRpcTraffic(i32*, i32*) #1

declare dso_local i32 @PackGetDataSize(i32*, i8*) #1

declare dso_local i32 @PackGetData(i32*, i8*, i32*) #1

declare dso_local i64 @PackGetInt64(i32*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @InRpcTrafficEx(i32*, i32*, i64) #1

declare dso_local i32 @AddTraffic(i32, i32*) #1

declare dso_local i32 @AcLock(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_31__* @AcGetUser(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @ReleaseUser(%struct.TYPE_31__*) #1

declare dso_local i32 @AcUnlock(%struct.TYPE_33__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32 @SiCallDeleteHub(%struct.TYPE_32__*, %struct.TYPE_34__*, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
