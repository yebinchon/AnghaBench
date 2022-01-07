; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_enode.c_iscallb.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_enode.c_iscallb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@RIGHT = common dso_local global i64 0, align 8
@CALL = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@INDIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscallb(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RIGHT, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %76

8:                                                ; preds = %1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %11, i64 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %76

15:                                               ; preds = %8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %18, i64 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %76

22:                                               ; preds = %15
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %25, i64 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CALL, align 8
  %31 = load i64, i64* @B, align 8
  %32 = add nsw i64 %30, %31
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %22
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %37, i64 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @INDIR, align 8
  %43 = load i64, i64* @B, align 8
  %44 = add nsw i64 %42, %43
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %34
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %53, i64 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @isaddrop(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %46
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %63, i64 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %67, i64 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %60, %46, %34, %22, %15, %8, %1
  %77 = phi i1 [ false, %46 ], [ false, %34 ], [ false, %22 ], [ false, %15 ], [ false, %8 ], [ false, %1 ], [ %75, %60 ]
  %78 = zext i1 %77 to i32
  ret i32 %78
}

declare dso_local i64 @isaddrop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
