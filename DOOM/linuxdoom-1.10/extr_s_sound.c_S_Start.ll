; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_s_sound.c_S_Start.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_s_sound.c_S_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@numChannels = common dso_local global i32 0, align 4
@channels = common dso_local global %struct.TYPE_2__* null, align 8
@mus_paused = common dso_local global i64 0, align 8
@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@mus_runnin = common dso_local global i32 0, align 4
@gamemap = common dso_local global i32 0, align 4
@mus_e3m4 = common dso_local global i32 0, align 4
@mus_e3m2 = common dso_local global i32 0, align 4
@mus_e3m3 = common dso_local global i32 0, align 4
@mus_e1m5 = common dso_local global i32 0, align 4
@mus_e2m7 = common dso_local global i32 0, align 4
@mus_e2m4 = common dso_local global i32 0, align 4
@mus_e2m6 = common dso_local global i32 0, align 4
@mus_e2m5 = common dso_local global i32 0, align 4
@mus_e1m9 = common dso_local global i32 0, align 4
@gameepisode = common dso_local global i32 0, align 4
@mus_e1m1 = common dso_local global i32 0, align 4
@nextcleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_Start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [9 x i32], align 16
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %20, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @numChannels, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @channels, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @S_StopChannel(i32 %17)
  br label %19

19:                                               ; preds = %16, %8
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %4

23:                                               ; preds = %4
  store i64 0, i64* @mus_paused, align 8
  %24 = load i64, i64* @gamemode, align 8
  %25 = load i64, i64* @commercial, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @mus_runnin, align 4
  %29 = load i32, i32* @gamemap, align 4
  %30 = add nsw i32 %28, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %69

32:                                               ; preds = %23
  %33 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %34 = load i32, i32* @mus_e3m4, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  %36 = load i32, i32* @mus_e3m2, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %35, i64 1
  %38 = load i32, i32* @mus_e3m3, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %37, i64 1
  %40 = load i32, i32* @mus_e1m5, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %39, i64 1
  %42 = load i32, i32* @mus_e2m7, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds i32, i32* %41, i64 1
  %44 = load i32, i32* @mus_e2m4, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %43, i64 1
  %46 = load i32, i32* @mus_e2m6, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds i32, i32* %45, i64 1
  %48 = load i32, i32* @mus_e2m5, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds i32, i32* %47, i64 1
  %50 = load i32, i32* @mus_e1m9, align 4
  store i32 %50, i32* %49, align 4
  %51 = load i32, i32* @gameepisode, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %62

53:                                               ; preds = %32
  %54 = load i32, i32* @mus_e1m1, align 4
  %55 = load i32, i32* @gameepisode, align 4
  %56 = sub nsw i32 %55, 1
  %57 = mul nsw i32 %56, 9
  %58 = add nsw i32 %54, %57
  %59 = load i32, i32* @gamemap, align 4
  %60 = add nsw i32 %58, %59
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %2, align 4
  br label %68

62:                                               ; preds = %32
  %63 = load i32, i32* @gamemap, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %62, %53
  br label %69

69:                                               ; preds = %68, %27
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @S_ChangeMusic(i32 %70, i32 1)
  store i32 15, i32* @nextcleanup, align 4
  ret void
}

declare dso_local i32 @S_StopChannel(i32) #1

declare dso_local i32 @S_ChangeMusic(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
