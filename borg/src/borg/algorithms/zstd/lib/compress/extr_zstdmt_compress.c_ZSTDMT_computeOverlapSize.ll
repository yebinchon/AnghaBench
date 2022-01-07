; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_computeOverlapSize.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_computeOverlapSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"overlapLog : %i\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"overlap size : %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @ZSTDMT_computeOverlapSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDMT_computeOverlapSize(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ZSTDMT_overlapLog(i32 %5, i32 %8)
  %10 = sub nsw i32 9, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp sge i32 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %20

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %2, align 4
  %19 = sub nsw i32 %17, %18
  br label %20

20:                                               ; preds = %14, %13
  %21 = phi i32 [ 0, %13 ], [ %19, %14 ]
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp sle i32 0, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = icmp sle i32 %25, 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ false, %20 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ZSTDMT_computeTargetJobLog(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0)
  %40 = sub nsw i64 %39, 2
  %41 = call i32 @MIN(i32 %38, i64 %40)
  %42 = load i32, i32* %2, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %27
  %45 = load i32, i32* %3, align 4
  %46 = icmp sle i32 0, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = icmp sle i32 %48, 30
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = shl i32 1, %57
  %59 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %67

63:                                               ; preds = %50
  %64 = load i32, i32* %3, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 1, %65
  br label %67

67:                                               ; preds = %63, %62
  %68 = phi i64 [ 0, %62 ], [ %66, %63 ]
  ret i64 %68
}

declare dso_local i32 @ZSTDMT_overlapLog(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i64 @ZSTDMT_computeTargetJobLog(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
