; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_forwardQueryStartPosition.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_forwardQueryStartPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64, i64 }

@BLK_FILE_BLOCK = common dso_local global i64 0, align 8
@BLK_CACHE_BLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forwardQueryStartPosition(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %3, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %97

21:                                               ; preds = %1
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @getGenericDataBlock(i32* %22, %struct.TYPE_15__* %23, i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = call i64 @IS_DISK_DATA_BLOCK(%struct.TYPE_15__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i64, i64* @BLK_FILE_BLOCK, align 8
  br label %35

33:                                               ; preds = %21
  %34 = load i64, i64* @BLK_CACHE_BLOCK, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  store i64 %36, i64* %6, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  call void @getBlockBasicInfo(%struct.TYPE_16__* sret %7, i8* %37, i64 %38)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_15__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  br label %54

49:                                               ; preds = %35
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  br label %54

54:                                               ; preds = %49, %42
  %55 = phi i64 [ %48, %42 ], [ %53, %49 ]
  store i64 %55, i64* %8, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %84, label %62

62:                                               ; preds = %54
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sle i64 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %71 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_15__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %76, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_15__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80, %69, %54
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @updateOffsetVal(%struct.TYPE_14__* %85, %struct.TYPE_16__* %7, i8* %86)
  br label %97

88:                                               ; preds = %80, %73
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %93, %89
  store i64 %94, i64* %92, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %96 = call i32 @doSkipDataBlock(%struct.TYPE_14__* %95)
  br label %97

97:                                               ; preds = %20, %88, %84
  ret void
}

declare dso_local i8* @getGenericDataBlock(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @IS_DISK_DATA_BLOCK(%struct.TYPE_15__*) #1

declare dso_local void @getBlockBasicInfo(%struct.TYPE_16__* sret, i8*, i64) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_15__*) #1

declare dso_local i32 @updateOffsetVal(%struct.TYPE_14__*, %struct.TYPE_16__*, i8*) #1

declare dso_local i32 @doSkipDataBlock(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
