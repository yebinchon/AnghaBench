; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_sight.c_P_DivlineSide.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_sight.c_P_DivlineSide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@FRACBITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_DivlineSide(i64 %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 2, i32* %4, align 4
  br label %110

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %4, align 4
  br label %110

35:                                               ; preds = %23
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %110

41:                                               ; preds = %3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 2, i32* %4, align 4
  br label %110

53:                                               ; preds = %46
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp sle i64 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %110

65:                                               ; preds = %53
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %110

71:                                               ; preds = %41
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  store i64 %81, i64* %9, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @FRACBITS, align 8
  %86 = ashr i64 %84, %85
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @FRACBITS, align 8
  %89 = ashr i64 %87, %88
  %90 = mul nsw i64 %86, %89
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @FRACBITS, align 8
  %93 = ashr i64 %91, %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FRACBITS, align 8
  %98 = ashr i64 %96, %97
  %99 = mul nsw i64 %93, %98
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %10, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %71
  store i32 0, i32* %4, align 4
  br label %110

104:                                              ; preds = %71
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 2, i32* %4, align 4
  br label %110

109:                                              ; preds = %104
  store i32 1, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %108, %103, %65, %59, %52, %35, %29, %22
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
