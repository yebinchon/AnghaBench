; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RoQPrepMcomp.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RoQPrepMcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i64* }

@cinTable = common dso_local global %struct.TYPE_3__* null, align 8
@currentHandle = common dso_local global i64 0, align 8
@cin = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @RoQPrepMcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RoQPrepMcomp(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %12 = load i64, i64* @currentHandle, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %17 = load i64, i64* @currentHandle, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %22 = load i64, i64* @currentHandle, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %27 = load i64, i64* @currentHandle, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 4
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %35 = load i64, i64* @currentHandle, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %41, %42
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %44, %45
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %40, %33, %2
  store i64 0, i64* %8, align 8
  br label %48

48:                                               ; preds = %87, %47
  %49 = load i64, i64* %8, align 8
  %50 = icmp slt i64 %49, 16
  br i1 %50, label %51, label %90

51:                                               ; preds = %48
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %4, align 8
  %54 = add nsw i64 %52, %53
  %55 = sub nsw i64 %54, 8
  %56 = load i64, i64* %5, align 8
  %57 = mul nsw i64 %55, %56
  store i64 %57, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %58

58:                                               ; preds = %83, %51
  %59 = load i64, i64* %7, align 8
  %60 = icmp slt i64 %59, 16
  br i1 %60, label %61, label %86

61:                                               ; preds = %58
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %3, align 8
  %64 = add nsw i64 %62, %63
  %65 = sub nsw i64 %64, 8
  %66 = load i64, i64* %6, align 8
  %67 = mul nsw i64 %65, %66
  store i64 %67, i64* %9, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %69 = load i64, i64* @currentHandle, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add nsw i64 %73, %74
  %76 = sub nsw i64 %72, %75
  %77 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %78 = load i64, i64* %7, align 8
  %79 = mul nsw i64 %78, 16
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %79, %80
  %82 = getelementptr inbounds i64, i64* %77, i64 %81
  store i64 %76, i64* %82, align 8
  br label %83

83:                                               ; preds = %61
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %58

86:                                               ; preds = %58
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %8, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %8, align 8
  br label %48

90:                                               ; preds = %48
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
