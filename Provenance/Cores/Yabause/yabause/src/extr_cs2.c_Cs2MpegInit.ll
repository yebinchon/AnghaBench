; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2MpegInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2MpegInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64 }

@Cs2Area = common dso_local global %struct.TYPE_4__* null, align 8
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4
@CDB_HIRQ_MPCM = common dso_local global i32 0, align 4
@CDB_HIRQ_MPED = common dso_local global i32 0, align 4
@CDB_HIRQ_MPST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2MpegInit() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = shl i32 %8, 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  br label %17

13:                                               ; preds = %0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 65280, i32* %16, align 8
  br label %17

17:                                               ; preds = %13, %5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %25 = load i32, i32* @CDB_HIRQ_MPCM, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CDB_HIRQ_MPED, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CDB_HIRQ_MPST, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 8
  br label %47

36:                                               ; preds = %17
  %37 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %38 = load i32, i32* @CDB_HIRQ_MPED, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CDB_HIRQ_MPST, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %36, %23
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
