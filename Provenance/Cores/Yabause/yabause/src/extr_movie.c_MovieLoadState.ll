; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_MovieLoadState.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_MovieLoadState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@Movie = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@Playback = common dso_local global i64 0, align 8
@headersize = common dso_local global i64 0, align 8
@framecounter = common dso_local global i32 0, align 4
@framelength = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@Recording = common dso_local global i64 0, align 8
@RecordingFileOpened = common dso_local global i32 0, align 4
@MovieStatus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Recording Resumed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MovieLoadState() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Movie, i32 0, i32 0), align 8
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Movie, i32 0, i32 1), align 8
  %5 = load i64, i64* @Playback, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Movie, i32 0, i32 3), align 4
  %9 = load i64, i64* @headersize, align 8
  %10 = load i32, i32* @framecounter, align 4
  %11 = load i32, i32* @framelength, align 4
  %12 = mul nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %9, %13
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = call i32 @fseek(i32 %8, i64 %14, i32 %15)
  br label %17

17:                                               ; preds = %7, %3, %0
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Movie, i32 0, i32 1), align 8
  %19 = load i64, i64* @Recording, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Movie, i32 0, i32 3), align 4
  %23 = load i64, i64* @headersize, align 8
  %24 = load i32, i32* @framecounter, align 4
  %25 = load i32, i32* @framelength, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %23, %27
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i32 @fseek(i32 %22, i64 %28, i32 %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Movie, i32 0, i32 2), align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Movie, i32 0, i32 2), align 8
  br label %33

33:                                               ; preds = %21, %17
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Movie, i32 0, i32 1), align 8
  %35 = load i64, i64* @Playback, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Movie, i32 0, i32 0), align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load i64, i64* @Recording, align 8
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Movie, i32 0, i32 1), align 8
  store i32 1, i32* @RecordingFileOpened, align 4
  %42 = load i32, i32* @MovieStatus, align 4
  %43 = call i32 @strcpy(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @TruncateMovie(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 @Movie)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Movie, i32 0, i32 3), align 4
  %46 = load i64, i64* @headersize, align 8
  %47 = load i32, i32* @framecounter, align 4
  %48 = load i32, i32* @framelength, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %46, %50
  %52 = load i32, i32* @SEEK_SET, align 4
  %53 = call i32 @fseek(i32 %45, i64 %51, i32 %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Movie, i32 0, i32 2), align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Movie, i32 0, i32 2), align 8
  br label %56

56:                                               ; preds = %40, %37, %33
  ret void
}

declare dso_local i32 @fseek(i32, i64, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @TruncateMovie(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
