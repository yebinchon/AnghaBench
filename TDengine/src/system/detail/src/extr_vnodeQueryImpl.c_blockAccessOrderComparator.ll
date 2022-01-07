; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_blockAccessOrderComparator.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_blockAccessOrderComparator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64*, i64*, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [52 x i8] c"error in header file, two block with same offset:%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i8*)* @blockAccessOrderComparator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @blockAccessOrderComparator(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i64*
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %10, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %35, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  store i64 1, i64* %4, align 8
  br label %124

44:                                               ; preds = %3
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ugt i64 %45, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i64 -1, i64* %4, align 8
  br label %124

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %58, i64 %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %62
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %13, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %66, i64 %67
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %14, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %77, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %55
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %91, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %85
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @dError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %105)
  br label %107

107:                                              ; preds = %99, %85, %55
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %113, %119
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 1, i32 -1
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %4, align 8
  br label %124

124:                                              ; preds = %107, %53, %43
  %125 = load i64, i64* %4, align 8
  ret i64 %125
}

declare dso_local i32 @dError(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
