; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_gen.c_reduce.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_gen.c_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i16**, i64*, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_18__**)* }
%struct.TYPE_18__ = type { %struct.TYPE_17__**, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@IR = common dso_local global %struct.TYPE_13__* null, align 8
@RX = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"(using %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32)* @reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reduce(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca [10 x %struct.TYPE_18__*], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_18__* @reuse(%struct.TYPE_18__* %9, i32 %10)
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %3, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @getrule(%struct.TYPE_18__* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @IR, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i16**, i16*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16*, i16** %18, i64 %20
  %22 = load i16*, i16** %21, align 8
  store i16* %22, i16** %7, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @IR, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load i32 (%struct.TYPE_18__*, i32, %struct.TYPE_18__**)*, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_18__**)** %25, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 0
  %30 = call i32 %26(%struct.TYPE_18__* %27, i32 %28, %struct.TYPE_18__** %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %49, %2
  %32 = load i16*, i16** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %32, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = icmp ne i16 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 %40
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = load i16*, i16** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16, i16* %43, i64 %45
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  call void @reduce(%struct.TYPE_18__* %42, i32 %48)
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %31

52:                                               ; preds = %31
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** @IR, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %123

62:                                               ; preds = %52
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %72, %73
  br label %75

75:                                               ; preds = %68, %62
  %76 = phi i1 [ true, %62 ], [ %74, %68 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %84, align 8
  %86 = load i64, i64* @RX, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %85, i64 %86
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = icmp ne %struct.TYPE_17__* %88, null
  br i1 %89, label %90, label %122

90:                                               ; preds = %75
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %92, align 8
  %94 = load i64, i64* @RX, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %93, i64 %94
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %90
  %101 = load i32, i32* @stderr, align 4
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %103, align 8
  %105 = load i64, i64* @RX, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %104, i64 %105
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @fprint(i32 %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = call i32 @debug(i32 %110)
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %113, align 8
  %115 = load i64, i64* @RX, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %114, i64 %115
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %100, %90, %75
  br label %123

123:                                              ; preds = %122, %52
  ret void
}

declare dso_local %struct.TYPE_18__* @reuse(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @getrule(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @debug(i32) #1

declare dso_local i32 @fprint(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
