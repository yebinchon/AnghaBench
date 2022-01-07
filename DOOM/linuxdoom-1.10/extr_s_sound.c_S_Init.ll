; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_s_sound.c_S_Init.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_s_sound.c_S_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"S_Init: default sfx volume %d\0A\00", align 1
@numChannels = common dso_local global i32 0, align 4
@PU_STATIC = common dso_local global i32 0, align 4
@channels = common dso_local global %struct.TYPE_4__* null, align 8
@mus_paused = common dso_local global i64 0, align 8
@NUMSFX = common dso_local global i32 0, align 4
@S_sfx = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_Init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @stderr, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 (...) @I_SetChannels()
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @S_SetSfxVolume(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @S_SetMusicVolume(i32 %12)
  %14 = load i32, i32* @numChannels, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @PU_STATIC, align 4
  %19 = call i64 @Z_Malloc(i32 %17, i32 %18, i32 0)
  %20 = inttoptr i64 %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** @channels, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %31, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @numChannels, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @channels, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %21

34:                                               ; preds = %21
  store i64 0, i64* @mus_paused, align 8
  store i32 1, i32* %5, align 4
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @NUMSFX, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @S_sfx, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @S_sfx, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 4
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %35

53:                                               ; preds = %35
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @I_SetChannels(...) #1

declare dso_local i32 @S_SetSfxVolume(i32) #1

declare dso_local i32 @S_SetMusicVolume(i32) #1

declare dso_local i64 @Z_Malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
