; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_switch_libnx_audren_thread_audio.c_thread_job.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_switch_libnx_audren_thread_audio.c_thread_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i8*, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64 }

@BUFFER_COUNT = common dso_local global i32 0, align 4
@AudioDriverWaveBufState_Free = common dso_local global i64 0, align 8
@AudioDriverWaveBufState_Done = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @thread_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_job(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %161

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %160, %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %161

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %74, label %25

25:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %70, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @BUFFER_COUNT, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 7
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AudioDriverWaveBufState_Free, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %30
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AudioDriverWaveBufState_Done, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %41, %30
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 7
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %7, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul i32 %62, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr i8, i8* %61, i64 %67
  store i8* %68, i8** %8, align 8
  store i64 0, i64* %5, align 8
  br label %73

69:                                               ; preds = %41
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %26

73:                                               ; preds = %52, %26
  br label %74

74:                                               ; preds = %73, %22
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = icmp ne %struct.TYPE_5__* %75, null
  br i1 %76, label %77, label %155

77:                                               ; preds = %74
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = call i32 @mutexLock(i32* %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %91

86:                                               ; preds = %77
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @fifo_read_avail(i32 %89)
  br label %91

91:                                               ; preds = %86, %85
  %92 = phi i64 [ 0, %85 ], [ %90, %86 ]
  store i64 %92, i64* %4, align 8
  %93 = load i64, i64* %4, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = zext i32 %96 to i64
  %98 = load i64, i64* %5, align 8
  %99 = sub i64 %97, %98
  %100 = call i64 @MIN(i64 %93, i64 %99)
  store i64 %100, i64* %6, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr i8, i8* %101, i64 %102
  store i8* %103, i8** %9, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp ugt i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %91
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @fifo_read(i32 %109, i8* %110, i64 %111)
  br label %113

113:                                              ; preds = %106, %91
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = call i32 @mutexUnlock(i32* %115)
  %117 = load i64, i64* %6, align 8
  %118 = icmp ugt i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = call i32 @condvarWakeAll(i32* %121)
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* %5, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %5, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = load i64, i64* %6, align 8
  %128 = call i32 @armDCacheFlush(i8* %126, i64 %127)
  br label %129

129:                                              ; preds = %119, %113
  %130 = load i64, i64* %5, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = zext i32 %133 to i64
  %135 = icmp eq i64 %130, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %129
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %140 = call i32 @audrvVoiceAddWaveBuf(i32* %138, i32 0, %struct.TYPE_5__* %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = call i32 @audrvUpdate(i32* %142)
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = call i32 @audrvVoiceIsPlaying(i32* %145, i32 0)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %136
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = call i32 @audrvVoiceStart(i32* %150, i32 0)
  br label %152

152:                                              ; preds = %148, %136
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %153

153:                                              ; preds = %152, %129
  %154 = call i32 @svcSleepThread(i64 1000)
  br label %160

155:                                              ; preds = %74
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = call i32 @audrvUpdate(i32* %157)
  %159 = call i32 (...) @audrenWaitFrame()
  br label %160

160:                                              ; preds = %155, %153
  br label %17

161:                                              ; preds = %15, %17
  ret void
}

declare dso_local i32 @mutexLock(i32*) #1

declare dso_local i64 @fifo_read_avail(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @fifo_read(i32, i8*, i64) #1

declare dso_local i32 @mutexUnlock(i32*) #1

declare dso_local i32 @condvarWakeAll(i32*) #1

declare dso_local i32 @armDCacheFlush(i8*, i64) #1

declare dso_local i32 @audrvVoiceAddWaveBuf(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @audrvUpdate(i32*) #1

declare dso_local i32 @audrvVoiceIsPlaying(i32*, i32) #1

declare dso_local i32 @audrvVoiceStart(i32*, i32) #1

declare dso_local i32 @svcSleepThread(i64) #1

declare dso_local i32 @audrenWaitFrame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
