; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_timecode.c_av_timecode_get_smpte_from_framenum.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_timecode.c_av_timecode_get_smpte_from_framenum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@AV_TIMECODE_FLAG_DROPFRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_timecode_get_smpte_from_framenum(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AV_TIMECODE_FLAG_DROPFRAME, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @av_timecode_adjust_ntsc_framenum2(i32 %33, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %2
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = urem i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = udiv i32 %42, %43
  %45 = urem i32 %44, 60
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = mul i32 %47, 60
  %49 = udiv i32 %46, %48
  %50 = urem i32 %49, 60
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = mul i32 %52, 3600
  %54 = udiv i32 %51, %53
  %55 = urem i32 %54, 24
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 %56, 30
  %58 = or i32 0, %57
  %59 = load i32, i32* %10, align 4
  %60 = sdiv i32 %59, 10
  %61 = shl i32 %60, 28
  %62 = or i32 %58, %61
  %63 = load i32, i32* %10, align 4
  %64 = srem i32 %63, 10
  %65 = shl i32 %64, 24
  %66 = or i32 %62, %65
  %67 = load i32, i32* %9, align 4
  %68 = sdiv i32 %67, 10
  %69 = shl i32 %68, 20
  %70 = or i32 %66, %69
  %71 = load i32, i32* %9, align 4
  %72 = srem i32 %71, 10
  %73 = shl i32 %72, 16
  %74 = or i32 %70, %73
  %75 = load i32, i32* %8, align 4
  %76 = sdiv i32 %75, 10
  %77 = shl i32 %76, 12
  %78 = or i32 %74, %77
  %79 = load i32, i32* %8, align 4
  %80 = srem i32 %79, 10
  %81 = shl i32 %80, 8
  %82 = or i32 %78, %81
  %83 = load i32, i32* %7, align 4
  %84 = sdiv i32 %83, 10
  %85 = shl i32 %84, 4
  %86 = or i32 %82, %85
  %87 = load i32, i32* %7, align 4
  %88 = srem i32 %87, 10
  %89 = or i32 %86, %88
  ret i32 %89
}

declare dso_local i32 @av_timecode_adjust_ntsc_framenum2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
