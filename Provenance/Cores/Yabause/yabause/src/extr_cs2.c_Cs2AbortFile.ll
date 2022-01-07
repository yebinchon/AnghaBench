; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2AbortFile.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2AbortFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@Cs2Area = common dso_local global %struct.TYPE_4__* null, align 8
@CDB_STAT_OPEN = common dso_local global i32 0, align 4
@CDB_STAT_NODISC = common dso_local global i32 0, align 4
@CDB_STAT_PAUSE = common dso_local global i32 0, align 4
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4
@CDB_HIRQ_EFLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2AbortFile() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = and i32 %3, 15
  %5 = load i32, i32* @CDB_STAT_OPEN, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 15
  %12 = load i32, i32* @CDB_STAT_NODISC, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = load i32, i32* @CDB_STAT_PAUSE, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %14, %7, %0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 -1, i32* %22, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @doCDReport(i32 %27)
  %29 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %30 = load i32, i32* @CDB_HIRQ_EFLS, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 8
  ret void
}

declare dso_local i32 @doCDReport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
