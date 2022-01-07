; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/code940/extr_940.c_Main940.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/code940/extr_940.c_Main940.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32, i32, i32 }

@shared_data = common dso_local global %struct.TYPE_5__* null, align 8
@ym2612_940 = common dso_local global %struct.TYPE_4__* null, align 8
@shared_ctl = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Main940() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shared_data, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  store i32* %5, i32** %1, align 8
  store i32 0, i32* %2, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shared_data, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** @ym2612_940, align 8
  br label %8

8:                                                ; preds = %80, %0
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @wait_get_job(i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %2, align 4
  switch i32 %14, label %80 [
    i32 137, label %15
    i32 136, label %34
    i32 129, label %37
    i32 133, label %39
    i32 130, label %41
    i32 131, label %50
    i32 132, label %52
    i32 128, label %61
    i32 135, label %64
    i32 134, label %66
  ]

15:                                               ; preds = %8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 65535, i32* %19, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 65535, i32* %23, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @YM2612Init_(i32 %26, i32 %29)
  %31 = call i8* (...) @MP3InitDecoder()
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shared_data, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %80

34:                                               ; preds = %8
  %35 = call i32 (...) @drain_wb()
  %36 = call i32 (...) @dcache_clean_flush()
  br label %80

37:                                               ; preds = %8
  %38 = call i32 (...) @YM2612ResetChip_()
  br label %80

39:                                               ; preds = %8
  %40 = call i32 (...) @YM2612PicoStateLoad_()
  br label %80

41:                                               ; preds = %8
  %42 = call i32 @YM2612PicoStateSave2(i32 0, i32 0)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ym2612_940, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @_memcpy(i32* %45, i32* %48, i32 512)
  br label %80

50:                                               ; preds = %8
  %51 = call i32 (...) @ym_flush_writes()
  br label %80

52:                                               ; preds = %8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ym2612_940, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @_memcpy(i32* %55, i32* %58, i32 512)
  %60 = call i32 @YM2612PicoStateLoad2(i32 0, i32 0)
  br label %80

61:                                               ; preds = %8
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @ym_update(i32* %62)
  br label %80

64:                                               ; preds = %8
  %65 = call i32 (...) @mp3_decode()
  br label %80

66:                                               ; preds = %8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shared_data, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shared_data, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @MP3FreeDecoder(i8* %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = call i8* (...) @MP3InitDecoder()
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shared_data, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %8, %76, %64, %61, %52, %50, %41, %39, %37, %34, %15
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = call i32 (...) @dcache_clean()
  br label %8
}

declare dso_local i32 @wait_get_job(i32) #1

declare dso_local i32 @YM2612Init_(i32, i32) #1

declare dso_local i8* @MP3InitDecoder(...) #1

declare dso_local i32 @drain_wb(...) #1

declare dso_local i32 @dcache_clean_flush(...) #1

declare dso_local i32 @YM2612ResetChip_(...) #1

declare dso_local i32 @YM2612PicoStateLoad_(...) #1

declare dso_local i32 @YM2612PicoStateSave2(i32, i32) #1

declare dso_local i32 @_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ym_flush_writes(...) #1

declare dso_local i32 @YM2612PicoStateLoad2(i32, i32) #1

declare dso_local i32 @ym_update(i32*) #1

declare dso_local i32 @mp3_decode(...) #1

declare dso_local i32 @MP3FreeDecoder(i8*) #1

declare dso_local i32 @dcache_clean(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
