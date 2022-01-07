; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ServersResponsePacket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ServersResponsePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64, %struct.TYPE_6__*, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i8*, i32 }

@MAX_SERVERSPERPACKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"CL_ServersResponsePacket\0A\00", align 1
@cls = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"server: %d ip: %d.%d.%d.%d:%d\0A\00", align 1
@MAX_GLOBAL_SERVERS = common dso_local global i32 0, align 4
@MAX_OTHER_SERVERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"%d servers parsed (total %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ServersResponsePacket(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %16 = load i32, i32* @MAX_SERVERSPERPACKET, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca %struct.TYPE_6__, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0), align 8
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 1), align 4
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 2), align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 2), align 8
  br label %28

28:                                               ; preds = %27, %24
  store i32 0, i32* %11, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  store i8* %37, i8** %13, align 8
  br label %38

38:                                               ; preds = %198, %28
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8*, i8** %13, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %199

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %52, %43
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %12, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 92
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %56

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %44, label %56

56:                                               ; preds = %52, %50
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -6
  %60 = icmp uge i8* %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %199

62:                                               ; preds = %56
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %12, align 8
  %65 = load i8, i8* %63, align 1
  %66 = sext i8 %65 to i32
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %66, i32* %72, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %12, align 8
  %75 = load i8, i8* %73, align 1
  %76 = sext i8 %75 to i32
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %76, i32* %82, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %12, align 8
  %85 = load i8, i8* %83, align 1
  %86 = sext i8 %85 to i32
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32 %86, i32* %92, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %12, align 8
  %95 = load i8, i8* %93, align 1
  %96 = sext i8 %95 to i32
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  store i32 %96, i32* %102, align 4
  %103 = load i8*, i8** %12, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %12, align 8
  %105 = load i8, i8* %103, align 1
  %106 = sext i8 %105 to i32
  %107 = shl i32 %106, 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 16
  %112 = load i8*, i8** %12, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %12, align 8
  %114 = load i8, i8* %112, align 1
  %115 = sext i8 %114 to i32
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 16
  %121 = add nsw i32 %120, %115
  store i32 %121, i32* %119, align 16
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 16
  %127 = call i32 @BigShort(i32 %126)
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32 %127, i32* %131, align 16
  %132 = load i8*, i8** %12, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 92
  br i1 %135, label %136, label %137

136:                                              ; preds = %62
  br label %199

137:                                              ; preds = %62
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 16
  %172 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %145, i32 %152, i32 %159, i32 %166, i32 %171)
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* @MAX_SERVERSPERPACKET, align 4
  %177 = icmp sge i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %137
  br label %199

179:                                              ; preds = %137
  %180 = load i8*, i8** %12, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 69
  br i1 %184, label %185, label %198

185:                                              ; preds = %179
  %186 = load i8*, i8** %12, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 2
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 79
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = load i8*, i8** %12, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 3
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 84
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %199

198:                                              ; preds = %191, %185, %179
  br label %38

199:                                              ; preds = %197, %178, %136, %61, %38
  %200 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 3), align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0), align 8
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* @MAX_GLOBAL_SERVERS, align 4
  store i32 %204, i32* %7, align 4
  br label %208

205:                                              ; preds = %199
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 2), align 8
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  store i32 %207, i32* %7, align 4
  br label %208

208:                                              ; preds = %205, %202
  store i32 0, i32* %5, align 4
  br label %209

209:                                              ; preds = %241, %208
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp slt i32 %214, %215
  br label %217

217:                                              ; preds = %213, %209
  %218 = phi i1 [ false, %209 ], [ %216, %213 ]
  br i1 %218, label %219, label %244

219:                                              ; preds = %217
  %220 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 3), align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 6), align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  br label %232

227:                                              ; preds = %219
  %228 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 5), align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  br label %232

232:                                              ; preds = %227, %222
  %233 = phi i32* [ %226, %222 ], [ %231, %227 ]
  store i32* %233, i32** %14, align 8
  %234 = load i32*, i32** %14, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %236
  %238 = call i32 @CL_InitServerInfo(i32* %234, %struct.TYPE_6__* %237)
  %239 = load i32, i32* %6, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %6, align 4
  br label %241

241:                                              ; preds = %232
  %242 = load i32, i32* %5, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %5, align 4
  br label %209

244:                                              ; preds = %217
  %245 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 3), align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %324

247:                                              ; preds = %244
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 1), align 4
  %249 = load i32, i32* @MAX_GLOBAL_SERVERS, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %323

251:                                              ; preds = %247
  br label %252

252:                                              ; preds = %319, %251
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* %11, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* %7, align 4
  %259 = icmp sge i32 %257, %258
  br label %260

260:                                              ; preds = %256, %252
  %261 = phi i1 [ false, %252 ], [ %259, %256 ]
  br i1 %261, label %262, label %322

262:                                              ; preds = %260
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 4), align 8
  %264 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 1), align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 1), align 4
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i64 %266
  store %struct.TYPE_6__* %267, %struct.TYPE_6__** %15, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  store i32 %274, i32* %278, align 4
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  store i32 %285, i32* %289, align 4
  %290 = load i32, i32* %5, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 2
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 2
  store i32 %296, i32* %300, align 4
  %301 = load i32, i32* %5, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 3
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 3
  store i32 %307, i32* %311, align 4
  %312 = load i32, i32* %5, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 16
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  store i32 %316, i32* %318, align 8
  br label %319

319:                                              ; preds = %262
  %320 = load i32, i32* %5, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %5, align 4
  br label %252

322:                                              ; preds = %260
  br label %323

323:                                              ; preds = %322, %247
  br label %324

324:                                              ; preds = %323, %244
  %325 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 3), align 8
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %324
  %328 = load i32, i32* %6, align 4
  store i32 %328, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0), align 8
  %329 = load i32, i32* %6, align 4
  %330 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 1), align 4
  %331 = add nsw i32 %329, %330
  store i32 %331, i32* %8, align 4
  br label %335

332:                                              ; preds = %324
  %333 = load i32, i32* %6, align 4
  store i32 %333, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 2), align 8
  %334 = load i32, i32* %6, align 4
  store i32 %334, i32* %8, align 4
  br label %335

335:                                              ; preds = %332, %327
  %336 = load i32, i32* %11, align 4
  %337 = load i32, i32* %8, align 4
  %338 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %336, i32 %337)
  %339 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %339)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i32 @BigShort(i32) #2

declare dso_local i32 @Com_DPrintf(i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @CL_InitServerInfo(i32*, %struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
