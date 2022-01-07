; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_sdl_audio.c_sdl_audio_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_sdl_audio.c_sdl_audio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @sdl_audio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sdl_audio_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %8, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %3
  %21 = call i32 (...) @SDL_LockAudio()
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @fifo_write_avail(i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i64, i64* %6, align 8
  br label %33

31:                                               ; preds = %20
  %32 = load i64, i64* %9, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  store i64 %34, i64* %10, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @fifo_write(i32 %37, i8* %38, i64 %39)
  %41 = call i32 (...) @SDL_UnlockAudio()
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %7, align 8
  br label %87

43:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %84, %43
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  %49 = call i32 (...) @SDL_LockAudio()
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @fifo_write_avail(i32 %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 (...) @SDL_UnlockAudio()
  br label %84

58:                                               ; preds = %48
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %11, align 8
  %61 = sub i64 %59, %60
  %62 = load i64, i64* %12, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i64, i64* %12, align 8
  br label %70

66:                                               ; preds = %58
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %11, align 8
  %69 = sub i64 %67, %68
  br label %70

70:                                               ; preds = %66, %64
  %71 = phi i64 [ %65, %64 ], [ %69, %66 ]
  store i64 %71, i64* %13, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @fifo_write(i32 %74, i8* %77, i64 %78)
  %80 = call i32 (...) @SDL_UnlockAudio()
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %70, %56
  br label %44

85:                                               ; preds = %44
  %86 = load i64, i64* %11, align 8
  store i64 %86, i64* %7, align 8
  br label %87

87:                                               ; preds = %85, %33
  %88 = load i64, i64* %7, align 8
  ret i64 %88
}

declare dso_local i32 @SDL_LockAudio(...) #1

declare dso_local i64 @fifo_write_avail(i32) #1

declare dso_local i32 @fifo_write(i32, i8*, i64) #1

declare dso_local i32 @SDL_UnlockAudio(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
