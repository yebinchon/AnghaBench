; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2AuthenticateDevice.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2AuthenticateDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@Cs2Area = common dso_local global %struct.TYPE_4__* null, align 8
@CDB_STAT_NODISC = common dso_local global i32 0, align 4
@CDB_STAT_OPEN = common dso_local global i32 0, align 4
@CDB_STAT_BUSY = common dso_local global i32 0, align 4
@CDB_HIRQ_MPED = common dso_local global i32 0, align 4
@CDB_HIRQ_EFLS = common dso_local global i32 0, align 4
@CDB_HIRQ_CSCT = common dso_local global i32 0, align 4
@CDB_STAT_PAUSE = common dso_local global i32 0, align 4
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2AuthenticateDevice() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 255
  store i32 %6, i32* %1, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 15
  %11 = load i32, i32* @CDB_STAT_NODISC, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %69

13:                                               ; preds = %0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 15
  %18 = load i32, i32* @CDB_STAT_OPEN, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %13
  %21 = load i32, i32* @CDB_STAT_BUSY, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %27, 255
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 65535, i32* %34, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 65535, i32* %37, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i32 65535, i32* %40, align 4
  %41 = load i32, i32* %1, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %20
  %44 = load i32, i32* @CDB_HIRQ_MPED, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 2, i32* %51, align 4
  br label %65

52:                                               ; preds = %20
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* @CDB_HIRQ_EFLS, align 4
  %56 = load i32, i32* @CDB_HIRQ_CSCT, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  store i32 4, i32* %64, align 4
  br label %65

65:                                               ; preds = %52, %43
  %66 = load i32, i32* @CDB_STAT_PAUSE, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %91

69:                                               ; preds = %13, %0
  %70 = load i32, i32* %1, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32, i32* @CDB_HIRQ_MPED, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 2, i32* %80, align 4
  br label %90

81:                                               ; preds = %69
  %82 = load i32, i32* @CDB_HIRQ_EFLS, align 4
  %83 = load i32, i32* @CDB_HIRQ_CSCT, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %81, %72
  br label %91

91:                                               ; preds = %90, %65
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @doCDReport(i32 %94)
  %96 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  ret void
}

declare dso_local i32 @doCDReport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
