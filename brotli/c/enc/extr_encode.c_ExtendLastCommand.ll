; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_ExtendLastCommand.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_ExtendLastCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_8__, i64*, %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@BROTLI_WINDOW_GAP = common dso_local global i64 0, align 8
@BROTLI_NUM_DISTANCE_SHORT_CODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32*)* @ExtendLastCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExtendLastCommand(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 %23
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %7, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %8, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = shl i64 1, %36
  %38 = load i64, i64* @BROTLI_WINDOW_GAP, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %10, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 33554431
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %11, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = sub nsw i64 %47, %48
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %3
  %54 = load i64, i64* %12, align 8
  br label %57

55:                                               ; preds = %3
  %56 = load i64, i64* %10, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  store i64 %58, i64* %13, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %14, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = call i32 @CommandRestoreDistanceCode(%struct.TYPE_9__* %64, i32* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @BROTLI_NUM_DISTANCE_SHORT_CODES, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @BROTLI_NUM_DISTANCE_SHORT_CODES, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sub nsw i32 %73, %75
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %14, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %149

80:                                               ; preds = %72, %57
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp sle i64 %81, %82
  br i1 %83, label %84, label %124

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %112, %84
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %85
  %90 = load i64*, i64** %8, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %90, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %8, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %14, align 8
  %103 = sub nsw i64 %101, %102
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = and i64 %103, %105
  %107 = getelementptr inbounds i64, i64* %98, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %97, %108
  br label %110

110:                                              ; preds = %89, %85
  %111 = phi i1 [ false, %85 ], [ %109, %89 ]
  br i1 %111, label %112, label %123

112:                                              ; preds = %110
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %117, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %85

123:                                              ; preds = %110
  br label %125

124:                                              ; preds = %80
  br label %125

125:                                              ; preds = %124, %123
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 33554431
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = ashr i32 %135, 25
  %137 = add nsw i32 %132, %136
  %138 = sext i32 %137 to i64
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 1023
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @TO_BROTLI_BOOL(i32 %144)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = call i32 @GetLengthCode(i32 %128, i64 %138, i32 %145, i32* %147)
  br label %149

149:                                              ; preds = %125, %72
  ret void
}

declare dso_local i32 @CommandRestoreDistanceCode(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @GetLengthCode(i32, i64, i32, i32*) #1

declare dso_local i32 @TO_BROTLI_BOOL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
