; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2ReadFile.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2ReadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32, i64, %struct.TYPE_6__*, i32, i64, i64, i64, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (i64)* }
%struct.TYPE_5__ = type { i32, i64 }

@Cs2Area = common dso_local global %struct.TYPE_8__* null, align 8
@CDB_STAT_PLAY = common dso_local global i32 0, align 4
@CDB_PLAYTYPE_FILE = common dso_local global i32 0, align 4
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2ReadFile() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, 255
  %10 = shl i32 %9, 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %10, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %1, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 8
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %2, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 255
  %28 = shl i32 %27, 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %28, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %3, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 11
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %41, %44
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sdiv i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %1, align 8
  %53 = sub i64 %51, %52
  store i64 %53, i64* %4, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 11
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %1, align 8
  %62 = add i64 %60, %61
  %63 = call i32 @Cs2FADToTrack(i64 %62)
  %64 = call i32 @Cs2SetupDefaultPlayStats(i32 %63, i32 0)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 12
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 11
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i64, i64* %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %1, align 8
  %75 = add i64 %73, %74
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 9
  store i64 %75, i64* %79, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 9
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = add i64 %82, %83
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 10
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 8, i32* %88, align 4
  %89 = call i32 @Cs2SetTiming(i32 1)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %2, align 8
  %94 = add i64 %92, %93
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 8
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* @CDB_STAT_PLAY, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @CDB_PLAYTYPE_FILE, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32 (i64)*, i32 (i64)** %106, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i32 %107(i64 %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @doCDReport(i32 %114)
  %116 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 8
  ret void
}

declare dso_local i32 @Cs2SetupDefaultPlayStats(i32, i32) #1

declare dso_local i32 @Cs2FADToTrack(i64) #1

declare dso_local i32 @Cs2SetTiming(i32) #1

declare dso_local i32 @doCDReport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
