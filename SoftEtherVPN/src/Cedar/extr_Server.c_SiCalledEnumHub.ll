; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledEnumHub.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledEnumHub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"HubType\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"NumSession\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"NumSessions\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"NumSessionsClient\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"NumSessionsBridge\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"NumMacTables\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"NumIpTables\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"LastCommTime\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"CreatedTime\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"NumTcpConnections\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"NumTotalSessions\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"MaxSessions\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"i_max_sessions\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"AssignedClientLicense\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"AssignedBridgeLicense\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"RandomKey\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"TdType\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"TdHubName\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"TdName\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiCalledEnumHub(%struct.TYPE_11__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %3
  br label %265

23:                                               ; preds = %19
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %8, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @LockList(i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @LIST_NUM(i32 %33)
  store i64 %34, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %130, %23
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %133

39:                                               ; preds = %35
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i8* @LIST_DATA(i32 %42, i64 %43)
  %45 = bitcast i8* %44 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %10, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @Lock(i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 10
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @PackAddStrEx(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %53, i64 %54, i64 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @PackAddIntEx(i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %60, i64 %61, i64 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @Count(i32 %67)
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @PackAddIntEx(i32* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %68, i64 %69, i64 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @LIST_NUM(i32 %75)
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @PackAddIntEx(i32* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %76, i64 %77, i64 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @Count(i32 %83)
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @PackAddIntEx(i32* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %84, i64 %85, i64 %86)
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @Count(i32 %91)
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @PackAddIntEx(i32* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %92, i64 %93, i64 %94)
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @HASH_LIST_NUM(i32 %99)
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @PackAddIntEx(i32* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i64 %100, i64 %101, i64 %102)
  %104 = load i32*, i32** %5, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @LIST_NUM(i32 %107)
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @PackAddIntEx(i32* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 %108, i64 %109, i64 %110)
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @PackAddTime64Ex(i32* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %115, i64 %116, i64 %117)
  %119 = load i32*, i32** %5, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @PackAddTime64Ex(i32* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %122, i64 %123, i64 %124)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @Unlock(i32 %128)
  br label %130

130:                                              ; preds = %39
  %131 = load i64, i64* %7, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %7, align 8
  br label %35

133:                                              ; preds = %35
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @UnlockList(i32 %136)
  %138 = load i32*, i32** %5, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = call i64 @SiGetPoint(%struct.TYPE_11__* %139)
  %141 = call i32 @PackAddInt(i32* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %140)
  %142 = load i32*, i32** %5, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @Count(i32 %147)
  %149 = call i32 @PackAddInt(i32* %142, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i64 %148)
  %150 = load i32*, i32** %5, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @Count(i32 %155)
  %157 = call i32 @PackAddInt(i32* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i64 %156)
  %158 = load i32*, i32** %5, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %160 = call i64 @GetServerCapsInt(%struct.TYPE_11__* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %161 = call i32 @PackAddInt(i32* %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i64 %160)
  %162 = load i32*, i32** %5, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @Count(i32 %167)
  %169 = call i32 @PackAddInt(i32* %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i64 %168)
  %170 = load i32*, i32** %5, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @Count(i32 %175)
  %177 = call i32 @PackAddInt(i32* %170, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i64 %176)
  %178 = load i32*, i32** %5, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @SHA1_SIZE, align 4
  %183 = call i32 @PackAddData(i32* %178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %181, i32 %182)
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @Lock(i32 %186)
  %188 = load i32*, i32** %5, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @OutRpcTraffic(i32* %188, i32 %191)
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @Unlock(i32 %195)
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @LockList(i32 %199)
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @LIST_NUM(i32 %203)
  store i64 %204, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %205

205:                                              ; preds = %253, %133
  %206 = load i64, i64* %12, align 8
  %207 = load i64, i64* %11, align 8
  %208 = icmp slt i64 %206, %207
  br i1 %208, label %209, label %256

209:                                              ; preds = %205
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i64, i64* %12, align 8
  %214 = call i8* @LIST_DATA(i32 %212, i64 %213)
  %215 = bitcast i8* %214 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %215, %struct.TYPE_10__** %13, align 8
  %216 = load i32*, i32** %5, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* %12, align 8
  %221 = load i64, i64* %11, align 8
  %222 = call i32 @PackAddIntEx(i32* %216, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i64 %219, i64 %220, i64 %221)
  %223 = load i32*, i32** %5, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = load i64, i64* %12, align 8
  %228 = load i64, i64* %11, align 8
  %229 = call i32 @PackAddStrEx(i32* %223, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), %struct.TYPE_10__* %226, i64 %227, i64 %228)
  %230 = load i32*, i32** %5, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = load i64, i64* %12, align 8
  %235 = load i64, i64* %11, align 8
  %236 = call i32 @PackAddStrEx(i32* %230, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), %struct.TYPE_10__* %233, i64 %234, i64 %235)
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 3
  %239 = load i32*, i32** %5, align 8
  %240 = load i64, i64* %12, align 8
  %241 = load i64, i64* %11, align 8
  %242 = call i32 @OutRpcTrafficEx(i32* %238, i32* %239, i64 %240, i64 %241)
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = call i32 @Free(%struct.TYPE_10__* %245)
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = call i32 @Free(%struct.TYPE_10__* %249)
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %252 = call i32 @Free(%struct.TYPE_10__* %251)
  br label %253

253:                                              ; preds = %209
  %254 = load i64, i64* %12, align 8
  %255 = add nsw i64 %254, 1
  store i64 %255, i64* %12, align 8
  br label %205

256:                                              ; preds = %205
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @DeleteAll(i32 %259)
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @UnlockList(i32 %263)
  br label %265

265:                                              ; preds = %256, %22
  ret void
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @PackAddStrEx(i32*, i8*, %struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @PackAddIntEx(i32*, i8*, i64, i64, i64) #1

declare dso_local i64 @Count(i32) #1

declare dso_local i64 @HASH_LIST_NUM(i32) #1

declare dso_local i32 @PackAddTime64Ex(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i64) #1

declare dso_local i64 @SiGetPoint(%struct.TYPE_11__*) #1

declare dso_local i64 @GetServerCapsInt(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @PackAddData(i32*, i8*, i32, i32) #1

declare dso_local i32 @OutRpcTraffic(i32*, i32) #1

declare dso_local i32 @OutRpcTrafficEx(i32*, i32*, i64, i64) #1

declare dso_local i32 @Free(%struct.TYPE_10__*) #1

declare dso_local i32 @DeleteAll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
