; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_hasNullVal.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_hasNullVal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i64, i32*, %struct.TYPE_15__*, i32)* @hasNullVal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hasNullVal(%struct.TYPE_14__* %0, i64 %1, i32* %2, %struct.TYPE_15__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @TSDB_COL_IS_TAG(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %49

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = icmp eq %struct.TYPE_15__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %47

32:                                               ; preds = %28
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call %struct.TYPE_15__* @getFieldInfo(%struct.TYPE_14__* %33, i32* %34, %struct.TYPE_15__* %35, i64 %36)
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %12, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %45, %40, %32
  br label %47

47:                                               ; preds = %46, %31
  br label %48

48:                                               ; preds = %47, %25
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local i64 @TSDB_COL_IS_TAG(i32) #1

declare dso_local %struct.TYPE_15__* @getFieldInfo(%struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
