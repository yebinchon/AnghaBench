; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getValidDataBlocksRangeIndex.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getValidDataBlocksRangeIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }

@TSQL_SO_ASC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"QInfo:%p vid:%d sid:%d id:%s, no result in files\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, %struct.TYPE_9__*, i32, i64, i64, i32*)* @getValidDataBlocksRangeIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getValidDataBlocksRangeIndex(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_9__* %2, i32 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %16, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i64 @GET_QINFO_ADDR(i32* %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %17, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i64, i64* %13, align 8
  %27 = load i32, i32* @TSQL_SO_ASC, align 4
  %28 = call i64 @binarySearchForBlockImpl(%struct.TYPE_9__* %24, i32 %25, i64 %26, i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %31, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %7
  %41 = load i64, i64* %14, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %41, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %40, %7
  %51 = load i32*, i32** %17, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dTrace(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32* %51, i32 %54, i32 %57, i32 %60)
  store i32 0, i32* %8, align 4
  br label %122

62:                                               ; preds = %40
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %15, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %120, %62
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp sle i32 %70, %72
  br i1 %73, label %74, label %121

74:                                               ; preds = %68
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %14, align 8
  %83 = icmp sle i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %74
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %14, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %121

95:                                               ; preds = %84, %74
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %95
  %106 = load i32*, i32** %15, align 8
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %121

109:                                              ; preds = %95
  %110 = load i32*, i32** %15, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %112, 1
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %121

116:                                              ; preds = %109
  %117 = load i32*, i32** %15, align 8
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %116
  br label %68

121:                                              ; preds = %115, %105, %94, %68
  store i32 1, i32* %8, align 4
  br label %122

122:                                              ; preds = %121, %50
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local i64 @GET_QINFO_ADDR(i32*) #1

declare dso_local i64 @binarySearchForBlockImpl(%struct.TYPE_9__*, i32, i64, i32) #1

declare dso_local i32 @dTrace(i8*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
