; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_thread_wrapper.c_video_thread_loop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_thread_wrapper.c_video_thread_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, %struct.video_viewport, %struct.TYPE_7__, i32, %struct.TYPE_6__*, i32, i32 }
%struct.video_viewport = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i64*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (i32, i32, i32, i32, i32, i32, i64*, i32*)*, i32 (i32, %struct.video_viewport*)*, i64 (i32)*, i64 (i32)*, i64 (i32)* }

@CMD_VIDEO_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @video_thread_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @video_thread_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_viewport, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %3, align 8
  br label %14

14:                                               ; preds = %277, %1
  store i32 0, i32* %5, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @slock_lock(i32 %17)
  br label %19

19:                                               ; preds = %34, %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CMD_VIDEO_NONE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %25, %19
  %33 = phi i1 [ false, %19 ], [ %31, %25 ]
  br i1 %33, label %34, label %42

34:                                               ; preds = %32
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @scond_wait(i32 %37, i32 %40)
  br label %19

42:                                               ; preds = %32
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %4, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @slock_unlock(i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = call i64 @video_thread_handle_packet(%struct.TYPE_8__* %57, i32* %4)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  ret void

61:                                               ; preds = %49
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %277

64:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %65 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %6, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %6, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %6, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %6, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %6, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %6, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @slock_lock(i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = call i32 @thread_update_driver_state(%struct.TYPE_8__* %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 9
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = icmp ne %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %134

82:                                               ; preds = %64
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 9
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32 (i32, i32, i32, i32, i32, i32, i64*, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i64*, i32*)** %86, align 8
  %88 = icmp ne i32 (i32, i32, i32, i32, i32, i32, i64*, i32*)* %87, null
  br i1 %88, label %89, label %134

89:                                               ; preds = %82
  %90 = call i32 @video_driver_build_info(i32* %11)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 9
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32 (i32, i32, i32, i32, i32, i32, i64*, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i64*, i32*)** %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %89
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  br label %131

130:                                              ; preds = %89
  br label %131

131:                                              ; preds = %130, %125
  %132 = phi i64* [ %129, %125 ], [ null, %130 ]
  %133 = call i32 %95(i32 %98, i32 %102, i32 %106, i32 %110, i32 %114, i32 %118, i64* %132, i32* %11)
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %131, %82, %64
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 7
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @slock_unlock(i32 %138)
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 9
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = icmp ne %struct.TYPE_6__* %142, null
  br i1 %143, label %144, label %168

144:                                              ; preds = %134
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 9
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  %149 = load i64 (i32)*, i64 (i32)** %148, align 8
  %150 = icmp ne i64 (i32)* %149, null
  br i1 %150, label %151, label %168

151:                                              ; preds = %144
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 9
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 4
  %159 = load i64 (i32)*, i64 (i32)** %158, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = call i64 %159(i32 %162)
  %164 = icmp ne i64 %163, 0
  br label %165

165:                                              ; preds = %154, %151
  %166 = phi i1 [ false, %151 ], [ %164, %154 ]
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %165, %144, %134
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 9
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = icmp ne %struct.TYPE_6__* %171, null
  br i1 %172, label %173, label %197

173:                                              ; preds = %168
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 9
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 3
  %178 = load i64 (i32)*, i64 (i32)** %177, align 8
  %179 = icmp ne i64 (i32)* %178, null
  br i1 %179, label %180, label %197

180:                                              ; preds = %173
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 9
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  %188 = load i64 (i32)*, i64 (i32)** %187, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 8
  %191 = load i32, i32* %190, align 8
  %192 = call i64 %188(i32 %191)
  %193 = icmp ne i64 %192, 0
  br label %194

194:                                              ; preds = %183, %180
  %195 = phi i1 [ false, %180 ], [ %193, %183 ]
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %194, %173, %168
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 9
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = icmp ne %struct.TYPE_6__* %200, null
  br i1 %201, label %202, label %226

202:                                              ; preds = %197
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 9
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = load i64 (i32)*, i64 (i32)** %206, align 8
  %208 = icmp ne i64 (i32)* %207, null
  br i1 %208, label %209, label %226

209:                                              ; preds = %202
  %210 = load i32, i32* %7, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %209
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 9
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 2
  %217 = load i64 (i32)*, i64 (i32)** %216, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 8
  %221 = call i64 %217(i32 %220)
  %222 = icmp ne i64 %221, 0
  br label %223

223:                                              ; preds = %212, %209
  %224 = phi i1 [ false, %209 ], [ %222, %212 ]
  %225 = zext i1 %224 to i32
  store i32 %225, i32* %10, align 4
  br label %226

226:                                              ; preds = %223, %202, %197
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 9
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = icmp ne %struct.TYPE_6__* %229, null
  br i1 %230, label %231, label %248

231:                                              ; preds = %226
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 9
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  %236 = load i32 (i32, %struct.video_viewport*)*, i32 (i32, %struct.video_viewport*)** %235, align 8
  %237 = icmp ne i32 (i32, %struct.video_viewport*)* %236, null
  br i1 %237, label %238, label %248

238:                                              ; preds = %231
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 9
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  %243 = load i32 (i32, %struct.video_viewport*)*, i32 (i32, %struct.video_viewport*)** %242, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 8
  %246 = load i32, i32* %245, align 8
  %247 = call i32 %243(i32 %246, %struct.video_viewport* %6)
  br label %248

248:                                              ; preds = %238, %231, %226
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @slock_lock(i32 %251)
  %253 = load i32, i32* %8, align 4
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* %9, align 4
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 4
  %259 = load i32, i32* %10, align 4
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 3
  store i32 %259, i32* %261, align 8
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 7
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  store i32 0, i32* %264, align 8
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 6
  %267 = bitcast %struct.video_viewport* %266 to i8*
  %268 = bitcast %struct.video_viewport* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %267, i8* align 8 %268, i64 48, i1 false)
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @scond_signal(i32 %271)
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @slock_unlock(i32 %275)
  br label %277

277:                                              ; preds = %248, %61
  br label %14
}

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @scond_wait(i32, i32) #1

declare dso_local i32 @slock_unlock(i32) #1

declare dso_local i64 @video_thread_handle_packet(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @thread_update_driver_state(%struct.TYPE_8__*) #1

declare dso_local i32 @video_driver_build_info(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @scond_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
