; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_resetAccumulator.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_resetAccumulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_17__ = type { i64, i64, %struct.AggInfo_func*, %struct.TYPE_13__* }
%struct.AggInfo_func = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@OP_Null = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"DISTINCT aggregates must have exactly one argument\00", align 1
@OP_OpenEphemeral = common dso_local global i32 0, align 4
@P4_KEYINFO_HANDOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_17__*)* @resetAccumulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resetAccumulator(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.AggInfo_func*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %119

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @OP_Null, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sqlite3VdbeAddOp2(i32* %31, i32 %32, i32 0, i32 %40)
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = load %struct.AggInfo_func*, %struct.AggInfo_func** %47, align 8
  store %struct.AggInfo_func* %48, %struct.AggInfo_func** %7, align 8
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %114, %45
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %119

56:                                               ; preds = %49
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @OP_Null, align 4
  %59 = load %struct.AggInfo_func*, %struct.AggInfo_func** %7, align 8
  %60 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sqlite3VdbeAddOp2(i32* %57, i32 %58, i32 0, i32 %61)
  %63 = load %struct.AggInfo_func*, %struct.AggInfo_func** %7, align 8
  %64 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %113

67:                                               ; preds = %56
  %68 = load %struct.AggInfo_func*, %struct.AggInfo_func** %7, align 8
  %69 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %68, i32 0, i32 1
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %8, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %72 = load i32, i32* @EP_xIsSelect, align 4
  %73 = call i32 @ExprHasProperty(%struct.TYPE_16__* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = icmp eq %struct.TYPE_12__* %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %67
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %96

91:                                               ; preds = %83, %67
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = call i32 @sqlite3ErrorMsg(%struct.TYPE_15__* %92, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.AggInfo_func*, %struct.AggInfo_func** %7, align 8
  %95 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %94, i32 0, i32 0
  store i32 -1, i32* %95, align 8
  br label %112

96:                                               ; preds = %83
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = call i32* @keyInfoFromExprList(%struct.TYPE_15__* %97, %struct.TYPE_12__* %101)
  store i32* %102, i32** %9, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* @OP_OpenEphemeral, align 4
  %105 = load %struct.AggInfo_func*, %struct.AggInfo_func** %7, align 8
  %106 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = bitcast i32* %108 to i8*
  %110 = load i32, i32* @P4_KEYINFO_HANDOFF, align 4
  %111 = call i32 @sqlite3VdbeAddOp4(i32* %103, i32 %104, i32 %107, i32 0, i32 0, i8* %109, i32 %110)
  br label %112

112:                                              ; preds = %96, %91
  br label %113

113:                                              ; preds = %112, %56
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  %117 = load %struct.AggInfo_func*, %struct.AggInfo_func** %7, align 8
  %118 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %117, i32 1
  store %struct.AggInfo_func* %118, %struct.AggInfo_func** %7, align 8
  br label %49

119:                                              ; preds = %21, %49
  ret void
}

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_15__*, i8*) #1

declare dso_local i32* @keyInfoFromExprList(%struct.TYPE_15__*, %struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
