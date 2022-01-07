; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler_filter.c_validate_filter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler_filter.c_validate_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_ctx = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Out X = %d => In X = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Out Y = %d => In Y = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scaler_ctx*)* @validate_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_filter(%struct.scaler_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scaler_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scaler_ctx* %0, %struct.scaler_ctx** %3, align 8
  %7 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %9, %13
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %55, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %21
  %33 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %32, %21
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %52)
  store i32 0, i32* %2, align 4
  br label %111

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %15

58:                                               ; preds = %15
  %59 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %61, %65
  store i32 %66, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %107, %58
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %110

73:                                               ; preds = %67
  %74 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %94, label %84

84:                                               ; preds = %73
  %85 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %84, %73
  %95 = load i32, i32* @stderr, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %98 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %104)
  store i32 0, i32* %2, align 4
  br label %111

106:                                              ; preds = %84
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %67

110:                                              ; preds = %67
  store i32 1, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %94, %42
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
