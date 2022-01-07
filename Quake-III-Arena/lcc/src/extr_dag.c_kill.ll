; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_dag.c_kill.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_dag.c_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dag = type { %struct.dag*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__**, i32 }
%struct.TYPE_3__ = type { i64*, i32 }

@buckets = common dso_local global %struct.dag** null, align 8
@INDIR = common dso_local global i64 0, align 8
@nodecount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dag**, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %68, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.dag**, %struct.dag*** @buckets, align 8
  %8 = call i32 @NELEMS(%struct.dag** %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %71

10:                                               ; preds = %5
  %11 = load %struct.dag**, %struct.dag*** @buckets, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.dag*, %struct.dag** %11, i64 %13
  store %struct.dag** %14, %struct.dag*** %4, align 8
  br label %15

15:                                               ; preds = %66, %10
  %16 = load %struct.dag**, %struct.dag*** %4, align 8
  %17 = load %struct.dag*, %struct.dag** %16, align 8
  %18 = icmp ne %struct.dag* %17, null
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = load %struct.dag**, %struct.dag*** %4, align 8
  %21 = load %struct.dag*, %struct.dag** %20, align 8
  %22 = getelementptr inbounds %struct.dag, %struct.dag* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @generic(i32 %24)
  %26 = load i64, i64* @INDIR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %19
  %29 = load %struct.dag**, %struct.dag*** %4, align 8
  %30 = load %struct.dag*, %struct.dag** %29, align 8
  %31 = getelementptr inbounds %struct.dag, %struct.dag* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @isaddrop(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %28
  %41 = load %struct.dag**, %struct.dag*** %4, align 8
  %42 = load %struct.dag*, %struct.dag** %41, align 8
  %43 = getelementptr inbounds %struct.dag, %struct.dag* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %2, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %40, %28
  %55 = load %struct.dag**, %struct.dag*** %4, align 8
  %56 = load %struct.dag*, %struct.dag** %55, align 8
  %57 = getelementptr inbounds %struct.dag, %struct.dag* %56, i32 0, i32 0
  %58 = load %struct.dag*, %struct.dag** %57, align 8
  %59 = load %struct.dag**, %struct.dag*** %4, align 8
  store %struct.dag* %58, %struct.dag** %59, align 8
  %60 = load i32, i32* @nodecount, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* @nodecount, align 4
  br label %66

62:                                               ; preds = %40, %19
  %63 = load %struct.dag**, %struct.dag*** %4, align 8
  %64 = load %struct.dag*, %struct.dag** %63, align 8
  %65 = getelementptr inbounds %struct.dag, %struct.dag* %64, i32 0, i32 0
  store %struct.dag** %65, %struct.dag*** %4, align 8
  br label %66

66:                                               ; preds = %62, %54
  br label %15

67:                                               ; preds = %15
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %5

71:                                               ; preds = %5
  ret void
}

declare dso_local i32 @NELEMS(%struct.dag**) #1

declare dso_local i64 @generic(i32) #1

declare dso_local i32 @isaddrop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
