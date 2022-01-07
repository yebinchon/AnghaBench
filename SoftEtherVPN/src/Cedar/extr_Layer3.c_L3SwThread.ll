; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3SwThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3SwThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_16__*, i32, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_17__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"L3_SWITCH_START\00", align 1
@HUB_TYPE_FARM_DYNAMIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"L3_SWITCH_ONLINE\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"L3_SWITCH_OFFLINE\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"L3_SWITCH_STOP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L3SwThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %2
  br label %266

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %5, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @NoticeThreadInit(i32* %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SLog(%struct.TYPE_16__* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %250, %25
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %252

44:                                               ; preds = %39
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %142

49:                                               ; preds = %44
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @LockList(i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @Lock(i32 %58)
  store i64 0, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @LIST_NUM(i32* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %49
  store i64 0, i64* %7, align 8
  br label %67

67:                                               ; preds = %110, %66
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @LIST_NUM(i32* %71)
  %73 = icmp slt i64 %68, %72
  br i1 %73, label %74, label %113

74:                                               ; preds = %67
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i8* @LIST_DATA(i32* %77, i64 %78)
  %80 = bitcast i8* %79 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %10, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.TYPE_15__* @GetHub(%struct.TYPE_16__* %83, i32 %86)
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** %11, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %89 = icmp ne %struct.TYPE_15__* %88, null
  br i1 %89, label %90, label %108

90:                                               ; preds = %74
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95, %90
  store i32 0, i32* %9, align 4
  br label %105

102:                                              ; preds = %95
  %103 = load i64, i64* %8, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %8, align 8
  br label %105

105:                                              ; preds = %102, %101
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %107 = call i32 @ReleaseHub(%struct.TYPE_15__* %106)
  br label %109

108:                                              ; preds = %74
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %108, %105
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %7, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %7, align 8
  br label %67

113:                                              ; preds = %67
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = load i64, i64* %8, align 8
  %118 = icmp sge i64 %117, 1
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @SLog(%struct.TYPE_16__* %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %128 = call i32 @L3InitAllInterfaces(%struct.TYPE_13__* %127)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  store i32 1, i32* %130, align 8
  br label %131

131:                                              ; preds = %119, %116, %113
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @Unlock(i32 %134)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @UnlockList(i32 %140)
  br label %250

142:                                              ; preds = %44
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  br label %143

143:                                              ; preds = %257, %142
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @Lock(i32 %146)
  store i64 0, i64* %12, align 8
  br label %148

148:                                              ; preds = %177, %143
  %149 = load i64, i64* %12, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 6
  %152 = load i32*, i32** %151, align 8
  %153 = call i64 @LIST_NUM(i32* %152)
  %154 = icmp slt i64 %149, %153
  br i1 %154, label %155, label %180

155:                                              ; preds = %148
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 6
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %12, align 8
  %160 = call i8* @LIST_DATA(i32* %158, i64 %159)
  %161 = bitcast i8* %160 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %161, %struct.TYPE_14__** %15, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %155
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168, %155
  store i32 1, i32* %13, align 4
  br label %180

176:                                              ; preds = %168
  br label %177

177:                                              ; preds = %176
  %178 = load i64, i64* %12, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %12, align 8
  br label %148

180:                                              ; preds = %175, %148
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store i32 1, i32* %13, align 4
  br label %184

184:                                              ; preds = %183, %180
  %185 = load i32, i32* %13, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %221

187:                                              ; preds = %184
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @SLog(%struct.TYPE_16__* %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  %195 = call i32* @NewListFast(i32* null)
  store i32* %195, i32** %14, align 8
  store i64 0, i64* %12, align 8
  br label %196

196:                                              ; preds = %215, %187
  %197 = load i64, i64* %12, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 6
  %200 = load i32*, i32** %199, align 8
  %201 = call i64 @LIST_NUM(i32* %200)
  %202 = icmp slt i64 %197, %201
  br i1 %202, label %203, label %218

203:                                              ; preds = %196
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 6
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* %12, align 8
  %208 = call i8* @LIST_DATA(i32* %206, i64 %207)
  %209 = bitcast i8* %208 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %209, %struct.TYPE_14__** %16, align 8
  %210 = load i32*, i32** %14, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = call i32 @Insert(i32* %210, %struct.TYPE_17__* %213)
  br label %215

215:                                              ; preds = %203
  %216 = load i64, i64* %12, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %12, align 8
  br label %196

218:                                              ; preds = %196
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 2
  store i32 0, i32* %220, align 8
  br label %221

221:                                              ; preds = %218, %184
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @Unlock(i32 %224)
  %226 = load i32*, i32** %14, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %249

228:                                              ; preds = %221
  store i64 0, i64* %17, align 8
  br label %229

229:                                              ; preds = %241, %228
  %230 = load i64, i64* %17, align 8
  %231 = load i32*, i32** %14, align 8
  %232 = call i64 @LIST_NUM(i32* %231)
  %233 = icmp slt i64 %230, %232
  br i1 %233, label %234, label %244

234:                                              ; preds = %229
  %235 = load i32*, i32** %14, align 8
  %236 = load i64, i64* %17, align 8
  %237 = call i8* @LIST_DATA(i32* %235, i64 %236)
  %238 = bitcast i8* %237 to i32*
  store i32* %238, i32** %18, align 8
  %239 = load i32*, i32** %18, align 8
  %240 = call i32 @StopSession(i32* %239)
  br label %241

241:                                              ; preds = %234
  %242 = load i64, i64* %17, align 8
  %243 = add nsw i64 %242, 1
  store i64 %243, i64* %17, align 8
  br label %229

244:                                              ; preds = %229
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %246 = call i32 @L3FreeAllInterfaces(%struct.TYPE_13__* %245)
  %247 = load i32*, i32** %14, align 8
  %248 = call i32 @ReleaseList(i32* %247)
  store i32* null, i32** %14, align 8
  br label %249

249:                                              ; preds = %244, %221
  br label %250

250:                                              ; preds = %249, %131
  %251 = call i32 @SleepThread(i32 50)
  br label %39

252:                                              ; preds = %39
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  store i32 1, i32* %6, align 4
  br label %143

258:                                              ; preds = %252
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 4
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %260, align 8
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @SLog(%struct.TYPE_16__* %261, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %264)
  br label %266

266:                                              ; preds = %258, %24
  ret void
}

declare dso_local i32 @NoticeThreadInit(i32*) #1

declare dso_local i32 @SLog(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i8* @LIST_DATA(i32*, i64) #1

declare dso_local %struct.TYPE_15__* @GetHub(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_15__*) #1

declare dso_local i32 @L3InitAllInterfaces(%struct.TYPE_13__*) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Insert(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @StopSession(i32*) #1

declare dso_local i32 @L3FreeAllInterfaces(%struct.TYPE_13__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @SleepThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
