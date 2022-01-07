; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_sync.c_netplay_sync_post_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_sync.c_netplay_sync_post_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i64, i64, i32, i64, i32, i32, i32, i64, i32, i64, i32*, i32, i64, i32, i64, %struct.netplay_connection*, i64, i64*, %struct.delta_frame*, i32, i64, i64 }
%struct.netplay_connection = type { i64, i64, i32 }
%struct.delta_frame = type { i64*, i64*, i32*, i64 }
%struct.TYPE_12__ = type { i32, i32*, i32* }

@NETPLAY_STALL_INPUT_LATENCY = common dso_local global i64 0, align 8
@NETPLAY_CONNECTION_CONNECTED = common dso_local global i64 0, align 8
@NETPLAY_QUIRK_INITIALIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Netplay savestate loading failed: Prepare for desync!\0A\00", align 1
@NETPLAY_FRAME_RUN_TIME_WINDOW = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@CATCH_UP_CHECK_TIME_USEC = common dso_local global i64 0, align 8
@NETPLAY_CONNECTION_PLAYING = common dso_local global i64 0, align 8
@NETPLAY_MAX_REQ_STALL_FREQUENCY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netplay_sync_post_frame(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.delta_frame*, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.delta_frame*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @NEXT_PTR(i64 %24)
  %26 = ptrtoint i8* %25 to i64
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %21, %2
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NETPLAY_STALL_INPUT_LATENCY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %36, %33
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = icmp slt i64 %45, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %42
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @NEXT_PTR(i64 %57)
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 5
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %54, %42, %36
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 28
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = icmp sle i32 %74, 1
  br i1 %75, label %87, label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NETPLAY_CONNECTION_CONNECTED, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 33
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %82, %76, %71
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 8
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 9
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %87
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 10
  store i32 0, i32* %104, align 8
  %105 = call i32 (...) @input_driver_unset_nonblock_state()
  %106 = call i32 (...) @driver_set_nonblock_state()
  br label %107

107:                                              ; preds = %102, %87
  br label %677

108:                                              ; preds = %82
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = call i32 (...) @core_reset()
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 11
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 9
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 12
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 8
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 13
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 14
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %225, label %132

132:                                              ; preds = %117
  store i32 1, i32* %7, align 4
  br label %133

133:                                              ; preds = %166, %132
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 8
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 15
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %133
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 8
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %144, %147
  br label %149

149:                                              ; preds = %141, %133
  %150 = phi i1 [ false, %133 ], [ %148, %141 ]
  br i1 %150, label %151, label %181

151:                                              ; preds = %149
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 30
  %154 = load %struct.delta_frame*, %struct.delta_frame** %153, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 9
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %154, i64 %157
  store %struct.delta_frame* %158, %struct.delta_frame** %8, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 9
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @netplay_resolve_input(%struct.TYPE_13__* %159, i64 %162, i32 1)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %151
  store i32 0, i32* %7, align 4
  br label %181

166:                                              ; preds = %151
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %168 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %169 = call i32 @netplay_handle_frame_hash(%struct.TYPE_13__* %167, %struct.delta_frame* %168)
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 9
  %172 = load i64, i64* %171, align 8
  %173 = call i8* @NEXT_PTR(i64 %172)
  %174 = ptrtoint i8* %173 to i64
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 9
  store i64 %174, i64* %176, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 8
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %178, align 8
  br label %133

181:                                              ; preds = %165, %149
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 9
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 12
  store i64 %184, i64* %186, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 8
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 13
  store i64 %189, i64* %191, align 8
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %224

194:                                              ; preds = %181
  br label %195

195:                                              ; preds = %211, %194
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 13
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp slt i64 %198, %201
  br i1 %202, label %203, label %223

203:                                              ; preds = %195
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 12
  %207 = load i64, i64* %206, align 8
  %208 = call i64 @netplay_resolve_input(%struct.TYPE_13__* %204, i64 %207, i32 1)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  br label %223

211:                                              ; preds = %203
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 12
  %214 = load i64, i64* %213, align 8
  %215 = call i8* @NEXT_PTR(i64 %214)
  %216 = ptrtoint i8* %215 to i64
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 12
  store i64 %216, i64* %218, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 13
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %221, 1
  store i64 %222, i64* %220, align 8
  br label %195

223:                                              ; preds = %210, %195
  br label %224

224:                                              ; preds = %223, %181
  br label %225

225:                                              ; preds = %224, %117
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 14
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %238, label %230

230:                                              ; preds = %225
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 13
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp slt i64 %233, %236
  br i1 %237, label %238, label %448

238:                                              ; preds = %230, %225
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 16
  store i32 1, i32* %240, align 8
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 32
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %268

245:                                              ; preds = %238
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 12
  %248 = load i64, i64* %247, align 8
  %249 = call i64 @PREV_PTR(i64 %248)
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 12
  store i64 %249, i64* %251, align 8
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 13
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %254, -1
  store i64 %255, i64* %253, align 8
  %256 = call i32 (...) @core_run()
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 12
  %259 = load i64, i64* %258, align 8
  %260 = call i8* @NEXT_PTR(i64 %259)
  %261 = ptrtoint i8* %260 to i64
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 12
  store i64 %261, i64* %263, align 8
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 13
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %266, 1
  store i64 %267, i64* %265, align 8
  br label %268

268:                                              ; preds = %245, %238
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 17
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @NETPLAY_QUIRK_INITIALIZATION, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %268
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %277 = call i32 @netplay_wait_and_init_serialization(%struct.TYPE_13__* %276)
  br label %278

278:                                              ; preds = %275, %268
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store i32* null, i32** %279, align 8
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 30
  %282 = load %struct.delta_frame*, %struct.delta_frame** %281, align 8
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 12
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %282, i64 %285
  %287 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  store i32* %288, i32** %289, align 8
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 31
  %292 = load i32, i32* %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 %292, i32* %293, align 8
  %294 = call i32 @core_unserialize(%struct.TYPE_12__* %9)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %278
  %297 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %298

298:                                              ; preds = %296, %278
  br label %299

299:                                              ; preds = %405, %298
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 13
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = icmp slt i64 %302, %305
  br i1 %306, label %307, label %406

307:                                              ; preds = %299
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 30
  %310 = load %struct.delta_frame*, %struct.delta_frame** %309, align 8
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 12
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %310, i64 %313
  store %struct.delta_frame* %314, %struct.delta_frame** %12, align 8
  %315 = load %struct.delta_frame*, %struct.delta_frame** %12, align 8
  %316 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %315, i32 0, i32 2
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store i32* %317, i32** %318, align 8
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 31
  %321 = load i32, i32* %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 %321, i32* %322, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  store i32* null, i32** %323, align 8
  %324 = call i64 (...) @cpu_features_get_time_usec()
  store i64 %324, i64* %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @memset(i32* %326, i32 0, i32 %328)
  %330 = call i32 @core_serialize(%struct.TYPE_12__* %9)
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 13
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 15
  %336 = load i64, i64* %335, align 8
  %337 = icmp slt i64 %333, %336
  br i1 %337, label %338, label %342

338:                                              ; preds = %307
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %340 = load %struct.delta_frame*, %struct.delta_frame** %12, align 8
  %341 = call i32 @netplay_handle_frame_hash(%struct.TYPE_13__* %339, %struct.delta_frame* %340)
  br label %342

342:                                              ; preds = %338, %307
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 12
  %346 = load i64, i64* %345, align 8
  %347 = call i64 @netplay_resolve_input(%struct.TYPE_13__* %343, i64 %346, i32 1)
  %348 = call i32 (...) @core_run()
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 12
  %351 = load i64, i64* %350, align 8
  %352 = call i8* @NEXT_PTR(i64 %351)
  %353 = ptrtoint i8* %352 to i64
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 12
  store i64 %353, i64* %355, align 8
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 13
  %358 = load i64, i64* %357, align 8
  %359 = add nsw i64 %358, 1
  store i64 %359, i64* %357, align 8
  %360 = call i64 (...) @cpu_features_get_time_usec()
  %361 = load i64, i64* %10, align 8
  %362 = sub nsw i64 %360, %361
  store i64 %362, i64* %11, align 8
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 29
  %365 = load i64*, i64** %364, align 8
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 19
  %368 = load i64, i64* %367, align 8
  %369 = getelementptr inbounds i64, i64* %365, i64 %368
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 18
  %373 = load i32, i32* %372, align 8
  %374 = sext i32 %373 to i64
  %375 = sub nsw i64 %374, %370
  %376 = trunc i64 %375 to i32
  store i32 %376, i32* %372, align 8
  %377 = load i64, i64* %11, align 8
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 29
  %380 = load i64*, i64** %379, align 8
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 19
  %383 = load i64, i64* %382, align 8
  %384 = getelementptr inbounds i64, i64* %380, i64 %383
  store i64 %377, i64* %384, align 8
  %385 = load i64, i64* %11, align 8
  %386 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 18
  %388 = load i32, i32* %387, align 8
  %389 = sext i32 %388 to i64
  %390 = add nsw i64 %389, %385
  %391 = trunc i64 %390 to i32
  store i32 %391, i32* %387, align 8
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 19
  %394 = load i64, i64* %393, align 8
  %395 = add i64 %394, 1
  store i64 %395, i64* %393, align 8
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 19
  %398 = load i64, i64* %397, align 8
  %399 = load i32, i32* @NETPLAY_FRAME_RUN_TIME_WINDOW, align 4
  %400 = sext i32 %399 to i64
  %401 = icmp uge i64 %398, %400
  br i1 %401, label %402, label %405

402:                                              ; preds = %342
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 19
  store i64 0, i64* %404, align 8
  br label %405

405:                                              ; preds = %402, %342
  br label %299

406:                                              ; preds = %299
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 18
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* @NETPLAY_FRAME_RUN_TIME_WINDOW, align 4
  %411 = sdiv i32 %409, %410
  %412 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 20
  store i32 %411, i32* %413, align 8
  %414 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %414, i32 0, i32 15
  %416 = load i64, i64* %415, align 8
  %417 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = icmp slt i64 %416, %419
  br i1 %420, label %421, label %432

421:                                              ; preds = %406
  %422 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %422, i32 0, i32 21
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %425, i32 0, i32 9
  store i64 %424, i64* %426, align 8
  %427 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %427, i32 0, i32 15
  %429 = load i64, i64* %428, align 8
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 8
  store i64 %429, i64* %431, align 8
  br label %443

432:                                              ; preds = %406
  %433 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %436, i32 0, i32 9
  store i64 %435, i64* %437, align 8
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %441, i32 0, i32 8
  store i64 %440, i64* %442, align 8
  br label %443

443:                                              ; preds = %432, %421
  %444 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %445 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %444, i32 0, i32 16
  store i32 0, i32* %445, align 8
  %446 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %446, i32 0, i32 14
  store i32 0, i32* %447, align 8
  br label %448

448:                                              ; preds = %443, %230
  %449 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %450 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %449, i32 0, i32 28
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %494

453:                                              ; preds = %448
  %454 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %454, i32 0, i32 15
  %456 = load i64, i64* %455, align 8
  %457 = trunc i64 %456 to i32
  store i32 %457, i32* %6, align 4
  store i32 %457, i32* %5, align 4
  store i32 0, i32* %13, align 4
  br label %458

458:                                              ; preds = %490, %453
  %459 = load i32, i32* %13, align 4
  %460 = load i32, i32* @MAX_CLIENTS, align 4
  %461 = icmp slt i32 %459, %460
  br i1 %461, label %462, label %493

462:                                              ; preds = %458
  %463 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %464 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %463, i32 0, i32 6
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* %13, align 4
  %467 = shl i32 1, %466
  %468 = and i32 %465, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %471, label %470

470:                                              ; preds = %462
  br label %490

471:                                              ; preds = %462
  %472 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %472, i32 0, i32 22
  %474 = load i32*, i32** %473, align 8
  %475 = load i32, i32* %13, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %474, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = load i32, i32* %6, align 4
  %480 = icmp sgt i32 %478, %479
  br i1 %480, label %481, label %489

481:                                              ; preds = %471
  %482 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %482, i32 0, i32 22
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* %13, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  %488 = load i32, i32* %487, align 4
  store i32 %488, i32* %6, align 4
  br label %489

489:                                              ; preds = %481, %471
  br label %490

490:                                              ; preds = %489, %470
  %491 = load i32, i32* %13, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %13, align 4
  br label %458

493:                                              ; preds = %458
  br label %498

494:                                              ; preds = %448
  %495 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %496 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %495, i32 0, i32 23
  %497 = load i32, i32* %496, align 8
  store i32 %497, i32* %6, align 4
  store i32 %497, i32* %5, align 4
  br label %498

498:                                              ; preds = %494, %493
  %499 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %500 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %499, i32 0, i32 10
  %501 = load i32, i32* %500, align 8
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %517

503:                                              ; preds = %498
  %504 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %505 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %504, i32 0, i32 3
  %506 = load i64, i64* %505, align 8
  %507 = add nsw i64 %506, 1
  %508 = load i32, i32* %5, align 4
  %509 = sext i32 %508 to i64
  %510 = icmp sge i64 %507, %509
  br i1 %510, label %511, label %516

511:                                              ; preds = %503
  %512 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %513 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %512, i32 0, i32 10
  store i32 0, i32* %513, align 8
  %514 = call i32 (...) @input_driver_unset_nonblock_state()
  %515 = call i32 (...) @driver_set_nonblock_state()
  br label %516

516:                                              ; preds = %511, %503
  br label %677

517:                                              ; preds = %498
  %518 = load i32, i32* %4, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %673, label %520

520:                                              ; preds = %517
  %521 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %521, i32 0, i32 3
  %523 = load i64, i64* %522, align 8
  %524 = add nsw i64 %523, 3
  %525 = load i32, i32* %5, align 4
  %526 = sext i32 %525 to i64
  %527 = icmp slt i64 %524, %526
  br i1 %527, label %528, label %579

528:                                              ; preds = %520
  %529 = call i64 (...) @cpu_features_get_time_usec()
  store i64 %529, i64* %14, align 8
  %530 = load i32, i32* %5, align 4
  %531 = sext i32 %530 to i64
  %532 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %533 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %532, i32 0, i32 3
  %534 = load i64, i64* %533, align 8
  %535 = sub nsw i64 %531, %534
  %536 = trunc i64 %535 to i32
  store i32 %536, i32* %15, align 4
  %537 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %537, i32 0, i32 24
  %539 = load i64, i64* %538, align 8
  %540 = icmp eq i64 %539, 0
  br i1 %540, label %541, label %548

541:                                              ; preds = %528
  %542 = load i64, i64* %14, align 8
  %543 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %544 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %543, i32 0, i32 24
  store i64 %542, i64* %544, align 8
  %545 = load i32, i32* %15, align 4
  %546 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %547 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %546, i32 0, i32 25
  store i32 %545, i32* %547, align 8
  br label %578

548:                                              ; preds = %528
  %549 = load i64, i64* %14, align 8
  %550 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %551 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %550, i32 0, i32 24
  %552 = load i64, i64* %551, align 8
  %553 = sub nsw i64 %549, %552
  %554 = load i64, i64* @CATCH_UP_CHECK_TIME_USEC, align 8
  %555 = icmp sgt i64 %553, %554
  br i1 %555, label %556, label %577

556:                                              ; preds = %548
  %557 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %558 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %557, i32 0, i32 25
  %559 = load i32, i32* %558, align 8
  %560 = load i32, i32* %15, align 4
  %561 = icmp sle i32 %559, %560
  br i1 %561, label %562, label %569

562:                                              ; preds = %556
  %563 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %564 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %563, i32 0, i32 10
  store i32 1, i32* %564, align 8
  %565 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %566 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %565, i32 0, i32 24
  store i64 0, i64* %566, align 8
  %567 = call i32 (...) @input_driver_set_nonblock_state()
  %568 = call i32 (...) @driver_set_nonblock_state()
  br label %576

569:                                              ; preds = %556
  %570 = load i64, i64* %14, align 8
  %571 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %572 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %571, i32 0, i32 24
  store i64 %570, i64* %572, align 8
  %573 = load i32, i32* %15, align 4
  %574 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %575 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %574, i32 0, i32 25
  store i32 %573, i32* %575, align 8
  br label %576

576:                                              ; preds = %569, %562
  br label %577

577:                                              ; preds = %576, %548
  br label %578

578:                                              ; preds = %577, %541
  br label %672

579:                                              ; preds = %520
  %580 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %581 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %580, i32 0, i32 3
  %582 = load i64, i64* %581, align 8
  %583 = add nsw i64 %582, 3
  %584 = load i32, i32* %6, align 4
  %585 = sext i32 %584 to i64
  %586 = icmp slt i64 %583, %585
  br i1 %586, label %587, label %668

587:                                              ; preds = %579
  %588 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %589 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %588, i32 0, i32 24
  store i64 0, i64* %589, align 8
  store i64 0, i64* %16, align 8
  br label %590

590:                                              ; preds = %664, %587
  %591 = load i64, i64* %16, align 8
  %592 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %593 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %592, i32 0, i32 26
  %594 = load i64, i64* %593, align 8
  %595 = icmp ult i64 %591, %594
  br i1 %595, label %596, label %667

596:                                              ; preds = %590
  %597 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %598 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %597, i32 0, i32 27
  %599 = load %struct.netplay_connection*, %struct.netplay_connection** %598, align 8
  %600 = load i64, i64* %16, align 8
  %601 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %599, i64 %600
  store %struct.netplay_connection* %601, %struct.netplay_connection** %18, align 8
  %602 = load %struct.netplay_connection*, %struct.netplay_connection** %18, align 8
  %603 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %602, i32 0, i32 2
  %604 = load i32, i32* %603, align 8
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %612

606:                                              ; preds = %596
  %607 = load %struct.netplay_connection*, %struct.netplay_connection** %18, align 8
  %608 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %607, i32 0, i32 0
  %609 = load i64, i64* %608, align 8
  %610 = load i64, i64* @NETPLAY_CONNECTION_PLAYING, align 8
  %611 = icmp ne i64 %609, %610
  br i1 %611, label %612, label %613

612:                                              ; preds = %606, %596
  br label %664

613:                                              ; preds = %606
  %614 = load i64, i64* %16, align 8
  %615 = add i64 %614, 1
  %616 = trunc i64 %615 to i32
  store i32 %616, i32* %17, align 4
  %617 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %618 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %617, i32 0, i32 3
  %619 = load i64, i64* %618, align 8
  %620 = add nsw i64 %619, 3
  %621 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %622 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %621, i32 0, i32 22
  %623 = load i32*, i32** %622, align 8
  %624 = load i32, i32* %17, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i32, i32* %623, i64 %625
  %627 = load i32, i32* %626, align 4
  %628 = sext i32 %627 to i64
  %629 = icmp slt i64 %620, %628
  br i1 %629, label %630, label %663

630:                                              ; preds = %613
  %631 = load %struct.netplay_connection*, %struct.netplay_connection** %18, align 8
  %632 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %631, i32 0, i32 1
  %633 = load i64, i64* %632, align 8
  %634 = load i64, i64* @NETPLAY_MAX_REQ_STALL_FREQUENCY, align 8
  %635 = add nsw i64 %633, %634
  %636 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %637 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %636, i32 0, i32 3
  %638 = load i64, i64* %637, align 8
  %639 = icmp slt i64 %635, %638
  br i1 %639, label %640, label %662

640:                                              ; preds = %630
  %641 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %642 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %641, i32 0, i32 3
  %643 = load i64, i64* %642, align 8
  %644 = load %struct.netplay_connection*, %struct.netplay_connection** %18, align 8
  %645 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %644, i32 0, i32 1
  store i64 %643, i64* %645, align 8
  %646 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %647 = load %struct.netplay_connection*, %struct.netplay_connection** %18, align 8
  %648 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %649 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %648, i32 0, i32 22
  %650 = load i32*, i32** %649, align 8
  %651 = load i32, i32* %17, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i32, i32* %650, i64 %652
  %654 = load i32, i32* %653, align 4
  %655 = sext i32 %654 to i64
  %656 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %657 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %656, i32 0, i32 3
  %658 = load i64, i64* %657, align 8
  %659 = sub nsw i64 %655, %658
  %660 = add nsw i64 %659, 1
  %661 = call i32 @netplay_cmd_stall(%struct.TYPE_13__* %646, %struct.netplay_connection* %647, i64 %660)
  br label %662

662:                                              ; preds = %640, %630
  br label %663

663:                                              ; preds = %662, %613
  br label %664

664:                                              ; preds = %663, %612
  %665 = load i64, i64* %16, align 8
  %666 = add i64 %665, 1
  store i64 %666, i64* %16, align 8
  br label %590

667:                                              ; preds = %590
  br label %671

668:                                              ; preds = %579
  %669 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %670 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %669, i32 0, i32 24
  store i64 0, i64* %670, align 8
  br label %671

671:                                              ; preds = %668, %667
  br label %672

672:                                              ; preds = %671, %578
  br label %676

673:                                              ; preds = %517
  %674 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %675 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %674, i32 0, i32 24
  store i64 0, i64* %675, align 8
  br label %676

676:                                              ; preds = %673, %672
  br label %677

677:                                              ; preds = %107, %676, %516
  ret void
}

declare dso_local i8* @NEXT_PTR(i64) #1

declare dso_local i32 @input_driver_unset_nonblock_state(...) #1

declare dso_local i32 @driver_set_nonblock_state(...) #1

declare dso_local i32 @core_reset(...) #1

declare dso_local i64 @netplay_resolve_input(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @netplay_handle_frame_hash(%struct.TYPE_13__*, %struct.delta_frame*) #1

declare dso_local i64 @PREV_PTR(i64) #1

declare dso_local i32 @core_run(...) #1

declare dso_local i32 @netplay_wait_and_init_serialization(%struct.TYPE_13__*) #1

declare dso_local i32 @core_unserialize(%struct.TYPE_12__*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i64 @cpu_features_get_time_usec(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @core_serialize(%struct.TYPE_12__*) #1

declare dso_local i32 @input_driver_set_nonblock_state(...) #1

declare dso_local i32 @netplay_cmd_stall(%struct.TYPE_13__*, %struct.netplay_connection*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
