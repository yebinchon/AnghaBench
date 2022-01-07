; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tinterpolation.c_taosGetNumOfResWithoutLimit.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tinterpolation.c_taosGetNumOfResWithoutLimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }

@TSQL_SO_ASC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @taosGetNumOfResWithoutLimit(%struct.TYPE_4__* %0, i64* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TSQL_SO_ASC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load i64*, i64** %8, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %24, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = load i64, i64* %10, align 8
  %38 = sdiv i64 %36, %37
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %12, align 8
  br label %52

40:                                               ; preds = %17
  %41 = load i64*, i64** %8, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %14, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %14, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load i64, i64* %10, align 8
  %50 = sdiv i64 %48, %49
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %12, align 8
  br label %52

52:                                               ; preds = %40, %23
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp sge i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i64, i64* %12, align 8
  store i64 %58, i64* %6, align 8
  br label %90

59:                                               ; preds = %5
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = call i64 @INTERPOL_IS_ASC_INTERPOL(%struct.TYPE_4__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %65, %59
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = call i64 @INTERPOL_IS_ASC_INTERPOL(%struct.TYPE_4__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75, %65
  store i64 0, i64* %6, align 8
  br label %90

80:                                               ; preds = %75, %69
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = call i64 @labs(i64 %85) #3
  %87 = load i64, i64* %10, align 8
  %88 = sdiv i64 %86, %87
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %80, %79, %52
  %91 = load i64, i64* %6, align 8
  ret i64 %91
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @INTERPOL_IS_ASC_INTERPOL(%struct.TYPE_4__*) #1

; Function Attrs: nounwind readnone
declare dso_local i64 @labs(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
