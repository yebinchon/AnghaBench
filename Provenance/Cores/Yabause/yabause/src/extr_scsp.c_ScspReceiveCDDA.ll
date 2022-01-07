; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspReceiveCDDA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspReceiveCDDA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@cdda_out_left = common dso_local global i32 0, align 4
@Cs2Area = common dso_local global %struct.TYPE_4__* null, align 8
@cddabuf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@cdda_next_in = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"WARNING: CDDA buffer overrun\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScspReceiveCDDA(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @cdda_out_left, align 4
  %4 = sext i32 %3 to i64
  %5 = icmp ult i64 %4, 4
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = call i32 @Cs2SetTiming(i32 1)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load i32, i32* @cdda_out_left, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 %14, 6
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @Cs2SetTiming(i32 0)
  br label %22

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = call i32 @Cs2SetTiming(i32 1)
  br label %22

22:                                               ; preds = %18, %16
  br label %23

23:                                               ; preds = %22, %6
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cddabuf, i32 0, i32 0), align 8
  %25 = load i32, i32* @cdda_next_in, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @memcpy(i64 %27, i32* %28, i32 2352)
  %30 = load i32, i32* @cdda_next_in, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 8, %31
  %33 = icmp ule i64 %32, 2352
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 0, i32* @cdda_next_in, align 4
  br label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @cdda_next_in, align 4
  %37 = add nsw i32 %36, 2352
  store i32 %37, i32* @cdda_next_in, align 4
  br label %38

38:                                               ; preds = %35, %34
  %39 = load i32, i32* @cdda_out_left, align 4
  %40 = add nsw i32 %39, 2352
  store i32 %40, i32* @cdda_out_left, align 4
  %41 = load i32, i32* @cdda_out_left, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ugt i64 %42, 8
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @SCSPLOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 8, i32* @cdda_out_left, align 4
  br label %46

46:                                               ; preds = %44, %38
  ret void
}

declare dso_local i32 @Cs2SetTiming(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @SCSPLOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
