; ModuleID = '/home/carl/AnghaBench/borg/src/borg/extr__hashindex.c_hashindex_set.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/extr__hashindex.c_hashindex_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i8*)* @hashindex_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashindex_set(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @hashindex_lookup(%struct.TYPE_9__* %11, i8* %12, i32* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %119

16:                                               ; preds = %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @grow_size(i32 %28)
  %30 = call i32 @hashindex_resize(%struct.TYPE_9__* %25, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %134

33:                                               ; preds = %24
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @hashindex_index(%struct.TYPE_9__* %34, i8* %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %16
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %66, %37
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @BUCKET_IS_EMPTY(%struct.TYPE_9__* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @BUCKET_IS_DELETED(%struct.TYPE_9__* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %44, %39
  %51 = phi i1 [ false, %39 ], [ %49, %44 ]
  br i1 %51, label %52, label %67

52:                                               ; preds = %50
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %60, %52
  br label %39

67:                                               ; preds = %50
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @BUCKET_IS_EMPTY(%struct.TYPE_9__* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %72
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @hashindex_resize(%struct.TYPE_9__* %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %134

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %72
  br label %94

94:                                               ; preds = %93, %67
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32* @BUCKET_ADDR(%struct.TYPE_9__* %95, i32 %96)
  store i32* %97, i32** %10, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @memcpy(i32* %98, i8* %99, i32 %102)
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i8*, i8** %7, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @memcpy(i32* %109, i8* %110, i32 %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %116, align 8
  br label %133

119:                                              ; preds = %3
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32* @BUCKET_ADDR(%struct.TYPE_9__* %120, i32 %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i8*, i8** %7, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(i32* %127, i8* %128, i32 %131)
  br label %133

133:                                              ; preds = %119, %94
  store i32 1, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %91, %32
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @hashindex_lookup(%struct.TYPE_9__*, i8*, i32*) #1

declare dso_local i32 @hashindex_resize(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @grow_size(i32) #1

declare dso_local i32 @hashindex_index(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @BUCKET_IS_EMPTY(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @BUCKET_IS_DELETED(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @BUCKET_ADDR(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
