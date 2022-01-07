; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2SeekDisc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2SeekDisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@Cs2Area = common dso_local global %struct.TYPE_4__* null, align 8
@CDB_STAT_PAUSE = common dso_local global i8* null, align 8
@CDB_STAT_STANDBY = common dso_local global i8* null, align 8
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2SeekDisc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 7
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 128
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 7
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 15
  %16 = shl i32 %15, 16
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %16, %20
  store i32 %21, i32* %1, align 4
  %22 = load i8*, i8** @CDB_STAT_PAUSE, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 8
  store i8* %22, i8** %24, align 8
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %47, %10
  %26 = load i32, i32* %2, align 4
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 16777215
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %1, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @Cs2SetupDefaultPlayStats(i32 %41, i32 1)
  %43 = load i32, i32* %1, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  br label %50

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %25

50:                                               ; preds = %40, %25
  br label %92

51:                                               ; preds = %0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %51
  %59 = load i8*, i8** @CDB_STAT_PAUSE, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 8
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 8
  %67 = call i32 @Cs2SetupDefaultPlayStats(i32 %66, i32 1)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 255
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %91

75:                                               ; preds = %51
  %76 = load i8*, i8** @CDB_STAT_STANDBY, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 8
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i32 255, i32* %80, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  store i32 255, i32* %82, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  store i32 255, i32* %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 6
  store i32 255, i32* %86, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i32 255, i32* %88, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32 -1, i32* %90, align 8
  br label %91

91:                                               ; preds = %75, %58
  br label %92

92:                                               ; preds = %91, %50
  %93 = call i32 @Cs2SetTiming(i32 0)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 8
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @doCDReport(i8* %96)
  %98 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %98
  store i32 %103, i32* %101, align 8
  ret void
}

declare dso_local i32 @Cs2SetupDefaultPlayStats(i32, i32) #1

declare dso_local i32 @Cs2SetTiming(i32) #1

declare dso_local i32 @doCDReport(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
