; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2GetThenDeleteSectorData.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2GetThenDeleteSectorData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, i8*, i8*, i64, i64, %struct.TYPE_4__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i64, i32, i64, i32 }
%struct.TYPE_4__ = type { i64 }

@Cs2Area = common dso_local global %struct.TYPE_6__* null, align 8
@MAX_SELECTORS = common dso_local global i64 0, align 8
@CDB_STAT_REJECT = common dso_local global i32 0, align 4
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4
@CDB_HIRQ_EHST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No sectors available\0A\00", align 1
@CDB_HIRQ_DRDY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2GetThenDeleteSectorData() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %1, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = ashr i32 %11, 8
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %2, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @MAX_SELECTORS, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %0
  %22 = load i32, i32* @CDB_STAT_REJECT, align 4
  %23 = call i32 @doCDReport(i32 %22)
  %24 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %25 = load i32, i32* @CDB_HIRQ_EHST, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 8
  br label %93

32:                                               ; preds = %0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = call i32 @CDLOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @CDB_STAT_REJECT, align 4
  %44 = call i32 @doCDReport(i32 %43)
  %45 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %46 = load i32, i32* @CDB_HIRQ_EHST, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  br label %93

53:                                               ; preds = %32
  %54 = load i64, i64* %2, align 8
  %55 = call i32 @CalcSectorOffsetNumber(i64 %54, i64* %1, i64* %3)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 9
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 2, i32* %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 7
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i64, i64* %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 8
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 6
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  store i64 0, i64* %70, align 8
  %71 = load i64, i64* %1, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load i64, i64* %3, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @doCDReport(i32 %81)
  %83 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %84 = load i32, i32* @CDB_HIRQ_DRDY, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @CDB_HIRQ_EHST, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %53, %41, %21
  ret void
}

declare dso_local i32 @doCDReport(i32) #1

declare dso_local i32 @CDLOG(i8*) #1

declare dso_local i32 @CalcSectorOffsetNumber(i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
