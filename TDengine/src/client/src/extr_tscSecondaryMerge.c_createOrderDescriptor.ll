; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_createOrderDescriptor.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_createOrderDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@PRIMARYKEY_TIMESTAMP_COL_INDEX = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32**, %struct.TYPE_9__*, i32*)* @createOrderDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @createOrderDescriptor(i32** %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %17, %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @calloc(i64 %31, i32 8)
  %33 = inttoptr i64 %32 to i64*
  store i64* %33, i64** %9, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = icmp eq i64* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 8
  store i64 %37, i64* %4, align 8
  br label %98

38:                                               ; preds = %30
  %39 = load i64, i64* %8, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %38
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %45, %49
  store i64 %50, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %51

51:                                               ; preds = %64, %41
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %52, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %10, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  store i64 %59, i64* %63, align 8
  br label %64

64:                                               ; preds = %58
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %51

67:                                               ; preds = %51
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i64, i64* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 8
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %67
  br label %79

79:                                               ; preds = %78, %38
  %80 = load i64*, i64** %9, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32* @tOrderDesCreate(i64* %80, i64 %81, i32* %82, i32 %86)
  %88 = load i32**, i32*** %5, align 8
  store i32* %87, i32** %88, align 8
  %89 = load i64*, i64** %9, align 8
  %90 = call i32 @tfree(i64* %89)
  %91 = load i32**, i32*** %5, align 8
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %79
  %95 = load i64, i64* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 8
  store i64 %95, i64* %4, align 8
  br label %98

96:                                               ; preds = %79
  %97 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %97, i64* %4, align 8
  br label %98

98:                                               ; preds = %96, %94, %36
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32* @tOrderDesCreate(i64*, i64, i32*, i32) #1

declare dso_local i32 @tfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
