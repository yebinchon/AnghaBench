; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getNextDataFileCompInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_getNextDataFileCompInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@QUERY_ASC_FORWARD_STEP = common dso_local global i64 0, align 8
@TSQL_SO_ASC = common dso_local global i64 0, align 8
@TSQL_SO_DESC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"QInfo:%p no file to access, try data in cache\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"QInfo:%p no file to access in desc order, query completed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getNextDataFileCompInfo(%struct.TYPE_8__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  store i64 0, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @QUERY_ASC_FORWARD_STEP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* @TSQL_SO_ASC, align 8
  br label %27

25:                                               ; preds = %3
  %26 = load i64, i64* @TSQL_SO_DESC, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %27, %79
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @vnodeGetVnodeHeaderFileIdx(i32* %31, %struct.TYPE_8__* %32, i64 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %29
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @QUERY_ASC_FORWARD_STEP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = call i32 @GET_QINFO_ADDR(%struct.TYPE_9__* %42)
  %44 = call i32 @dTrace(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = call i32 @GET_QINFO_ADDR(%struct.TYPE_9__* %46)
  %48 = call i32 @dTrace(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = call i32 @vnodeFreeFieldsEx(%struct.TYPE_8__* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 4
  br label %80

54:                                               ; preds = %29
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @vnodeGetCompBlockInfo(i32* %55, %struct.TYPE_8__* %56, i64 %57)
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %80

61:                                               ; preds = %54
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load i64, i64* %6, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = load i64, i64* %8, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = call i32 @vnodeFreeFieldsEx(%struct.TYPE_8__* %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 4
  store i64 -1, i64* %8, align 8
  br label %80

79:                                               ; preds = %71, %61
  br label %29

80:                                               ; preds = %74, %60, %49
  %81 = load i64, i64* %8, align 8
  ret i64 %81
}

declare dso_local i64 @vnodeGetVnodeHeaderFileIdx(i32*, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @dTrace(i8*, i32) #1

declare dso_local i32 @GET_QINFO_ADDR(%struct.TYPE_9__*) #1

declare dso_local i32 @vnodeFreeFieldsEx(%struct.TYPE_8__*) #1

declare dso_local i64 @vnodeGetCompBlockInfo(i32*, %struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
