; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_sndaudiotrack.c_SNDAudioTrackInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_sndaudiotrack.c_SNDAudioTrackInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 (%struct.TYPE_15__**, i8**, i32)* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__**, i32*, i32*, i32, i32, i32)*, i32 (%struct.TYPE_14__**, i64, i32*, i32*)*, i64 (%struct.TYPE_14__**, i32*)*, i32* (%struct.TYPE_14__**, i32*, i32*, i32, i32, i32, i32, i32, i32)*, i32* (%struct.TYPE_14__**, i32*, i8*, i8*)*, i32* (%struct.TYPE_14__**, i32*, i8*, i8*)*, i32* (%struct.TYPE_14__**, i8*)* }

@yvm = common dso_local global %struct.TYPE_15__** null, align 8
@JNI_VERSION_1_6 = common dso_local global i32 0, align 4
@JNI_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"android/media/AudioTrack\00", align 1
@cAudioTrack = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"<init>\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"(IIIIII)V\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"([BII)I\00", align 1
@mWrite = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"()V\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"getMinBufferSize\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"(III)I\00", align 1
@mbufferSizeInBytes = common dso_local global i32 0, align 4
@gtrack = common dso_local global i64 0, align 8
@stereodata16 = common dso_local global i32* null, align 8
@soundbufsize = common dso_local global i32 0, align 4
@soundvolume = common dso_local global i32 0, align 4
@soundmaxvolume = common dso_local global i32 0, align 4
@soundoffset = common dso_local global i64 0, align 8
@muted = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @SNDAudioTrackInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SNDAudioTrackInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 44100, i32* %2, align 4
  store i32 12, i32* %3, align 4
  store i32 2, i32* %4, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @yvm, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64 (%struct.TYPE_15__**, i8**, i32)*, i64 (%struct.TYPE_15__**, i8**, i32)** %12, align 8
  %14 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @yvm, align 8
  %15 = bitcast %struct.TYPE_14__*** %5 to i8**
  %16 = load i32, i32* @JNI_VERSION_1_6, align 4
  %17 = call i64 %13(%struct.TYPE_15__** %14, i8** %15, i32 %16)
  %18 = load i64, i64* @JNI_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %113

21:                                               ; preds = %0
  %22 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 6
  %25 = load i32* (%struct.TYPE_14__**, i8*)*, i32* (%struct.TYPE_14__**, i8*)** %24, align 8
  %26 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %27 = call i32* %25(%struct.TYPE_14__** %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** @cAudioTrack, align 8
  %28 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  %31 = load i64 (%struct.TYPE_14__**, i32*)*, i64 (%struct.TYPE_14__**, i32*)** %30, align 8
  %32 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %33 = load i32*, i32** @cAudioTrack, align 8
  %34 = call i64 %31(%struct.TYPE_14__** %32, i32* %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** @cAudioTrack, align 8
  %36 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 5
  %39 = load i32* (%struct.TYPE_14__**, i32*, i8*, i8*)*, i32* (%struct.TYPE_14__**, i32*, i8*, i8*)** %38, align 8
  %40 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %41 = load i32*, i32** @cAudioTrack, align 8
  %42 = call i32* %39(%struct.TYPE_14__** %40, i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32* %42, i32** %9, align 8
  %43 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 5
  %46 = load i32* (%struct.TYPE_14__**, i32*, i8*, i8*)*, i32* (%struct.TYPE_14__**, i32*, i8*, i8*)** %45, align 8
  %47 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %48 = load i32*, i32** @cAudioTrack, align 8
  %49 = call i32* %46(%struct.TYPE_14__** %47, i32* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32* %49, i32** @mWrite, align 8
  %50 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 5
  %53 = load i32* (%struct.TYPE_14__**, i32*, i8*, i8*)*, i32* (%struct.TYPE_14__**, i32*, i8*, i8*)** %52, align 8
  %54 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %55 = load i32*, i32** @cAudioTrack, align 8
  %56 = call i32* %53(%struct.TYPE_14__** %54, i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32* %56, i32** %7, align 8
  %57 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 4
  %60 = load i32* (%struct.TYPE_14__**, i32*, i8*, i8*)*, i32* (%struct.TYPE_14__**, i32*, i8*, i8*)** %59, align 8
  %61 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %62 = load i32*, i32** @cAudioTrack, align 8
  %63 = call i32* %60(%struct.TYPE_14__** %61, i32* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i32* %63, i32** %8, align 8
  %64 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_14__**, i32*, i32*, i32, i32, i32)*, i32 (%struct.TYPE_14__**, i32*, i32*, i32, i32, i32)** %66, align 8
  %68 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %69 = load i32*, i32** @cAudioTrack, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 %67(%struct.TYPE_14__** %68, i32* %69, i32* %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* @mbufferSizeInBytes, align 4
  %75 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  %78 = load i32* (%struct.TYPE_14__**, i32*, i32*, i32, i32, i32, i32, i32, i32)*, i32* (%struct.TYPE_14__**, i32*, i32*, i32, i32, i32, i32, i32, i32)** %77, align 8
  %79 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %80 = load i32*, i32** @cAudioTrack, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @mbufferSizeInBytes, align 4
  %86 = call i32* %78(%struct.TYPE_14__** %79, i32* %80, i32* %81, i32 3, i32 %82, i32 %83, i32 %84, i32 %85, i32 1)
  store i32* %86, i32** %6, align 8
  %87 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load i64 (%struct.TYPE_14__**, i32*)*, i64 (%struct.TYPE_14__**, i32*)** %89, align 8
  %91 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i64 %90(%struct.TYPE_14__** %91, i32* %92)
  store i64 %93, i64* @gtrack, align 8
  %94 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32 (%struct.TYPE_14__**, i64, i32*, i32*)*, i32 (%struct.TYPE_14__**, i64, i32*, i32*)** %96, align 8
  %98 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %99 = load i64, i64* @gtrack, align 8
  %100 = load i32*, i32** @cAudioTrack, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 %97(%struct.TYPE_14__** %98, i64 %99, i32* %100, i32* %101)
  %103 = load i32, i32* @mbufferSizeInBytes, align 4
  %104 = mul nsw i32 2, %103
  %105 = call i64 @malloc(i32 %104)
  %106 = inttoptr i64 %105 to i32*
  store i32* %106, i32** @stereodata16, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %21
  store i32 -1, i32* %1, align 4
  br label %113

109:                                              ; preds = %21
  %110 = load i32*, i32** @stereodata16, align 8
  %111 = load i32, i32* @soundbufsize, align 4
  %112 = call i32 @memset(i32* %110, i32 0, i32 %111)
  store i32 100, i32* @soundvolume, align 4
  store i32 100, i32* @soundmaxvolume, align 4
  store i32 85, i32* @soundbufsize, align 4
  store i64 0, i64* @soundoffset, align 8
  store i64 0, i64* @muted, align 8
  store i32 0, i32* %1, align 4
  br label %113

113:                                              ; preds = %109, %108, %20
  %114 = load i32, i32* %1, align 4
  ret i32 %114
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
