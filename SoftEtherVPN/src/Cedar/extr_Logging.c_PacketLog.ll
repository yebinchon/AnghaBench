; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_PacketLog.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_PacketLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i32, %struct.TYPE_39__*, i64, %struct.TYPE_35__*, i32, %struct.TYPE_37__ }
%struct.TYPE_39__ = type { %struct.TYPE_46__* }
%struct.TYPE_46__ = type { %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i64, i32, i32 }
%struct.TYPE_35__ = type { i64, i32, i64, i64 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_45__ = type { i8*, %struct.TYPE_38__*, i32, i32, i64 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_33__ = type { i64, i64, %struct.TYPE_43__, %struct.TYPE_41__, i32, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_34__ = type { i32, i32, %struct.TYPE_45__*, i32, i32, i8*, i8*, %struct.TYPE_33__*, %struct.TYPE_39__* }
%struct.TYPE_32__ = type { %struct.TYPE_34__* }

@PACKET_LOG_NONE = common dso_local global i64 0, align 8
@L3_IPV4 = common dso_local global i64 0, align 8
@L3_ARPV4 = common dso_local global i64 0, align 8
@L3_IPV6 = common dso_local global i64 0, align 8
@GSF_DISABLE_DEEP_LOGGING = common dso_local global i32 0, align 4
@PACKET_LOG_ALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SYSLOG_SERVER_AND_HUB_ALL_LOG = common dso_local global i64 0, align 8
@L4_UDP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"PACKET_LOG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PacketLog(%struct.TYPE_36__* %0, %struct.TYPE_45__* %1, %struct.TYPE_45__* %2, %struct.TYPE_33__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_36__*, align 8
  %8 = alloca %struct.TYPE_45__*, align 8
  %9 = alloca %struct.TYPE_45__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca %struct.TYPE_34__*, align 8
  %15 = alloca %struct.TYPE_46__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_35__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_32__, align 8
  %21 = alloca i8*, align 8
  %22 = alloca [1024 x i32], align 16
  %23 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %7, align 8
  store %struct.TYPE_45__* %1, %struct.TYPE_45__** %8, align 8
  store %struct.TYPE_45__* %2, %struct.TYPE_45__** %9, align 8
  store %struct.TYPE_33__* %3, %struct.TYPE_33__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %17, align 4
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %18, align 8
  %24 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %25 = icmp eq %struct.TYPE_36__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %28 = icmp eq %struct.TYPE_45__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %31 = icmp eq %struct.TYPE_33__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26, %5
  store i32 1, i32* %6, align 4
  br label %370

33:                                               ; preds = %29
  %34 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_39__*, %struct.TYPE_39__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_46__*, %struct.TYPE_46__** %37, align 8
  store %struct.TYPE_46__* %38, %struct.TYPE_46__** %15, align 8
  %39 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %370

45:                                               ; preds = %33
  %46 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @memcmp(i32 %48, i32 %51, i32 6)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @memcmp(i32 %57, i32 %60, i32 6)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54, %45
  store i32 1, i32* %6, align 4
  br label %370

64:                                               ; preds = %54
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %66, align 8
  store %struct.TYPE_35__* %67, %struct.TYPE_35__** %18, align 8
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %69 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %70 = call i64 @CalcPacketLoggingLevel(%struct.TYPE_36__* %68, %struct.TYPE_33__* %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @PACKET_LOG_NONE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 1, i32* %6, align 4
  br label %370

75:                                               ; preds = %64
  %76 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %77, align 8
  %79 = icmp ne %struct.TYPE_35__* %78, null
  br i1 %79, label %80, label %115

80:                                               ; preds = %75
  %81 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_35__*, %struct.TYPE_35__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @L3_IPV4, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @L3_ARPV4, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %87
  store i32 1, i32* %6, align 4
  br label %370

100:                                              ; preds = %93, %80
  %101 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_35__*, %struct.TYPE_35__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @L3_IPV6, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 1, i32* %6, align 4
  br label %370

114:                                              ; preds = %107, %100
  br label %115

115:                                              ; preds = %114, %75
  %116 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %117, align 8
  %119 = icmp ne %struct.TYPE_35__* %118, null
  br i1 %119, label %120, label %139

120:                                              ; preds = %115
  %121 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_35__*, %struct.TYPE_35__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %120
  %128 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_35__*, %struct.TYPE_35__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @CheckMaxLoggedPacketsPerMinute(%struct.TYPE_45__* %128, i64 %133, i32 %134)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  store i32 0, i32* %6, align 4
  br label %370

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138, %120, %115
  %140 = load i32, i32* @GSF_DISABLE_DEEP_LOGGING, align 4
  %141 = call i64 @GetGlobalServerFlag(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 1, i32* %17, align 4
  br label %144

144:                                              ; preds = %143, %139
  %145 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i32 0, i32* %17, align 4
  br label %150

150:                                              ; preds = %149, %144
  %151 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %152 = call i64 @SiGetSysLogSaveStatus(%struct.TYPE_46__* %151)
  store i64 %152, i64* %16, align 8
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %154 = load i64, i64* %12, align 8
  %155 = load i64, i64* @PACKET_LOG_ALL, align 8
  %156 = icmp eq i64 %154, %155
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 1, i32 0
  %159 = call %struct.TYPE_33__* @ClonePacket(%struct.TYPE_33__* %153, i32 %158)
  store %struct.TYPE_33__* %159, %struct.TYPE_33__** %13, align 8
  %160 = call %struct.TYPE_34__* @ZeroMalloc(i32 56)
  store %struct.TYPE_34__* %160, %struct.TYPE_34__** %14, align 8
  %161 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_39__*, %struct.TYPE_39__** %162, align 8
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %164, i32 0, i32 8
  store %struct.TYPE_39__* %163, %struct.TYPE_39__** %165, align 8
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %167 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %167, i32 0, i32 7
  store %struct.TYPE_33__* %166, %struct.TYPE_33__** %168, align 8
  %169 = load i32, i32* %17, align 4
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i8* @CopyStr(i8* %174)
  %176 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %176, i32 0, i32 6
  store i8* %175, i8** %177, align 8
  %178 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %179 = icmp ne %struct.TYPE_45__* %178, null
  br i1 %179, label %180, label %187

180:                                              ; preds = %150
  %181 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i8* @CopyStr(i8* %183)
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 5
  store i8* %184, i8** %186, align 8
  br label %191

187:                                              ; preds = %150
  %188 = call i8* @CopyStr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %189 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %189, i32 0, i32 5
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %187, %180
  %192 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %193 = icmp eq %struct.TYPE_35__* %192, null
  br i1 %193, label %199, label %194

194:                                              ; preds = %191
  %195 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %231

199:                                              ; preds = %194, %191
  %200 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @StrCpy(i32 %207, i32 4, i32 %210)
  br label %212

212:                                              ; preds = %204, %199
  %213 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %214 = icmp ne %struct.TYPE_45__* %213, null
  br i1 %214, label %215, label %228

215:                                              ; preds = %212
  %216 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %216, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %215
  %221 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @StrCpy(i32 %223, i32 4, i32 %226)
  br label %228

228:                                              ; preds = %220, %215, %212
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %229, i32 0, i32 1
  store i32 1, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %194
  %232 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_38__*, %struct.TYPE_38__** %233, align 8
  %235 = icmp ne %struct.TYPE_38__* %234, null
  br i1 %235, label %236, label %253

236:                                              ; preds = %231
  store i64 0, i64* %19, align 8
  br label %237

237:                                              ; preds = %251, %236
  %238 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_38__*, %struct.TYPE_38__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp sge i32 %242, 30000
  br i1 %243, label %244, label %252

244:                                              ; preds = %237
  %245 = call i32 @SleepThread(i32 50)
  %246 = load i64, i64* %19, align 8
  %247 = add nsw i64 %246, 1
  store i64 %247, i64* %19, align 8
  %248 = load i64, i64* %19, align 8
  %249 = icmp sge i64 %248, 5
  br i1 %249, label %250, label %251

250:                                              ; preds = %244
  br label %252

251:                                              ; preds = %244
  br label %237

252:                                              ; preds = %250, %237
  br label %253

253:                                              ; preds = %252, %231
  %254 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 2
  store %struct.TYPE_45__* %254, %struct.TYPE_45__** %256, align 8
  %257 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @AddRef(i32 %259)
  %261 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_38__*, %struct.TYPE_38__** %262, align 8
  %264 = call i32 @Inc(%struct.TYPE_38__* %263)
  %265 = load i64, i64* %16, align 8
  %266 = load i64, i64* @SYSLOG_SERVER_AND_HUB_ALL_LOG, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %363

268:                                              ; preds = %253
  store i32 0, i32* %23, align 4
  %269 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @L3_IPV4, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %343

274:                                              ; preds = %268
  %275 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @L4_UDP, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %343

280:                                              ; preds = %274
  %281 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_44__*, %struct.TYPE_44__** %282, align 8
  %284 = icmp ne %struct.TYPE_44__* %283, null
  br i1 %284, label %285, label %342

285:                                              ; preds = %280
  %286 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %287 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_44__*, %struct.TYPE_44__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @Lock(i32 %290)
  %292 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %293 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_44__*, %struct.TYPE_44__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %294, i32 0, i32 2
  %296 = call i32 @IsZeroIp(i32* %295)
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %335

298:                                              ; preds = %285
  %299 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_44__*, %struct.TYPE_44__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %335

305:                                              ; preds = %298
  %306 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %307 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_44__*, %struct.TYPE_44__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %308, i32 0, i32 2
  %310 = call i64 @IPToUINT(i32* %309)
  %311 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_40__*, %struct.TYPE_40__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %310, %316
  br i1 %317, label %318, label %334

318:                                              ; preds = %305
  %319 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_42__*, %struct.TYPE_42__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i64 @Endian32(i32 %324)
  %326 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %327 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_44__*, %struct.TYPE_44__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = icmp eq i64 %325, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %318
  store i32 1, i32* %23, align 4
  br label %333

333:                                              ; preds = %332, %318
  br label %334

334:                                              ; preds = %333, %305
  br label %335

335:                                              ; preds = %334, %298, %285
  %336 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %337 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_44__*, %struct.TYPE_44__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @Unlock(i32 %340)
  br label %342

342:                                              ; preds = %335, %280
  br label %343

343:                                              ; preds = %342, %274, %268
  %344 = call i32 @Zero(%struct.TYPE_32__* %20, i32 8)
  %345 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 0
  store %struct.TYPE_34__* %345, %struct.TYPE_34__** %346, align 8
  %347 = call i8* @PacketLogParseProc(%struct.TYPE_32__* %20)
  store i8* %347, i8** %21, align 8
  %348 = getelementptr inbounds [1024 x i32], [1024 x i32]* %22, i64 0, i64 0
  %349 = load i8*, i8** %21, align 8
  %350 = call i32 @StrToUni(i32* %348, i32 4096, i8* %349)
  %351 = load i32, i32* %23, align 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %343
  %354 = load %struct.TYPE_46__*, %struct.TYPE_46__** %15, align 8
  %355 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = getelementptr inbounds [1024 x i32], [1024 x i32]* %22, i64 0, i64 0
  %359 = call i32 @SiWriteSysLog(%struct.TYPE_46__* %354, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %357, i32* %358)
  br label %360

360:                                              ; preds = %353, %343
  %361 = load i8*, i8** %21, align 8
  %362 = call i32 @Free(i8* %361)
  br label %369

363:                                              ; preds = %253
  %364 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %368 = call i32 @InsertRecord(i32 %366, %struct.TYPE_34__* %367, i8* (%struct.TYPE_32__*)* @PacketLogParseProc)
  br label %369

369:                                              ; preds = %363, %360
  store i32 1, i32* %6, align 4
  br label %370

370:                                              ; preds = %369, %137, %113, %99, %74, %63, %44, %32
  %371 = load i32, i32* %6, align 4
  ret i32 %371
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @CalcPacketLoggingLevel(%struct.TYPE_36__*, %struct.TYPE_33__*) #1

declare dso_local i32 @CheckMaxLoggedPacketsPerMinute(%struct.TYPE_45__*, i64, i32) #1

declare dso_local i64 @GetGlobalServerFlag(i32) #1

declare dso_local i64 @SiGetSysLogSaveStatus(%struct.TYPE_46__*) #1

declare dso_local %struct.TYPE_33__* @ClonePacket(%struct.TYPE_33__*, i32) #1

declare dso_local %struct.TYPE_34__* @ZeroMalloc(i32) #1

declare dso_local i8* @CopyStr(i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @SleepThread(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Inc(%struct.TYPE_38__*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @IsZeroIp(i32*) #1

declare dso_local i64 @IPToUINT(i32*) #1

declare dso_local i64 @Endian32(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @Zero(%struct.TYPE_32__*, i32) #1

declare dso_local i8* @PacketLogParseProc(%struct.TYPE_32__*) #1

declare dso_local i32 @StrToUni(i32*, i32, i8*) #1

declare dso_local i32 @SiWriteSysLog(%struct.TYPE_46__*, i8*, i32, i32*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @InsertRecord(i32, %struct.TYPE_34__*, i8* (%struct.TYPE_32__*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
