; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_sndaudiotrack.c_SNDAudioTrackDeInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_sndaudiotrack.c_SNDAudioTrackDeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (%struct.TYPE_6__**, i8**, i32)* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__**, i32)* }

@yvm = common dso_local global %struct.TYPE_6__** null, align 8
@JNI_VERSION_1_6 = common dso_local global i32 0, align 4
@JNI_OK = common dso_local global i64 0, align 8
@stereodata16 = common dso_local global i32* null, align 8
@gtrack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SNDAudioTrackDeInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SNDAudioTrackDeInit() #0 {
  %1 = alloca %struct.TYPE_5__**, align 8
  %2 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @yvm, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load i64 (%struct.TYPE_6__**, i8**, i32)*, i64 (%struct.TYPE_6__**, i8**, i32)** %4, align 8
  %6 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @yvm, align 8
  %7 = bitcast %struct.TYPE_5__*** %1 to i8**
  %8 = load i32, i32* @JNI_VERSION_1_6, align 4
  %9 = call i64 %5(%struct.TYPE_6__** %6, i8** %7, i32 %8)
  %10 = load i64, i64* @JNI_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %23

13:                                               ; preds = %0
  %14 = load i32*, i32** @stereodata16, align 8
  %15 = call i32 @free(i32* %14)
  store i32* null, i32** @stereodata16, align 8
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %1, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_5__**, i32)*, i32 (%struct.TYPE_5__**, i32)** %18, align 8
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %1, align 8
  %21 = load i32, i32* @gtrack, align 4
  %22 = call i32 %19(%struct.TYPE_5__** %20, i32 %21)
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
