; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_init.c_netplay_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_init.c_netplay_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i8*, i32, %struct.TYPE_10__, i32, %struct.retro_callbacks, i32 }
%struct.TYPE_10__ = type { i32, i8* }
%struct.retro_callbacks = type { i32 }

@NETPLAY_CONNECTION_SPECTATING = common dso_local global i8* null, align 8
@NETPLAY_CONNECTION_NONE = common dso_local global i8* null, align 8
@RARCH_DEFAULT_NICK = common dso_local global i8* null, align 8
@MAX_INPUT_DEVICES = common dso_local global i32 0, align 4
@RETRO_DEVICE_MASK = common dso_local global i32 0, align 4
@RETRO_DEVICE_KEYBOARD = common dso_local global i32 0, align 4
@RETRO_DEVICE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Netplay does not support input device %u\0A\00", align 1
@NETPLAY_CONNECTION_INIT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @netplay_new(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.retro_callbacks* %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.retro_callbacks*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store %struct.retro_callbacks* %5, %struct.retro_callbacks** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  %23 = call i64 @calloc(i32 1, i32 112)
  %24 = inttoptr i64 %23 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %20, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %9
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  br label %264

28:                                               ; preds = %9
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 17
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 16
  %36 = load %struct.retro_callbacks*, %struct.retro_callbacks** %16, align 8
  %37 = bitcast %struct.retro_callbacks* %35 to i8*
  %38 = bitcast %struct.retro_callbacks* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load i8*, i8** %11, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i8*, i8** %12, align 8
  %43 = icmp eq i8* %42, null
  br label %44

44:                                               ; preds = %41, %28
  %45 = phi i1 [ false, %28 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  store i32 0, i32* %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %17, align 4
  br label %58

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 6
  store i32 0, i32* %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 7
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 15
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %58
  %80 = load i8*, i8** @NETPLAY_CONNECTION_SPECTATING, align 8
  br label %83

81:                                               ; preds = %58
  %82 = load i8*, i8** @NETPLAY_CONNECTION_NONE, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i8* [ %80, %79 ], [ %82, %81 ]
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 12
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 11
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %93, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 8
  store i32 0, i32* %95, align 8
  br label %108

96:                                               ; preds = %83
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 14
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 11
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %100, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 8
  store i32 1, i32* %102, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 11
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 -1, i32* %107, align 8
  br label %108

108:                                              ; preds = %96, %91
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 13
  %111 = load i32, i32* %110, align 8
  %112 = load i8*, i8** %18, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i8*, i8** %18, align 8
  br label %121

119:                                              ; preds = %108
  %120 = load i8*, i8** @RARCH_DEFAULT_NICK, align 8
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i8* [ %118, %117 ], [ %120, %119 ]
  %123 = call i32 @strlcpy(i32 %111, i8* %122, i32 4)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @init_socket(%struct.TYPE_9__* %124, i8* %125, i8* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %121
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %132 = call i32 @free(%struct.TYPE_9__* %131)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  br label %264

133:                                              ; preds = %121
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %135 = call i32 @netplay_init_buffers(%struct.TYPE_9__* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %139 = call i32 @free(%struct.TYPE_9__* %138)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  br label %264

140:                                              ; preds = %133
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %188

145:                                              ; preds = %140
  store i32 0, i32* %21, align 4
  br label %146

146:                                              ; preds = %184, %145
  %147 = load i32, i32* %21, align 4
  %148 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %187

150:                                              ; preds = %146
  %151 = load i32, i32* %21, align 4
  %152 = call i32 @input_config_get_device(i32 %151)
  store i32 %152, i32* %22, align 4
  %153 = load i32, i32* %22, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 9
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %21, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %153, i32* %159, align 4
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* @RETRO_DEVICE_MASK, align 4
  %162 = and i32 %160, %161
  %163 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %150
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 10
  store i32 1, i32* %167, align 8
  %168 = call i32 (...) @netplay_key_hton_init()
  br label %169

169:                                              ; preds = %165, %150
  %170 = load i32, i32* %22, align 4
  %171 = load i32, i32* @RETRO_DEVICE_NONE, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %169
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %175 = load i32, i32* %21, align 4
  %176 = shl i32 1, %175
  %177 = call i32 @netplay_expected_input_size(%struct.TYPE_9__* %174, i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %173
  %180 = load i32, i32* %21, align 4
  %181 = add i32 %180, 1
  %182 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %179, %173, %169
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %21, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %21, align 4
  br label %146

187:                                              ; preds = %146
  br label %204

188:                                              ; preds = %140
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 11
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i64 0
  %194 = call i32 @netplay_handshake_init_send(%struct.TYPE_9__* %189, %struct.TYPE_10__* %193)
  %195 = load i8*, i8** @NETPLAY_CONNECTION_INIT, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 11
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  store i8* %195, i8** %200, align 8
  %201 = load i8*, i8** @NETPLAY_CONNECTION_INIT, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 12
  store i8* %201, i8** %203, align 8
  br label %204

204:                                              ; preds = %188, %187
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %204
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @socket_nonblock(i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %209
  br label %230

216:                                              ; preds = %209
  br label %228

217:                                              ; preds = %204
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 11
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @socket_nonblock(i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %217
  br label %230

227:                                              ; preds = %217
  br label %228

228:                                              ; preds = %227, %216
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %229, %struct.TYPE_9__** %10, align 8
  br label %264

230:                                              ; preds = %226, %215
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp sge i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @socket_close(i32 %238)
  br label %240

240:                                              ; preds = %235, %230
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 11
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = icmp ne %struct.TYPE_10__* %243, null
  br i1 %244, label %245, label %261

245:                                              ; preds = %240
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 11
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i64 0
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp sge i32 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %245
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 11
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @socket_close(i32 %259)
  br label %261

261:                                              ; preds = %253, %245, %240
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %263 = call i32 @free(%struct.TYPE_9__* %262)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  br label %264

264:                                              ; preds = %261, %228, %137, %130, %27
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  ret %struct.TYPE_9__* %265
}

declare dso_local i64 @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @init_socket(%struct.TYPE_9__*, i8*, i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @netplay_init_buffers(%struct.TYPE_9__*) #1

declare dso_local i32 @input_config_get_device(i32) #1

declare dso_local i32 @netplay_key_hton_init(...) #1

declare dso_local i32 @netplay_expected_input_size(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @RARCH_WARN(i8*, i32) #1

declare dso_local i32 @netplay_handshake_init_send(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @socket_nonblock(i32) #1

declare dso_local i32 @socket_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
