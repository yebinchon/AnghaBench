; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_stage_protocol.c_InsertShardPlacementRows.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_stage_protocol.c_InsertShardPlacementRows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@FILE_FINALIZED = common dso_local global i32 0, align 4
@INVALID_PLACEMENT_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @InsertShardPlacementRows(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @list_length(i32* %22)
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load i32*, i32** @NIL, align 8
  store i32* %24, i32** %14, align 8
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %61, %5
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %11, align 4
  %34 = srem i32 %32, %33
  store i32 %34, i32* %15, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %15, align 4
  %37 = call i64 @list_nth(i32* %35, i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %16, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* @FILE_FINALIZED, align 4
  store i32 %42, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32* null, i32** %21, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @INVALID_PLACEMENT_ID, align 4
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @InsertShardPlacementRow(i32 %43, i32 %44, i32 %45, i32 0, i32 %46)
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %20, align 4
  %50 = call i32* @LoadShardPlacement(i32 %48, i32 %49)
  store i32* %50, i32** %21, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32*, i32** %21, align 8
  %53 = call i32* @lappend(i32* %51, i32* %52)
  store i32* %53, i32** %14, align 8
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %29
  br label %64

60:                                               ; preds = %29
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %25

64:                                               ; preds = %59, %25
  %65 = load i32*, i32** %14, align 8
  ret i32* %65
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i64 @list_nth(i32*, i32) #1

declare dso_local i32 @InsertShardPlacementRow(i32, i32, i32, i32, i32) #1

declare dso_local i32* @LoadShardPlacement(i32, i32) #1

declare dso_local i32* @lappend(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
