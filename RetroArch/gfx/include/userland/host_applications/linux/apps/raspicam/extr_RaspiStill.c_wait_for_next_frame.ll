; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStill.c_wait_for_next_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStill.c_wait_for_next_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@wait_for_next_frame.complete_time = internal global i32 -1, align 4
@wait_for_next_frame.next_frame_ms = internal global i32 -1, align 4
@CAMERA_SETTLE_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Frame %d is %d ms late\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Skipping frame %d to restart at frame %d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Press Enter to capture, X then ENTER to exit\0A\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [85 x i8] c"Waiting for SIGUSR1 to initiate capture and continue or SIGUSR2 to capture and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Received SIGUSR1\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Received SIGUSR2\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Bad signal received - error %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @wait_for_next_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_next_frame(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %6, align 4
  %14 = call i32 (...) @get_microseconds64()
  %15 = sdiv i32 %14, 1000
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @wait_for_next_frame.complete_time, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* @wait_for_next_frame.complete_time, align 4
  br label %24

24:                                               ; preds = %18, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @wait_for_next_frame.complete_time, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %28, %24
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %240 [
    i32 129, label %38
    i32 134, label %43
    i32 128, label %48
    i32 131, label %137
    i32 132, label %159
    i32 133, label %173
    i32 130, label %174
  ]

38:                                               ; preds = %34
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vcos_sleep(i32 %41)
  store i32 0, i32* %3, align 4
  br label %242

43:                                               ; preds = %34
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = call i32 @vcos_sleep(i32 10000)
  store i32 1, i32* %3, align 4
  br label %242

48:                                               ; preds = %34
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @wait_for_next_frame.next_frame_ms, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i32, i32* @CAMERA_SETTLE_TIME, align 4
  %56 = call i32 @vcos_sleep(i32 %55)
  %57 = call i32 (...) @get_microseconds64()
  %58 = sdiv i32 %57, 1000
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  store i32 %63, i32* @wait_for_next_frame.next_frame_ms, align 4
  br label %135

64:                                               ; preds = %48
  %65 = load i32, i32* @wait_for_next_frame.next_frame_ms, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %126

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 0, %71
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 2
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %70
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @wait_for_next_frame.next_frame_ms, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* @wait_for_next_frame.next_frame_ms, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 0, %86
  %88 = call i32 @vcos_log_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %87)
  br label %125

89:                                               ; preds = %70
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 0, %90
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %91, %94
  %96 = add nsw i32 1, %95
  store i32 %96, i32* %9, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @vcos_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %104
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %108, %111
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @vcos_sleep(i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %118, %121
  %123 = load i32, i32* @wait_for_next_frame.next_frame_ms, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* @wait_for_next_frame.next_frame_ms, align 4
  br label %125

125:                                              ; preds = %89, %78
  br label %134

126:                                              ; preds = %64
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @vcos_sleep(i32 %127)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @wait_for_next_frame.next_frame_ms, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* @wait_for_next_frame.next_frame_ms, align 4
  br label %134

134:                                              ; preds = %126, %125
  br label %135

135:                                              ; preds = %134, %54
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %242

137:                                              ; preds = %34
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, i32* @stderr, align 4
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %137
  %147 = call i32 (...) @getchar()
  store i32 %147, i32* %10, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp eq i32 %151, 120
  br i1 %152, label %156, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %154, 88
  br i1 %155, label %156, label %157

156:                                              ; preds = %153, %146
  store i32 0, i32* %3, align 4
  br label %242

157:                                              ; preds = %153
  %158 = load i32, i32* %6, align 4
  store i32 %158, i32* %3, align 4
  br label %242

159:                                              ; preds = %34
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i32, i32* @CAMERA_SETTLE_TIME, align 4
  %165 = call i32 @vcos_sleep(i32 %164)
  br label %168

166:                                              ; preds = %159
  %167 = call i32 @vcos_sleep(i32 30)
  br label %168

168:                                              ; preds = %166, %163
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %3, align 4
  br label %242

173:                                              ; preds = %34
  store i32 0, i32* %3, align 4
  br label %242

174:                                              ; preds = %34
  store i32 0, i32* %13, align 4
  %175 = call i32 @sigemptyset(i32* %11)
  %176 = load i32, i32* @SIGUSR1, align 4
  %177 = call i32 @sigaddset(i32* %11, i32 %176)
  %178 = load i32, i32* @SIGUSR2, align 4
  %179 = call i32 @sigaddset(i32* %11, i32 %178)
  %180 = load i32, i32* @SIG_BLOCK, align 4
  %181 = call i32 @pthread_sigmask(i32 %180, i32* %11, i32* null)
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %174
  %188 = load i32, i32* @stderr, align 4
  %189 = call i32 (i32, i8*, ...) @fprintf(i32 %188, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %174
  %191 = call i32 @sigwait(i32* %11, i32* %12)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %224

194:                                              ; preds = %190
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @SIGUSR1, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %194
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load i32, i32* @stderr, align 4
  %206 = call i32 (i32, i8*, ...) @fprintf(i32 %205, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %207

207:                                              ; preds = %204, %198
  br label %223

208:                                              ; preds = %194
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* @SIGUSR2, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %208
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %212
  %219 = load i32, i32* @stderr, align 4
  %220 = call i32 (i32, i8*, ...) @fprintf(i32 %219, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %221

221:                                              ; preds = %218, %212
  store i32 0, i32* %6, align 4
  br label %222

222:                                              ; preds = %221, %208
  br label %223

223:                                              ; preds = %222, %207
  br label %235

224:                                              ; preds = %190
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %224
  %231 = load i32, i32* @stderr, align 4
  %232 = load i32, i32* @errno, align 4
  %233 = call i32 (i32, i8*, ...) @fprintf(i32 %231, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %230, %224
  br label %235

235:                                              ; preds = %234, %223
  %236 = load i32*, i32** %5, align 8
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 4
  %239 = load i32, i32* %6, align 4
  store i32 %239, i32* %3, align 4
  br label %242

240:                                              ; preds = %34
  %241 = load i32, i32* %6, align 4
  store i32 %241, i32* %3, align 4
  br label %242

242:                                              ; preds = %240, %235, %173, %168, %157, %156, %135, %43, %38
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @get_microseconds64(...) #1

declare dso_local i32 @vcos_sleep(i32) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @getchar(...) #1

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
