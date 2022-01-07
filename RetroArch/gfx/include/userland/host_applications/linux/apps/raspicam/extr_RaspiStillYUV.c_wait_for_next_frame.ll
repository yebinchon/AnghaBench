; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStillYUV.c_wait_for_next_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStillYUV.c_wait_for_next_frame.c"
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
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Waiting for SIGUSR1 to initiate capture\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Received SIGUSR1\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Bad signal received - error %d\0A\00", align 1
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
  switch i32 %37, label %212 [
    i32 129, label %38
    i32 134, label %43
    i32 128, label %48
    i32 131, label %138
    i32 132, label %160
    i32 133, label %174
    i32 130, label %175
  ]

38:                                               ; preds = %34
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vcos_sleep(i32 %41)
  store i32 0, i32* %3, align 4
  br label %214

43:                                               ; preds = %34
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = call i32 @vcos_sleep(i32 10000)
  store i32 1, i32* %3, align 4
  br label %214

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
  br label %136

64:                                               ; preds = %48
  %65 = load i32, i32* @wait_for_next_frame.next_frame_ms, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %127

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 0, %71
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 0, %75
  %77 = sdiv i32 %76, 2
  %78 = icmp slt i32 %72, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %70
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @wait_for_next_frame.next_frame_ms, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* @wait_for_next_frame.next_frame_ms, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @vcos_log_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %88)
  br label %126

90:                                               ; preds = %70
  %91 = load i32, i32* %8, align 4
  %92 = sub nsw i32 0, %91
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 %92, %95
  %97 = add nsw i32 1, %96
  store i32 %97, i32* %9, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @vcos_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %109, %112
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @vcos_sleep(i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %119, %122
  %124 = load i32, i32* @wait_for_next_frame.next_frame_ms, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* @wait_for_next_frame.next_frame_ms, align 4
  br label %126

126:                                              ; preds = %90, %79
  br label %135

127:                                              ; preds = %64
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @vcos_sleep(i32 %128)
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @wait_for_next_frame.next_frame_ms, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* @wait_for_next_frame.next_frame_ms, align 4
  br label %135

135:                                              ; preds = %127, %126
  br label %136

136:                                              ; preds = %135, %54
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %3, align 4
  br label %214

138:                                              ; preds = %34
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* @stderr, align 4
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %138
  %148 = call i32 (...) @getchar()
  store i32 %148, i32* %10, align 4
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp eq i32 %152, 120
  br i1 %153, label %157, label %154

154:                                              ; preds = %147
  %155 = load i32, i32* %10, align 4
  %156 = icmp eq i32 %155, 88
  br i1 %156, label %157, label %158

157:                                              ; preds = %154, %147
  store i32 0, i32* %3, align 4
  br label %214

158:                                              ; preds = %154
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %214

160:                                              ; preds = %34
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i32, i32* @CAMERA_SETTLE_TIME, align 4
  %166 = call i32 @vcos_sleep(i32 %165)
  br label %169

167:                                              ; preds = %160
  %168 = call i32 @vcos_sleep(i32 30)
  br label %169

169:                                              ; preds = %167, %164
  %170 = load i32*, i32** %5, align 8
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %3, align 4
  br label %214

174:                                              ; preds = %34
  store i32 0, i32* %3, align 4
  br label %214

175:                                              ; preds = %34
  store i32 0, i32* %13, align 4
  %176 = call i32 @sigemptyset(i32* %11)
  %177 = load i32, i32* @SIGUSR1, align 4
  %178 = call i32 @sigaddset(i32* %11, i32 %177)
  %179 = load i32, i32* @SIG_BLOCK, align 4
  %180 = call i32 @pthread_sigmask(i32 %179, i32* %11, i32* null)
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %175
  %187 = load i32, i32* @stderr, align 4
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %175
  %190 = call i32 @sigwait(i32* %11, i32* %12)
  store i32 %190, i32* %13, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %189
  %197 = load i32, i32* %13, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* @stderr, align 4
  %201 = call i32 (i32, i8*, ...) @fprintf(i32 %200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %206

202:                                              ; preds = %196
  %203 = load i32, i32* @stderr, align 4
  %204 = load i32, i32* @errno, align 4
  %205 = call i32 (i32, i8*, ...) @fprintf(i32 %203, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %202, %199
  br label %207

207:                                              ; preds = %206, %189
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 4
  %211 = load i32, i32* %6, align 4
  store i32 %211, i32* %3, align 4
  br label %214

212:                                              ; preds = %34
  %213 = load i32, i32* %6, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %212, %207, %174, %169, %158, %157, %136, %43, %38
  %215 = load i32, i32* %3, align 4
  ret i32 %215
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
