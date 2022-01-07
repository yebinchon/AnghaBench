; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_HandleEvents.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_HandleEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_16__, %struct.TYPE_12__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@dpy = common dso_local global i32 0, align 4
@SE_KEY = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@SE_CHAR = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@mouse_active = common dso_local global i32 0, align 4
@in_dgamouse = common dso_local global %struct.TYPE_18__* null, align 8
@mx = common dso_local global i32 0, align 4
@my = common dso_local global i32 0, align 4
@mouseResetTime = common dso_local global i32 0, align 4
@MOUSE_RESET_DELAY = common dso_local global i32 0, align 4
@SE_MOUSE = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@mwx = common dso_local global i32 0, align 4
@mwy = common dso_local global i32 0, align 4
@K_MWHEELUP = common dso_local global i32 0, align 4
@K_MWHEELDOWN = common dso_local global i32 0, align 4
@K_MOUSE1 = common dso_local global i32 0, align 4
@win_x = common dso_local global i32 0, align 4
@win_y = common dso_local global i32 0, align 4
@None = common dso_local global i32 0, align 4
@win = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @HandleEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleEvents() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @qfalse, align 4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @dpy, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %384

13:                                               ; preds = %0
  br label %14

14:                                               ; preds = %371, %67, %13
  %15 = load i32, i32* @dpy, align 4
  %16 = call i64 @XPending(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %372

18:                                               ; preds = %14
  %19 = load i32, i32* @dpy, align 4
  %20 = call i32 @XNextEvent(i32 %19, %struct.TYPE_17__* %3)
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %371 [
    i32 130, label %23
    i32 129, label %56
    i32 128, label %77
    i32 134, label %217
    i32 133, label %287
    i32 131, label %357
    i32 132, label %364
  ]

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @Sys_XTimeToSysTime(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 4
  %29 = call i8* @XLateKey(%struct.TYPE_12__* %28, i32* %2)
  store i8* %29, i8** %5, align 8
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SE_KEY, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @qtrue, align 4
  %37 = call i32 @Sys_QueEvent(i32 %33, i32 %34, i32 %35, i32 %36, i32 0, i32* null)
  br label %38

38:                                               ; preds = %32, %23
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %46, %41
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SE_CHAR, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  %51 = load i8, i8* %49, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 @Sys_QueEvent(i32 %47, i32 %48, i32 %52, i32 0, i32 0, i32* null)
  br label %42

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %38
  br label %371

56:                                               ; preds = %18
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @Sys_XTimeToSysTime(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cls, i32 0, i32 0), align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = call i32 @repeated_press(%struct.TYPE_17__* %3)
  %65 = load i32, i32* @qtrue, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %14

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %56
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 4
  %71 = call i8* @XLateKey(%struct.TYPE_12__* %70, i32* %2)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @SE_KEY, align 4
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @qfalse, align 4
  %76 = call i32 @Sys_QueEvent(i32 %72, i32 %73, i32 %74, i32 %75, i32 0, i32* null)
  br label %371

77:                                               ; preds = %18
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @Sys_XTimeToSysTime(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @mouse_active, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %216

84:                                               ; preds = %77
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** @in_dgamouse, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %140

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @abs(i32 %92) #3
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %98, 2
  %100 = load i32, i32* @mx, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* @mx, align 4
  br label %108

102:                                              ; preds = %89
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @mx, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* @mx, align 4
  br label %108

108:                                              ; preds = %102, %95
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @abs(i32 %111) #3
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %117, 2
  %119 = load i32, i32* @my, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* @my, align 4
  br label %127

121:                                              ; preds = %108
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @my, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* @my, align 4
  br label %127

127:                                              ; preds = %121, %114
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @mouseResetTime, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, i32* @MOUSE_RESET_DELAY, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @SE_MOUSE, align 4
  %136 = load i32, i32* @mx, align 4
  %137 = load i32, i32* @my, align 4
  %138 = call i32 @Sys_QueEvent(i32 %134, i32 %135, i32 %136, i32 %137, i32 0, i32* null)
  br label %139

139:                                              ; preds = %133, %127
  store i32 0, i32* @my, align 4
  store i32 0, i32* @mx, align 4
  br label %215

140:                                              ; preds = %84
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @glConfig, i32 0, i32 0), align 4
  %145 = sdiv i32 %144, 2
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %171

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @glConfig, i32 0, i32 1), align 4
  %152 = sdiv i32 %151, 2
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %171

154:                                              ; preds = %147
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @glConfig, i32 0, i32 0), align 4
  %156 = sdiv i32 %155, 2
  store i32 %156, i32* @mwx, align 4
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @glConfig, i32 0, i32 1), align 4
  %158 = sdiv i32 %157, 2
  store i32 %158, i32* @mwy, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @mouseResetTime, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32, i32* @MOUSE_RESET_DELAY, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %154
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @SE_MOUSE, align 4
  %167 = load i32, i32* @mx, align 4
  %168 = load i32, i32* @my, align 4
  %169 = call i32 @Sys_QueEvent(i32 %165, i32 %166, i32 %167, i32 %168, i32 0, i32* null)
  br label %170

170:                                              ; preds = %164, %154
  store i32 0, i32* @my, align 4
  store i32 0, i32* @mx, align 4
  br label %371

171:                                              ; preds = %147, %140
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @mwx, align 4
  %176 = sub nsw i32 %174, %175
  store i32 %176, i32* %6, align 4
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @mwy, align 4
  %181 = sub nsw i32 %179, %180
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @abs(i32 %182) #3
  %184 = icmp sgt i32 %183, 1
  br i1 %184, label %185, label %190

185:                                              ; preds = %171
  %186 = load i32, i32* %6, align 4
  %187 = mul nsw i32 %186, 2
  %188 = load i32, i32* @mx, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* @mx, align 4
  br label %194

190:                                              ; preds = %171
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @mx, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* @mx, align 4
  br label %194

194:                                              ; preds = %190, %185
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @abs(i32 %195) #3
  %197 = icmp sgt i32 %196, 1
  br i1 %197, label %198, label %203

198:                                              ; preds = %194
  %199 = load i32, i32* %7, align 4
  %200 = mul nsw i32 %199, 2
  %201 = load i32, i32* @my, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* @my, align 4
  br label %207

203:                                              ; preds = %194
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @my, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* @my, align 4
  br label %207

207:                                              ; preds = %203, %198
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* @mwx, align 4
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* @mwy, align 4
  %214 = load i32, i32* @qtrue, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %207, %139
  br label %216

216:                                              ; preds = %215, %77
  br label %371

217:                                              ; preds = %18
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @Sys_XTimeToSysTime(i32 %220)
  store i32 %221, i32* %8, align 4
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 4
  br i1 %225, label %226, label %232

226:                                              ; preds = %217
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @SE_KEY, align 4
  %229 = load i32, i32* @K_MWHEELUP, align 4
  %230 = load i32, i32* @qtrue, align 4
  %231 = call i32 @Sys_QueEvent(i32 %227, i32 %228, i32 %229, i32 %230, i32 0, i32* null)
  br label %286

232:                                              ; preds = %217
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 5
  br i1 %236, label %237, label %243

237:                                              ; preds = %232
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @SE_KEY, align 4
  %240 = load i32, i32* @K_MWHEELDOWN, align 4
  %241 = load i32, i32* @qtrue, align 4
  %242 = call i32 @Sys_QueEvent(i32 %238, i32 %239, i32 %240, i32 %241, i32 0, i32* null)
  br label %285

243:                                              ; preds = %232
  store i32 -1, i32* %1, align 4
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %249

248:                                              ; preds = %243
  store i32 0, i32* %1, align 4
  br label %277

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 2
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  store i32 2, i32* %1, align 4
  br label %276

255:                                              ; preds = %249
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 3
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  store i32 1, i32* %1, align 4
  br label %275

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 6
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  store i32 3, i32* %1, align 4
  br label %274

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp eq i32 %270, 7
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  store i32 4, i32* %1, align 4
  br label %273

273:                                              ; preds = %272, %267
  br label %274

274:                                              ; preds = %273, %266
  br label %275

275:                                              ; preds = %274, %260
  br label %276

276:                                              ; preds = %275, %254
  br label %277

277:                                              ; preds = %276, %248
  %278 = load i32, i32* %8, align 4
  %279 = load i32, i32* @SE_KEY, align 4
  %280 = load i32, i32* @K_MOUSE1, align 4
  %281 = load i32, i32* %1, align 4
  %282 = add nsw i32 %280, %281
  %283 = load i32, i32* @qtrue, align 4
  %284 = call i32 @Sys_QueEvent(i32 %278, i32 %279, i32 %282, i32 %283, i32 0, i32* null)
  br label %285

285:                                              ; preds = %277, %237
  br label %286

286:                                              ; preds = %285, %226
  br label %371

287:                                              ; preds = %18
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @Sys_XTimeToSysTime(i32 %290)
  store i32 %291, i32* %8, align 4
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %294, 4
  br i1 %295, label %296, label %302

296:                                              ; preds = %287
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* @SE_KEY, align 4
  %299 = load i32, i32* @K_MWHEELUP, align 4
  %300 = load i32, i32* @qfalse, align 4
  %301 = call i32 @Sys_QueEvent(i32 %297, i32 %298, i32 %299, i32 %300, i32 0, i32* null)
  br label %356

302:                                              ; preds = %287
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = icmp eq i32 %305, 5
  br i1 %306, label %307, label %313

307:                                              ; preds = %302
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* @SE_KEY, align 4
  %310 = load i32, i32* @K_MWHEELDOWN, align 4
  %311 = load i32, i32* @qfalse, align 4
  %312 = call i32 @Sys_QueEvent(i32 %308, i32 %309, i32 %310, i32 %311, i32 0, i32* null)
  br label %355

313:                                              ; preds = %302
  store i32 -1, i32* %1, align 4
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %316, 1
  br i1 %317, label %318, label %319

318:                                              ; preds = %313
  store i32 0, i32* %1, align 4
  br label %347

319:                                              ; preds = %313
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = icmp eq i32 %322, 2
  br i1 %323, label %324, label %325

324:                                              ; preds = %319
  store i32 2, i32* %1, align 4
  br label %346

325:                                              ; preds = %319
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = icmp eq i32 %328, 3
  br i1 %329, label %330, label %331

330:                                              ; preds = %325
  store i32 1, i32* %1, align 4
  br label %345

331:                                              ; preds = %325
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, 6
  br i1 %335, label %336, label %337

336:                                              ; preds = %331
  store i32 3, i32* %1, align 4
  br label %344

337:                                              ; preds = %331
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = icmp eq i32 %340, 7
  br i1 %341, label %342, label %343

342:                                              ; preds = %337
  store i32 4, i32* %1, align 4
  br label %343

343:                                              ; preds = %342, %337
  br label %344

344:                                              ; preds = %343, %336
  br label %345

345:                                              ; preds = %344, %330
  br label %346

346:                                              ; preds = %345, %324
  br label %347

347:                                              ; preds = %346, %318
  %348 = load i32, i32* %8, align 4
  %349 = load i32, i32* @SE_KEY, align 4
  %350 = load i32, i32* @K_MOUSE1, align 4
  %351 = load i32, i32* %1, align 4
  %352 = add nsw i32 %350, %351
  %353 = load i32, i32* @qfalse, align 4
  %354 = call i32 @Sys_QueEvent(i32 %348, i32 %349, i32 %352, i32 %353, i32 0, i32* null)
  br label %355

355:                                              ; preds = %347, %307
  br label %356

356:                                              ; preds = %355, %296
  br label %371

357:                                              ; preds = %18
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  store i32 %360, i32* @win_x, align 4
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  store i32 %363, i32* @win_y, align 4
  br label %371

364:                                              ; preds = %18
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* @win_x, align 4
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  store i32 %370, i32* @win_y, align 4
  br label %371

371:                                              ; preds = %18, %364, %357, %356, %286, %216, %170, %69, %55
  br label %14

372:                                              ; preds = %14
  %373 = load i32, i32* %4, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %384

375:                                              ; preds = %372
  %376 = load i32, i32* @dpy, align 4
  %377 = load i32, i32* @None, align 4
  %378 = load i32, i32* @win, align 4
  %379 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @glConfig, i32 0, i32 0), align 4
  %380 = sdiv i32 %379, 2
  %381 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @glConfig, i32 0, i32 1), align 4
  %382 = sdiv i32 %381, 2
  %383 = call i32 @XWarpPointer(i32 %376, i32 %377, i32 %378, i32 0, i32 0, i32 0, i32 0, i32 %380, i32 %382)
  br label %384

384:                                              ; preds = %12, %375, %372
  ret void
}

declare dso_local i64 @XPending(i32) #1

declare dso_local i32 @XNextEvent(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @Sys_XTimeToSysTime(i32) #1

declare dso_local i8* @XLateKey(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @Sys_QueEvent(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @repeated_press(%struct.TYPE_17__*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @XWarpPointer(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
