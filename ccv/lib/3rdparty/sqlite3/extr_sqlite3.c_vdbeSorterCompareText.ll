; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_vdbeSorterCompareText.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_vdbeSorterCompareText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8*, i32, i8*, i32)* @vdbeSorterCompareText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeSorterCompareText(%struct.TYPE_8__* %0, i32* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %13, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** %14, align 8
  %24 = load i64*, i64** %13, align 8
  %25 = load i64*, i64** %13, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  store i64* %28, i64** %15, align 8
  %29 = load i64*, i64** %14, align 8
  %30 = load i64*, i64** %14, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  store i64* %33, i64** %16, align 8
  %34 = load i64*, i64** %13, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @getVarint32(i64* %35, i32 %36)
  %38 = load i64*, i64** %14, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @getVarint32(i64* %39, i32 %40)
  %42 = load i64*, i64** %15, align 8
  %43 = load i64*, i64** %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @MIN(i32 %44, i32 %45)
  %47 = sub nsw i32 %46, 13
  %48 = sdiv i32 %47, 2
  %49 = call i32 @memcmp(i64* %42, i64* %43, i32 %48)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %6
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %18, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %19, align 4
  br label %56

56:                                               ; preds = %52, %6
  %57 = load i32, i32* %19, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %56
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @vdbeSorterCompareTail(%struct.TYPE_8__* %69, i32* %70, i8* %71, i32 %72, i8* %73, i32 %74)
  store i32 %75, i32* %19, align 4
  br label %76

76:                                               ; preds = %68, %59
  br label %92

77:                                               ; preds = %56
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i32, i32* %19, align 4
  %90 = mul nsw i32 %89, -1
  store i32 %90, i32* %19, align 4
  br label %91

91:                                               ; preds = %88, %77
  br label %92

92:                                               ; preds = %91, %76
  %93 = load i32, i32* %19, align 4
  ret i32 %93
}

declare dso_local i32 @getVarint32(i64*, i32) #1

declare dso_local i32 @memcmp(i64*, i64*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @vdbeSorterCompareTail(%struct.TYPE_8__*, i32*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
