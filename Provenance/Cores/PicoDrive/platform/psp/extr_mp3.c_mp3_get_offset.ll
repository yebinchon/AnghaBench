; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_mp3.c_mp3_get_offset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_mp3.c_mp3_get_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@mp3_handle = common dso_local global i64 0, align 8
@mp3_src_pos = common dso_local global i32 0, align 4
@mp3_src_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"offs1024=%u (%i/%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp3_get_offset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @PicoAHW, align 4
  %4 = load i32, i32* @PAHW_MCD, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %0
  %8 = load i32, i32* @PicoOpt, align 4
  %9 = and i32 %8, 2048
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 54
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %11
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i64, i64* @mp3_handle, align 8
  %28 = icmp sge i64 %27, 0
  br label %29

29:                                               ; preds = %26, %19, %11, %7, %0
  %30 = phi i1 [ false, %19 ], [ false, %11 ], [ false, %7 ], [ false, %0 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* @mp3_src_pos, align 4
  %36 = shl i32 %35, 7
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* @mp3_src_size, align 4
  %38 = ashr i32 %37, 3
  %39 = load i32, i32* %1, align 4
  %40 = udiv i32 %39, %38
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @mp3_src_pos, align 4
  %44 = load i32, i32* @mp3_src_size, align 4
  %45 = call i32 @lprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @lprintf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
