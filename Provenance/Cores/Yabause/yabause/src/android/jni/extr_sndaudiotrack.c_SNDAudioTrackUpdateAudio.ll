; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_sndaudiotrack.c_SNDAudioTrackUpdateAudio.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_sndaudiotrack.c_SNDAudioTrackUpdateAudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (%struct.TYPE_8__**, i8**, i32)* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__**, i32, i32, i32, i64, i32, i32)*, i32 (%struct.TYPE_7__**, i64, i32, i32, i32*)*, i64 (%struct.TYPE_7__**, i32)* }

@stereodata16 = common dso_local global i64 0, align 8
@soundoffset = common dso_local global i32 0, align 4
@mbufferSizeInBytes = common dso_local global i32 0, align 4
@muted = common dso_local global i32 0, align 4
@yvm = common dso_local global %struct.TYPE_8__** null, align 8
@JNI_VERSION_1_6 = common dso_local global i32 0, align 4
@JNI_OK = common dso_local global i64 0, align 8
@gtrack = common dso_local global i32 0, align 4
@cAudioTrack = common dso_local global i32 0, align 4
@mWrite = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @SNDAudioTrackUpdateAudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SNDAudioTrackUpdateAudio(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = mul i64 %12, 2
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* @stereodata16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* @soundoffset, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = udiv i64 %24, 2
  %26 = trunc i64 %25 to i32
  %27 = call i32 @sdlConvert32uto16s(i32* %15, i32* %16, i32* %21, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @soundoffset, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* @soundoffset, align 4
  %31 = load i32, i32* @soundoffset, align 4
  %32 = load i32, i32* @mbufferSizeInBytes, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %83

34:                                               ; preds = %3
  %35 = load i32, i32* @muted, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %82, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @yvm, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64 (%struct.TYPE_8__**, i8**, i32)*, i64 (%struct.TYPE_8__**, i8**, i32)** %40, align 8
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @yvm, align 8
  %43 = bitcast %struct.TYPE_7__*** %8 to i8**
  %44 = load i32, i32* @JNI_VERSION_1_6, align 4
  %45 = call i64 %41(%struct.TYPE_8__** %42, i8** %43, i32 %44)
  %46 = load i64, i64* @JNI_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %83

49:                                               ; preds = %37
  %50 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i64 (%struct.TYPE_7__**, i32)*, i64 (%struct.TYPE_7__**, i32)** %52, align 8
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %55 = load i32, i32* @soundoffset, align 4
  %56 = call i64 %53(%struct.TYPE_7__** %54, i32 %55)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %49
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_7__**, i64, i32, i32, i32*)*, i32 (%struct.TYPE_7__**, i64, i32, i32, i32*)** %62, align 8
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i32, i32* @soundoffset, align 4
  %67 = load i64, i64* @stereodata16, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = call i32 %63(%struct.TYPE_7__** %64, i64 %65, i32 0, i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %59, %49
  %71 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_7__**, i32, i32, i32, i64, i32, i32)*, i32 (%struct.TYPE_7__**, i32, i32, i32, i64, i32, i32)** %73, align 8
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %76 = load i32, i32* @gtrack, align 4
  %77 = load i32, i32* @cAudioTrack, align 4
  %78 = load i32, i32* @mWrite, align 4
  %79 = load i64, i64* %9, align 8
  %80 = load i32, i32* @soundoffset, align 4
  %81 = call i32 %74(%struct.TYPE_7__** %75, i32 %76, i32 %77, i32 %78, i64 %79, i32 0, i32 %80)
  br label %82

82:                                               ; preds = %70, %34
  store i32 0, i32* @soundoffset, align 4
  br label %83

83:                                               ; preds = %48, %82, %3
  ret void
}

declare dso_local i32 @sdlConvert32uto16s(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
