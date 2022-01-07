; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_set_auxdata.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_set_auxdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, %struct.AuxData*, i32 }
%struct.AuxData = type { i8*, void (i8*)* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3_set_auxdata(%struct.TYPE_9__* %0, i32 %1, i8* %2, void (i8*)* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca void (i8*)*, align 8
  %9 = alloca %struct.AuxData*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store void (i8*)* %3, void (i8*)** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %118

16:                                               ; preds = %4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sqlite3_mutex_held(i32 %22)
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %10, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %88

36:                                               ; preds = %30, %16
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  br label %44

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ %42, %39 ], [ 0, %43 ]
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 16, %47
  %49 = add i64 24, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call %struct.TYPE_10__* @sqlite3DbRealloc(%struct.TYPE_11__* %54, %struct.TYPE_10__* %55, i32 %56)
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %10, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %44
  br label %118

61:                                               ; preds = %44
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load %struct.AuxData*, %struct.AuxData** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.AuxData, %struct.AuxData* %67, i64 %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = mul i64 16, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memset(%struct.AuxData* %70, i32 0, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %61, %30
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load %struct.AuxData*, %struct.AuxData** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.AuxData, %struct.AuxData* %91, i64 %93
  store %struct.AuxData* %94, %struct.AuxData** %9, align 8
  %95 = load %struct.AuxData*, %struct.AuxData** %9, align 8
  %96 = getelementptr inbounds %struct.AuxData, %struct.AuxData* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %88
  %100 = load %struct.AuxData*, %struct.AuxData** %9, align 8
  %101 = getelementptr inbounds %struct.AuxData, %struct.AuxData* %100, i32 0, i32 1
  %102 = load void (i8*)*, void (i8*)** %101, align 8
  %103 = icmp ne void (i8*)* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.AuxData*, %struct.AuxData** %9, align 8
  %106 = getelementptr inbounds %struct.AuxData, %struct.AuxData* %105, i32 0, i32 1
  %107 = load void (i8*)*, void (i8*)** %106, align 8
  %108 = load %struct.AuxData*, %struct.AuxData** %9, align 8
  %109 = getelementptr inbounds %struct.AuxData, %struct.AuxData* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  call void %107(i8* %110)
  br label %111

111:                                              ; preds = %104, %99, %88
  %112 = load i8*, i8** %7, align 8
  %113 = load %struct.AuxData*, %struct.AuxData** %9, align 8
  %114 = getelementptr inbounds %struct.AuxData, %struct.AuxData* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = load void (i8*)*, void (i8*)** %8, align 8
  %116 = load %struct.AuxData*, %struct.AuxData** %9, align 8
  %117 = getelementptr inbounds %struct.AuxData, %struct.AuxData* %116, i32 0, i32 1
  store void (i8*)* %115, void (i8*)** %117, align 8
  br label %124

118:                                              ; preds = %60, %15
  %119 = load void (i8*)*, void (i8*)** %8, align 8
  %120 = icmp ne void (i8*)* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load void (i8*)*, void (i8*)** %8, align 8
  %123 = load i8*, i8** %7, align 8
  call void %122(i8* %123)
  br label %124

124:                                              ; preds = %111, %121, %118
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local %struct.TYPE_10__* @sqlite3DbRealloc(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @memset(%struct.AuxData*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
