; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2GetHardwareInfo.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2GetHardwareInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@Cs2Area = common dso_local global %struct.TYPE_4__* null, align 8
@CDB_STAT_OPEN = common dso_local global i32 0, align 4
@CDB_STAT_NODISC = common dso_local global i32 0, align 4
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2GetHardwareInfo() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = and i32 %3, 15
  %5 = load i32, i32* @CDB_STAT_OPEN, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 15
  %12 = load i32, i32* @CDB_STAT_NODISC, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %14, %7, %0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 513, i32* %27, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 1, i32* %35, align 4
  br label %40

36:                                               ; preds = %17
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32 1024, i32* %43, align 4
  %44 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
