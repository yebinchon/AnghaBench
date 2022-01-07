; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ServerInfoPacket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ServerInfoPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i8*, i8*, i32, i8*, i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_11__ }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Different protocol info packet: %s\0A\00", align 1
@MAX_PINGREQUESTS = common dso_local global i32 0, align 4
@cl_pinglist = common dso_local global %struct.TYPE_13__* null, align 8
@cls = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"ping time %dms from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ipx\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"nettype\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AS_LOCAL = common dso_local global i64 0, align 8
@MAX_OTHER_SERVERS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"MAX_OTHER_SERVERS hit, dropping infoResponse\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ServerInfoPacket(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = bitcast %struct.TYPE_11__* %4 to { i64, i32 }*
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  store i64 %0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  store i32 %1, i32* %16, align 8
  store i32* %2, i32** %5, align 8
  %17 = load i32, i32* @MAX_INFO_STRING, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @MSG_ReadString(i32* %21)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @Info_ValueForKey(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @atoi(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @PROTOCOL_VERSION, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 1, i32* %13, align 4
  br label %288

32:                                               ; preds = %3
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %137, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %140

37:                                               ; preds = %33
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_pinglist, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %136

46:                                               ; preds = %37
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_pinglist, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %136, label %54

54:                                               ; preds = %46
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_pinglist, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 3
  %60 = bitcast %struct.TYPE_11__* %4 to { i64, i32 }*
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %60, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = bitcast %struct.TYPE_11__* %59 to { i64, i32 }*
  %66 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %65, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @NET_CompareAdr(i64 %62, i32 %64, i64 %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %136

72:                                               ; preds = %54
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 3), align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_pinglist, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %73, %79
  %81 = add nsw i64 %80, 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_pinglist, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store i64 %81, i64* %86, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_pinglist, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = bitcast %struct.TYPE_11__* %4 to { i64, i32 }*
  %94 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %93, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @NET_AdrToString(i64 %95, i32 %97)
  %99 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %92, i32 %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_pinglist, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @Q_strncpyz(i8* %105, i8* %106, i32 8)
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %112 [
    i32 131, label %110
    i32 129, label %110
    i32 128, label %111
    i32 130, label %111
  ]

110:                                              ; preds = %72, %72
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  store i32 1, i32* %7, align 4
  br label %113

111:                                              ; preds = %72, %72
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  store i32 2, i32* %7, align 4
  br label %113

112:                                              ; preds = %72
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %112, %111, %110
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_pinglist, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  %122 = call i32 @Info_SetValueForKey(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  %123 = load i8*, i8** %11, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_pinglist, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = bitcast %struct.TYPE_11__* %4 to { i64, i32 }*
  %131 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %130, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @CL_SetServerInfoByAddress(i64 %132, i32 %134, i8* %123, i64 %129)
  store i32 1, i32* %13, align 4
  br label %288

136:                                              ; preds = %54, %46, %37
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %33

140:                                              ; preds = %33
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 0), align 8
  %142 = load i64, i64* @AS_LOCAL, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 1, i32* %13, align 4
  br label %288

145:                                              ; preds = %140
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %180, %145
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %183

150:                                              ; preds = %146
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 11
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  br label %183

160:                                              ; preds = %150
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 11
  %166 = bitcast %struct.TYPE_11__* %4 to { i64, i32 }*
  %167 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %166, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = bitcast %struct.TYPE_11__* %165 to { i64, i32 }*
  %172 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %171, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @NET_CompareAdr(i64 %168, i32 %170, i64 %173, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %160
  store i32 1, i32* %13, align 4
  br label %288

179:                                              ; preds = %160
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %146

183:                                              ; preds = %159, %146
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %288

189:                                              ; preds = %183
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 1), align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 11
  %197 = bitcast %struct.TYPE_11__* %196 to i8*
  %198 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %197, i8* align 8 %198, i64 16, i1 false)
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 10
  store i64 0, i64* %203, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 0
  store i8 0, i8* %210, align 1
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 0
  store i8 0, i8* %217, align 1
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 9
  store i64 0, i64* %222, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 8
  store i64 0, i64* %227, align 8
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 7
  store i64 0, i64* %232, align 8
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 2
  store i32 -1, i32* %237, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 3
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 0
  store i8 0, i8* %244, align 1
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 6
  store i64 0, i64* %249, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 4
  store i32 %251, i32* %256, align 8
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cls, i32 0, i32 2), align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 5
  store i64 0, i64* %261, align 8
  %262 = load i32*, i32** %5, align 8
  %263 = call i8* @MSG_ReadString(i32* %262)
  %264 = load i32, i32* @MAX_INFO_STRING, align 4
  %265 = call i32 @Q_strncpyz(i8* %20, i8* %263, i32 %264)
  %266 = call i32 @strlen(i8* %20)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %287

268:                                              ; preds = %189
  %269 = call i32 @strlen(i8* %20)
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %20, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp ne i32 %274, 10
  br i1 %275, label %276, label %279

276:                                              ; preds = %268
  %277 = trunc i64 %18 to i32
  %278 = call i32 @strncat(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %277)
  br label %279

279:                                              ; preds = %276, %268
  %280 = bitcast %struct.TYPE_11__* %4 to { i64, i32 }*
  %281 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %280, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @NET_AdrToString(i64 %282, i32 %284)
  %286 = call i32 @Com_Printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %285, i8* %20)
  br label %287

287:                                              ; preds = %279, %189
  store i32 0, i32* %13, align 4
  br label %288

288:                                              ; preds = %287, %187, %178, %144, %113, %29
  %289 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %289)
  %290 = load i32, i32* %13, align 4
  switch i32 %290, label %292 [
    i32 0, label %291
    i32 1, label %291
  ]

291:                                              ; preds = %288, %288
  ret void

292:                                              ; preds = %288
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @MSG_ReadString(i32*) #2

declare dso_local i32 @atoi(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @Com_DPrintf(i8*, ...) #2

declare dso_local i64 @NET_CompareAdr(i64, i32, i64, i32) #2

declare dso_local i32 @NET_AdrToString(i64, i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @CL_SetServerInfoByAddress(i64, i32, i8*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #2

declare dso_local i32 @Com_Printf(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
