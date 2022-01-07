; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeTagMgmt.c_median.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeTagMgmt.c_median.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@TSDB_DATA_TYPE_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64, i32, i32, %struct.TYPE_5__*, i32 (i8*, i8*, %struct.TYPE_5__*)*)* @median to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @median(i8** %0, i64 %1, i32 %2, i32 %3, %struct.TYPE_5__* %4, i32 (i8*, i8*, %struct.TYPE_5__*)* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32 (i8*, i8*, %struct.TYPE_5__*)*, align 8
  %13 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  store i32 (i8*, i8*, %struct.TYPE_5__*)* %5, i32 (i8*, i8*, %struct.TYPE_5__*)** %12, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sub nsw i32 %14, %15
  %17 = ashr i32 %16, 1
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32 (i8*, i8*, %struct.TYPE_5__*)*, i32 (i8*, i8*, %struct.TYPE_5__*)** %12, align 8
  %21 = load i8**, i8*** %7, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = call i32 %20(i8* %25, i8* %30, %struct.TYPE_5__* %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %46

34:                                               ; preds = %6
  %35 = load i8**, i8*** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8**, i8*** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @tsDataSwap(i8** %38, i8** %42, i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %34, %6
  %47 = load i32 (i8*, i8*, %struct.TYPE_5__*)*, i32 (i8*, i8*, %struct.TYPE_5__*)** %12, align 8
  %48 = load i8**, i8*** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i8**, i8*** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %59 = call i32 %47(i8* %52, i8* %57, %struct.TYPE_5__* %58)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %84

61:                                               ; preds = %46
  %62 = load i8**, i8*** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8**, i8*** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @tsDataSwap(i8** %65, i8** %69, i32 %70, i64 %71)
  %73 = load i8**, i8*** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8**, i8*** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @tsDataSwap(i8** %76, i8** %80, i32 %81, i64 %82)
  br label %112

84:                                               ; preds = %46
  %85 = load i32 (i8*, i8*, %struct.TYPE_5__*)*, i32 (i8*, i8*, %struct.TYPE_5__*)** %12, align 8
  %86 = load i8**, i8*** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** %7, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %97 = call i32 %85(i8* %90, i8* %95, %struct.TYPE_5__* %96)
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %111

99:                                               ; preds = %84
  %100 = load i8**, i8*** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8**, i8*** %7, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @tsDataSwap(i8** %103, i8** %107, i32 %108, i64 %109)
  br label %111

111:                                              ; preds = %99, %84
  br label %112

112:                                              ; preds = %111, %61
  %113 = load i32 (i8*, i8*, %struct.TYPE_5__*)*, i32 (i8*, i8*, %struct.TYPE_5__*)** %12, align 8
  %114 = load i8**, i8*** %7, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = load i8**, i8*** %7, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %125 = call i32 %113(i8* %118, i8* %123, %struct.TYPE_5__* %124)
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %112
  %128 = load i32 (i8*, i8*, %struct.TYPE_5__*)*, i32 (i8*, i8*, %struct.TYPE_5__*)** %12, align 8
  %129 = load i8**, i8*** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = load i8**, i8*** %7, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %140 = call i32 %128(i8* %133, i8* %138, %struct.TYPE_5__* %139)
  %141 = icmp sle i32 %140, 0
  br label %142

142:                                              ; preds = %127, %112
  %143 = phi i1 [ false, %112 ], [ %141, %127 ]
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  ret void
}

declare dso_local i32 @tsDataSwap(i8**, i8**, i32, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
