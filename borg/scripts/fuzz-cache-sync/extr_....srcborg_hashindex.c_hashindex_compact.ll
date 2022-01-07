; ModuleID = '/home/carl/AnghaBench/borg/scripts/fuzz-cache-sync/extr_....srcborg_hashindex.c_hashindex_compact.c'
source_filename = "/home/carl/AnghaBench/borg/scripts/fuzz-cache-sync/extr_....srcborg_hashindex.c_hashindex_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @hashindex_compact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashindex_compact(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %141

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %118, %69, %32
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %134

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %59, %39
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @BUCKET_IS_EMPTY(%struct.TYPE_6__* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @BUCKET_IS_DELETED(%struct.TYPE_6__* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br label %57

57:                                               ; preds = %51, %46
  %58 = phi i1 [ false, %46 ], [ %56, %51 ]
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %41

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %7, align 4
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @BUCKET_ADDR(%struct.TYPE_6__* %70, i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @BUCKET_ADDR(%struct.TYPE_6__* %73, i32 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memmove(i32 %72, i32 %75, i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %33

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %106, %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i64 @BUCKET_IS_EMPTY(%struct.TYPE_6__* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @BUCKET_IS_DELETED(%struct.TYPE_6__* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br label %104

104:                                              ; preds = %98, %95, %90, %85
  %105 = phi i1 [ false, %95 ], [ false, %90 ], [ false, %85 ], [ %103, %98 ]
  br i1 %105, label %106, label %111

106:                                              ; preds = %104
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %7, align 4
  br label %85

111:                                              ; preds = %104
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  br label %134

118:                                              ; preds = %111
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @BUCKET_ADDR(%struct.TYPE_6__* %119, i32 %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @BUCKET_ADDR(%struct.TYPE_6__* %122, i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %125, %128
  %130 = call i32 @memcpy(i32 %121, i32 %124, i32 %129)
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %10, align 4
  br label %33

134:                                              ; preds = %117, %33
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %134, %31
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i64 @BUCKET_IS_EMPTY(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @BUCKET_IS_DELETED(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @BUCKET_ADDR(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
