; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_pink_fill.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_pink_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wavesynth_context = type { i32*, i32, i32, i64 }

@PINK_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wavesynth_context*)* @pink_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pink_fill(%struct.wavesynth_context* %0) #0 {
  %2 = alloca %struct.wavesynth_context*, align 8
  %3 = alloca [7 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wavesynth_context* %0, %struct.wavesynth_context** %2, align 8
  %7 = bitcast [7 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 28, i1 false)
  store i32 0, i32* %4, align 4
  %8 = load %struct.wavesynth_context*, %struct.wavesynth_context** %2, align 8
  %9 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.wavesynth_context*, %struct.wavesynth_context** %2, align 8
  %11 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %76

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %69, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PINK_UNIT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %72

20:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 7
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %25, %26
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %55

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.wavesynth_context*, %struct.wavesynth_context** %2, align 8
  %39 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %38, i32 0, i32 1
  %40 = call i64 @lcg_next(i32* %39)
  %41 = trunc i64 %40 to i32
  %42 = ashr i32 %41, 3
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %31
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %21

55:                                               ; preds = %30, %21
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.wavesynth_context*, %struct.wavesynth_context** %2, align 8
  %58 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %57, i32 0, i32 1
  %59 = call i64 @lcg_next(i32* %58)
  %60 = trunc i64 %59 to i32
  %61 = ashr i32 %60, 3
  %62 = add nsw i32 %56, %61
  %63 = load %struct.wavesynth_context*, %struct.wavesynth_context** %2, align 8
  %64 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %16

72:                                               ; preds = %16
  %73 = load %struct.wavesynth_context*, %struct.wavesynth_context** %2, align 8
  %74 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %73, i32 0, i32 1
  %75 = call i64 @lcg_next(i32* %74)
  br label %76

76:                                               ; preds = %72, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @lcg_next(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
