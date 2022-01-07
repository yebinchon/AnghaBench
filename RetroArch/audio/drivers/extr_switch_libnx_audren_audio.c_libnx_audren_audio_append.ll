; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_switch_libnx_audren_audio.c_libnx_audren_audio_append.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_switch_libnx_audren_audio.c_libnx_audren_audio_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i64, i32*, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i8*, i64)* @libnx_audren_audio_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @libnx_audren_audio_append(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 -1, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = call i32 @libnx_audren_audio_get_free_wavebuf_idx(%struct.TYPE_4__* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i64 0, i64* %4, align 8
  br label %121

20:                                               ; preds = %14
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 7
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = add i64 %31, %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %20, %3
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %48, %51
  %53 = icmp ugt i64 %44, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %58, %61
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %54, %43
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %66, %69
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @memcpy(i8* %72, i8* %73, i64 %74)
  %76 = load i8*, i8** %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @armDCacheFlush(i8* %76, i64 %77)
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = icmp eq i64 %86, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %63
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @audrvVoiceAddWaveBuf(i32* %94, i32 0, i32* %97)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  %101 = call i32 @mutexLock(i32* %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 5
  %104 = call i32 @audrvUpdate(i32* %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 6
  %107 = call i32 @mutexUnlock(i32* %106)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 5
  %110 = call i32 @audrvVoiceIsPlaying(i32* %109, i32 0)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %92
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 5
  %115 = call i32 @audrvVoiceStart(i32* %114, i32 0)
  br label %116

116:                                              ; preds = %112, %92
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %116, %63
  %120 = load i64, i64* %7, align 8
  store i64 %120, i64* %4, align 8
  br label %121

121:                                              ; preds = %119, %19
  %122 = load i64, i64* %4, align 8
  ret i64 %122
}

declare dso_local i32 @libnx_audren_audio_get_free_wavebuf_idx(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @armDCacheFlush(i8*, i64) #1

declare dso_local i32 @audrvVoiceAddWaveBuf(i32*, i32, i32*) #1

declare dso_local i32 @mutexLock(i32*) #1

declare dso_local i32 @audrvUpdate(i32*) #1

declare dso_local i32 @mutexUnlock(i32*) #1

declare dso_local i32 @audrvVoiceIsPlaying(i32*, i32) #1

declare dso_local i32 @audrvVoiceStart(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
