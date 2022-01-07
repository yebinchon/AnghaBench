; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/vn/extr_shadow.c_shadow_map_contiguous.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/vn/extr_shadow.c_shadow_map_contiguous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@shadow_map_contiguous.happened = internal global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"shadow_map_contiguous: this can't happen!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, i64, i64)* @shadow_map_contiguous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @shadow_map_contiguous(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @shadow_map_block_to_band(%struct.TYPE_5__* %17, i64 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %14, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @shadow_map_mapped_band(%struct.TYPE_5__* %24, i64 %25, i64 %26, i64* %13)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @FALSE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %4
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @FALSE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* @shadow_map_contiguous.happened, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @shadow_map_contiguous.happened, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %5, align 8
  br label %89

42:                                               ; preds = %31, %4
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @my_trunc(i64 %47, i64 %50)
  store i64 %51, i64* %15, align 8
  br label %52

52:                                               ; preds = %81, %42
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %10, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @shadow_map_mapped_band(%struct.TYPE_5__* %59, i64 %60, i64 %61, i64* %16)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @FALSE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @FALSE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %15, align 8
  store i64 %71, i64* %5, align 8
  br label %89

72:                                               ; preds = %66, %56
  %73 = load i64, i64* %13, align 8
  %74 = add nsw i64 %73, 1
  %75 = load i64, i64* %16, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i64, i64* %15, align 8
  store i64 %78, i64* %14, align 8
  br label %87

79:                                               ; preds = %72
  %80 = load i64, i64* %16, align 8
  store i64 %80, i64* %13, align 8
  br label %81

81:                                               ; preds = %79
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %15, align 8
  br label %52

87:                                               ; preds = %77, %52
  %88 = load i64, i64* %14, align 8
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %87, %70, %40
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local i64 @shadow_map_block_to_band(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @shadow_map_mapped_band(%struct.TYPE_5__*, i64, i64, i64*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @my_trunc(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
