; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_openal.c_al_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_openal.c_al_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@BUFSIZE = common dso_local global i64 0, align 8
@AL_FORMAT_STEREO16 = common dso_local global i32 0, align 4
@AL_NO_ERROR = common dso_local global i64 0, align 8
@AL_SOURCE_STATE = common dso_local global i32 0, align 4
@AL_PLAYING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @al_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %9, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %86, %3
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @al_fill_internal_buf(%struct.TYPE_4__* %22, i32* %23, i64 %24)
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %10, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 %29
  store i32* %31, i32** %9, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %7, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BUFSIZE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  br label %87

41:                                               ; preds = %21
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = call i32 @al_get_buffer(%struct.TYPE_4__* %42, i32* %12)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %87

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @AL_FORMAT_STEREO16, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* @BUFSIZE, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @alBufferData(i32 %47, i32 %48, i32 %51, i64 %52, i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @alSourceQueueBuffers(i32 %61, i32 1, i32* %12)
  %63 = call i64 (...) @alGetError()
  %64 = load i64, i64* @AL_NO_ERROR, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %90

67:                                               ; preds = %46
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @AL_SOURCE_STATE, align 4
  %72 = call i32 @alGetSourcei(i32 %70, i32 %71, i64* %11)
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* @AL_PLAYING, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @alSourcePlay(i32 %79)
  br label %81

81:                                               ; preds = %76, %67
  %82 = call i64 (...) @alGetError()
  %83 = load i64, i64* @AL_NO_ERROR, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 -1, i32* %4, align 4
  br label %90

86:                                               ; preds = %81
  br label %18

87:                                               ; preds = %45, %40, %18
  %88 = load i64, i64* %10, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %85, %66
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @al_fill_internal_buf(%struct.TYPE_4__*, i32*, i64) #1

declare dso_local i32 @al_get_buffer(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @alBufferData(i32, i32, i32, i64, i32) #1

declare dso_local i32 @alSourceQueueBuffers(i32, i32, i32*) #1

declare dso_local i64 @alGetError(...) #1

declare dso_local i32 @alGetSourcei(i32, i32, i64*) #1

declare dso_local i32 @alSourcePlay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
