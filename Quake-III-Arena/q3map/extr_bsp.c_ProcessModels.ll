; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_bsp.c_ProcessModels.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_bsp.c_ProcessModels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@verbose = common dso_local global i32 0, align 4
@entity_num = common dso_local global i64 0, align 8
@num_entities = common dso_local global i64 0, align 8
@entities = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"############### model %i ###############\0A\00", align 1
@nummodels = common dso_local global i32 0, align 4
@verboseentities = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessModels() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = load i32, i32* @verbose, align 4
  store i32 %3, i32* %1, align 4
  %4 = call i32 (...) @BeginBSPFile()
  store i64 0, i64* @entity_num, align 8
  br label %5

5:                                                ; preds = %38, %0
  %6 = load i64, i64* @entity_num, align 8
  %7 = load i64, i64* @num_entities, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @entities, align 8
  %11 = load i64, i64* @entity_num, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %9
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %38

23:                                               ; preds = %17, %9
  %24 = load i32, i32* @nummodels, align 4
  %25 = call i32 @qprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i64, i64* @entity_num, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @ProcessWorldModel()
  br label %32

30:                                               ; preds = %23
  %31 = call i32 (...) @ProcessSubModel()
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* @verboseentities, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @qfalse, align 4
  store i32 %36, i32* @verbose, align 4
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i64, i64* @entity_num, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* @entity_num, align 8
  br label %5

41:                                               ; preds = %5
  %42 = load i32, i32* %1, align 4
  store i32 %42, i32* @verbose, align 4
  ret void
}

declare dso_local i32 @BeginBSPFile(...) #1

declare dso_local i32 @qprintf(i8*, i32) #1

declare dso_local i32 @ProcessWorldModel(...) #1

declare dso_local i32 @ProcessSubModel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
