; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_wait_for_next_change.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_wait_for_next_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@wait_for_next_change.complete_time = internal global i32 -1, align 4
@ABORT_INTERVAL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Press Enter to %s, X then ENTER to exit, [i,o,r] then ENTER to change zoom\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Starting zoom in\0A\00", align 1
@ZOOM_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Starting zoom out\0A\00", align 1
@ZOOM_OUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"starting reset zoom\0A\00", align 1
@ZOOM_RESET = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Waiting for SIGUSR1 to %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Bad signal received - error %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @wait_for_next_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_next_change(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 1, i32* %4, align 4
  %11 = call i32 (...) @get_microseconds64()
  %12 = sdiv i32 %11, 1000
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @wait_for_next_change.complete_time, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* @wait_for_next_change.complete_time, align 4
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @wait_for_next_change.complete_time, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %25, %21
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %247 [
    i32 130, label %35
    i32 132, label %41
    i32 128, label %53
    i32 131, label %76
    i32 129, label %211
  ]

35:                                               ; preds = %31
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pause_and_test_abort(%struct.TYPE_11__* %36, i32 %39)
  store i32 0, i32* %2, align 4
  br label %249

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %49, %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @ABORT_INTERVAL, align 4
  %51 = call i32 @vcos_sleep(i32 %50)
  br label %42

52:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %249

53:                                               ; preds = %31
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pause_and_test_abort(%struct.TYPE_11__* %59, i32 %62)
  store i32 %63, i32* %6, align 4
  br label %70

64:                                               ; preds = %53
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pause_and_test_abort(%struct.TYPE_11__* %65, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %64, %58
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %249

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %249

76:                                               ; preds = %31
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load i32, i32* @stderr, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %82, %76
  %92 = call signext i8 (...) @getchar()
  store i8 %92, i8* %7, align 1
  %93 = load i8, i8* %7, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 120
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = load i8, i8* %7, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 88
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %91
  store i32 0, i32* %2, align 4
  br label %249

101:                                              ; preds = %96
  %102 = load i8, i8* %7, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 105
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i8, i8* %7, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 73
  br i1 %108, label %109, label %136

109:                                              ; preds = %105, %101
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %109
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ZOOM_IN, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = call i32 @raspicamcontrol_zoom_in_zoom_out(i32 %121, i32 %122, i32* %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %118
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = call i32 @dump_status(%struct.TYPE_11__* %133)
  br label %135

135:                                              ; preds = %132, %118
  br label %208

136:                                              ; preds = %105
  %137 = load i8, i8* %7, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 111
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i8, i8* %7, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 79
  br i1 %143, label %144, label %171

144:                                              ; preds = %140, %136
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* @stderr, align 4
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %151, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %144
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ZOOM_OUT, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = call i32 @raspicamcontrol_zoom_in_zoom_out(i32 %156, i32 %157, i32* %160)
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %153
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %169 = call i32 @dump_status(%struct.TYPE_11__* %168)
  br label %170

170:                                              ; preds = %167, %153
  br label %207

171:                                              ; preds = %140
  %172 = load i8, i8* %7, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 114
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i8, i8* %7, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 82
  br i1 %178, label %179, label %206

179:                                              ; preds = %175, %171
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i32, i32* @stderr, align 4
  %187 = call i32 (i32, i8*, ...) @fprintf(i32 %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %179
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @ZOOM_RESET, align 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = call i32 @raspicamcontrol_zoom_in_zoom_out(i32 %191, i32 %192, i32* %195)
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %188
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %204 = call i32 @dump_status(%struct.TYPE_11__* %203)
  br label %205

205:                                              ; preds = %202, %188
  br label %206

206:                                              ; preds = %205, %175
  br label %207

207:                                              ; preds = %206, %170
  br label %208

208:                                              ; preds = %207, %135
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %4, align 4
  store i32 %210, i32* %2, align 4
  br label %249

211:                                              ; preds = %31
  store i32 0, i32* %10, align 4
  %212 = call i32 @sigemptyset(i32* %8)
  %213 = load i32, i32* @SIGUSR1, align 4
  %214 = call i32 @sigaddset(i32* %8, i32 %213)
  %215 = load i32, i32* @SIG_BLOCK, align 4
  %216 = call i32 @pthread_sigmask(i32 %215, i32* %8, i32* null)
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %211
  %223 = load i32, i32* @stderr, align 4
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %230 = call i32 (i32, i8*, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %229)
  br label %231

231:                                              ; preds = %222, %211
  %232 = call i32 @sigwait(i32* %8, i32* %9)
  store i32 %232, i32* %10, align 4
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %231
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load i32, i32* @stderr, align 4
  %243 = load i32, i32* @errno, align 4
  %244 = call i32 (i32, i8*, ...) @fprintf(i32 %242, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %241, %238, %231
  %246 = load i32, i32* %4, align 4
  store i32 %246, i32* %2, align 4
  br label %249

247:                                              ; preds = %31
  %248 = load i32, i32* %4, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %247, %245, %209, %100, %74, %73, %52, %35
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i32 @get_microseconds64(...) #1

declare dso_local i32 @pause_and_test_abort(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @vcos_sleep(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local signext i8 @getchar(...) #1

declare dso_local i32 @raspicamcontrol_zoom_in_zoom_out(i32, i32, i32*) #1

declare dso_local i32 @dump_status(%struct.TYPE_11__*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @sigwait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
