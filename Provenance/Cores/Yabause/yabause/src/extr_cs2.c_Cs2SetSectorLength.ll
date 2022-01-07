; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2SetSectorLength.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2SetSectorLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@Cs2Area = common dso_local global %struct.TYPE_4__* null, align 8
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4
@CDB_HIRQ_ESEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2SetSectorLength() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 255
  switch i32 %5, label %18 [
    i32 0, label %6
    i32 1, label %9
    i32 2, label %12
    i32 3, label %15
  ]

6:                                                ; preds = %0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 2048, i32* %8, align 4
  br label %19

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 2336, i32* %11, align 4
  br label %19

12:                                               ; preds = %0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 2340, i32* %14, align 4
  br label %19

15:                                               ; preds = %0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 2352, i32* %17, align 4
  br label %19

18:                                               ; preds = %0
  br label %19

19:                                               ; preds = %18, %15, %12, %9, %6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 8
  switch i32 %24, label %37 [
    i32 0, label %25
    i32 1, label %28
    i32 2, label %31
    i32 3, label %34
  ]

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 2048, i32* %27, align 4
  br label %38

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 2336, i32* %30, align 4
  br label %38

31:                                               ; preds = %19
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 2340, i32* %33, align 4
  br label %38

34:                                               ; preds = %19
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 2352, i32* %36, align 4
  br label %38

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %34, %31, %28, %25
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @doCDReport(i32 %41)
  %43 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %44 = load i32, i32* @CDB_HIRQ_ESEL, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  ret void
}

declare dso_local i32 @doCDReport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
