; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_dag.c_node.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_dag.c_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dag = type { %struct.TYPE_2__, %struct.dag* }
%struct.TYPE_2__ = type { i32, i64*, i64* }

@buckets = common dso_local global %struct.dag** null, align 8
@nodecount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64)* @node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @node(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dag*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @opindex(i32 %12)
  %14 = load i64, i64* %9, align 8
  %15 = lshr i64 %14, 2
  %16 = xor i64 %13, %15
  %17 = load %struct.dag**, %struct.dag*** @buckets, align 8
  %18 = call i32 @NELEMS(%struct.dag** %17)
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = and i64 %16, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load %struct.dag**, %struct.dag*** @buckets, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dag*, %struct.dag** %23, i64 %25
  %27 = load %struct.dag*, %struct.dag** %26, align 8
  store %struct.dag* %27, %struct.dag** %11, align 8
  br label %28

28:                                               ; preds = %70, %4
  %29 = load %struct.dag*, %struct.dag** %11, align 8
  %30 = icmp ne %struct.dag* %29, null
  br i1 %30, label %31, label %74

31:                                               ; preds = %28
  %32 = load %struct.dag*, %struct.dag** %11, align 8
  %33 = getelementptr inbounds %struct.dag, %struct.dag* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %31
  %39 = load %struct.dag*, %struct.dag** %11, align 8
  %40 = getelementptr inbounds %struct.dag, %struct.dag* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %38
  %48 = load %struct.dag*, %struct.dag** %11, align 8
  %49 = getelementptr inbounds %struct.dag, %struct.dag* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %47
  %57 = load %struct.dag*, %struct.dag** %11, align 8
  %58 = getelementptr inbounds %struct.dag, %struct.dag* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.dag*, %struct.dag** %11, align 8
  %67 = getelementptr inbounds %struct.dag, %struct.dag* %66, i32 0, i32 0
  %68 = ptrtoint %struct.TYPE_2__* %67 to i64
  store i64 %68, i64* %5, align 8
  br label %97

69:                                               ; preds = %56, %47, %38, %31
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.dag*, %struct.dag** %11, align 8
  %72 = getelementptr inbounds %struct.dag, %struct.dag* %71, i32 0, i32 1
  %73 = load %struct.dag*, %struct.dag** %72, align 8
  store %struct.dag* %73, %struct.dag** %11, align 8
  br label %28

74:                                               ; preds = %28
  %75 = load i32, i32* %6, align 4
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call %struct.dag* @dagnode(i32 %75, i64 %76, i64 %77, i64 %78)
  store %struct.dag* %79, %struct.dag** %11, align 8
  %80 = load %struct.dag**, %struct.dag*** @buckets, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.dag*, %struct.dag** %80, i64 %82
  %84 = load %struct.dag*, %struct.dag** %83, align 8
  %85 = load %struct.dag*, %struct.dag** %11, align 8
  %86 = getelementptr inbounds %struct.dag, %struct.dag* %85, i32 0, i32 1
  store %struct.dag* %84, %struct.dag** %86, align 8
  %87 = load %struct.dag*, %struct.dag** %11, align 8
  %88 = load %struct.dag**, %struct.dag*** @buckets, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.dag*, %struct.dag** %88, i64 %90
  store %struct.dag* %87, %struct.dag** %91, align 8
  %92 = load i32, i32* @nodecount, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @nodecount, align 4
  %94 = load %struct.dag*, %struct.dag** %11, align 8
  %95 = getelementptr inbounds %struct.dag, %struct.dag* %94, i32 0, i32 0
  %96 = ptrtoint %struct.TYPE_2__* %95 to i64
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %74, %65
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

declare dso_local i64 @opindex(i32) #1

declare dso_local i32 @NELEMS(%struct.dag**) #1

declare dso_local %struct.dag* @dagnode(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
