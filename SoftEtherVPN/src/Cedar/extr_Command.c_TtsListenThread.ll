; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_TtsListenThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_TtsListenThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32, i32*, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"TT_LISTEN_FAILED\00", align 1
@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"TTS_LISTEN_STARTED\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"TTS_LISTEN_STARTED_V6\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"TTS_LISTEN_FAILED_V6\00", align 1
@TtsWorkerThread = common dso_local global i32 0, align 4
@TtsIPv6AcceptThread = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"TTS_LISTEN_STOP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TtsListenThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i32, i32* @MAX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  store i32 1, i32* %8, align 4
  br label %261

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %5, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_14__* @ListenEx(i32 %30, i32 0)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 4
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %33, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_14__* @ListenEx6(i32 %36, i32 0)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = icmp eq %struct.TYPE_14__* %42, null
  br i1 %43, label %44, label %69

44:                                               ; preds = %23
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = icmp eq %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = mul nuw i64 4, %14
  %51 = trunc i64 %50 to i32
  %52 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @UniFormat(i32* %16, i32 %51, i32* %52, i32 %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @TtPrint(i32 %59, i32 %62, i32* %16)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @NoticeThreadInit(i32* %64)
  %66 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 10
  store i32 %66, i32* %68, align 4
  br label %260

69:                                               ; preds = %44, %23
  %70 = mul nuw i64 4, %14
  %71 = trunc i64 %70 to i32
  %72 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @UniFormat(i32* %16, i32 %71, i32* %72, i32 %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @TtPrint(i32 %79, i32 %82, i32* %16)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = icmp ne %struct.TYPE_14__* %86, null
  br i1 %87, label %88, label %103

88:                                               ; preds = %69
  %89 = mul nuw i64 4, %14
  %90 = trunc i64 %89 to i32
  %91 = call i32* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @UniFormat(i32* %16, i32 %90, i32* %91, i32 %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @TtPrint(i32 %98, i32 %101, i32* %16)
  br label %118

103:                                              ; preds = %69
  %104 = mul nuw i64 4, %14
  %105 = trunc i64 %104 to i32
  %106 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @UniFormat(i32* %16, i32 %105, i32* %106, i32 %109)
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @TtPrint(i32 %113, i32 %116, i32* %16)
  br label %118

118:                                              ; preds = %103, %88
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = icmp ne %struct.TYPE_14__* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @AddRef(i32 %128)
  br label %130

130:                                              ; preds = %123, %118
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = icmp ne %struct.TYPE_14__* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @AddRef(i32 %140)
  br label %142

142:                                              ; preds = %135, %130
  %143 = call i64 (...) @GetNumberOfCpu()
  store i64 %143, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %144

144:                                              ; preds = %168, %142
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* %10, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %171

148:                                              ; preds = %144
  %149 = call %struct.TYPE_13__* @ZeroMalloc(i32 72)
  store %struct.TYPE_13__* %149, %struct.TYPE_13__** %11, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 8
  store %struct.TYPE_13__* %150, %struct.TYPE_13__** %152, align 8
  %153 = load i32, i32* @TtsWorkerThread, align 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %155 = call i8* @NewThread(i32 %153, %struct.TYPE_13__* %154)
  %156 = bitcast i8* %155 to i32*
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  store i32* %156, i32** %158, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @WaitThreadInit(i32* %161)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %167 = call i32 @Add(i32 %165, %struct.TYPE_13__* %166)
  br label %168

168:                                              ; preds = %148
  %169 = load i64, i64* %9, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %9, align 8
  br label %144

171:                                              ; preds = %144
  %172 = load i32*, i32** %3, align 8
  %173 = call i32 @NoticeThreadInit(i32* %172)
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 7
  store i32* null, i32** %175, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = icmp ne %struct.TYPE_14__* %178, null
  br i1 %179, label %180, label %187

180:                                              ; preds = %171
  %181 = load i32, i32* @TtsIPv6AcceptThread, align 4
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %183 = call i8* @NewThread(i32 %181, %struct.TYPE_13__* %182)
  %184 = bitcast i8* %183 to i32*
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 7
  store i32* %184, i32** %186, align 8
  br label %187

187:                                              ; preds = %180, %171
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = call i32 @TtsAcceptProc(%struct.TYPE_13__* %188, %struct.TYPE_14__* %191)
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 7
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %207

197:                                              ; preds = %187
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 7
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* @INFINITE, align 4
  %202 = call i32 @WaitThread(i32* %200, i32 %201)
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 7
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @ReleaseThread(i32* %205)
  br label %207

207:                                              ; preds = %197, %187
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %215 = call i32 @TtPrint(i32 %210, i32 %213, i32* %214)
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 4
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %217, align 8
  %219 = call i32 @ReleaseSock(%struct.TYPE_14__* %218)
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = call i32 @ReleaseSock(%struct.TYPE_14__* %222)
  store i64 0, i64* %9, align 8
  br label %224

224:                                              ; preds = %256, %207
  %225 = load i64, i64* %9, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i64 @LIST_NUM(i32 %228)
  %230 = icmp slt i64 %225, %229
  br i1 %230, label %231, label %259

231:                                              ; preds = %224
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i64, i64* %9, align 8
  %236 = call %struct.TYPE_13__* @LIST_DATA(i32 %234, i64 %235)
  store %struct.TYPE_13__* %236, %struct.TYPE_13__** %12, align 8
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @SetSockEvent(i32 %239)
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* @INFINITE, align 4
  %245 = call i32 @WaitThread(i32* %243, i32 %244)
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @ReleaseThread(i32* %248)
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @ReleaseSockEvent(i32 %252)
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %255 = call i32 @Free(%struct.TYPE_13__* %254)
  br label %256

256:                                              ; preds = %231
  %257 = load i64, i64* %9, align 8
  %258 = add nsw i64 %257, 1
  store i64 %258, i64* %9, align 8
  br label %224

259:                                              ; preds = %224
  br label %260

260:                                              ; preds = %259, %49
  store i32 0, i32* %8, align 4
  br label %261

261:                                              ; preds = %260, %22
  %262 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %262)
  %263 = load i32, i32* %8, align 4
  switch i32 %263, label %265 [
    i32 0, label %264
    i32 1, label %264
  ]

264:                                              ; preds = %261, %261
  ret void

265:                                              ; preds = %261
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_14__* @ListenEx(i32, i32) #2

declare dso_local %struct.TYPE_14__* @ListenEx6(i32, i32) #2

declare dso_local i32 @UniFormat(i32*, i32, i32*, i32) #2

declare dso_local i32* @_UU(i8*) #2

declare dso_local i32 @TtPrint(i32, i32, i32*) #2

declare dso_local i32 @NoticeThreadInit(i32*) #2

declare dso_local i32 @AddRef(i32) #2

declare dso_local i64 @GetNumberOfCpu(...) #2

declare dso_local %struct.TYPE_13__* @ZeroMalloc(i32) #2

declare dso_local i8* @NewThread(i32, %struct.TYPE_13__*) #2

declare dso_local i32 @WaitThreadInit(i32*) #2

declare dso_local i32 @Add(i32, %struct.TYPE_13__*) #2

declare dso_local i32 @TtsAcceptProc(%struct.TYPE_13__*, %struct.TYPE_14__*) #2

declare dso_local i32 @WaitThread(i32*, i32) #2

declare dso_local i32 @ReleaseThread(i32*) #2

declare dso_local i32 @ReleaseSock(%struct.TYPE_14__*) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_13__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @SetSockEvent(i32) #2

declare dso_local i32 @ReleaseSockEvent(i32) #2

declare dso_local i32 @Free(%struct.TYPE_13__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
