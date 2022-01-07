; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2ChangeDirectory.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2ChangeDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@Cs2Area = common dso_local global %struct.TYPE_4__* null, align 8
@CDB_STAT_REJECT = common dso_local global i32 0, align 4
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4
@CDB_HIRQ_EFLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cs2\09: ReadFileSystem failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2ChangeDirectory() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = ashr i32 %5, 8
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp eq i32 %7, 255
  br i1 %8, label %9, label %20

9:                                                ; preds = %0
  %10 = load i32, i32* @CDB_STAT_REJECT, align 4
  %11 = call i32 @doCDReport(i32 %10)
  %12 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %13 = load i32, i32* @CDB_HIRQ_EFLS, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 4
  br label %70

20:                                               ; preds = %0
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %21, 36
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 255
  %35 = shl i32 %34, 16
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %35, %39
  %41 = call i64 @Cs2ReadFileSystem(i64 %29, i32 %40, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %23
  %44 = call i32 @CDLOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @CDB_STAT_REJECT, align 4
  %46 = call i32 @doCDReport(i32 %45)
  %47 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %48 = load i32, i32* @CDB_HIRQ_EFLS, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 4
  br label %70

55:                                               ; preds = %23
  br label %56

56:                                               ; preds = %55, %20
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @doCDReport(i32 %60)
  %62 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %63 = load i32, i32* @CDB_HIRQ_EFLS, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %64
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %57, %43, %9
  ret void
}

declare dso_local i32 @doCDReport(i32) #1

declare dso_local i64 @Cs2ReadFileSystem(i64, i32, i32) #1

declare dso_local i32 @CDLOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
