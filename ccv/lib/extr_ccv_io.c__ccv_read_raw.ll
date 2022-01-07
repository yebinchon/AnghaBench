; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_io.c__ccv_read_raw.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_io.c__ccv_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@CCV_IO_NO_COPY = common dso_local global i32 0, align 4
@CCV_8U = common dso_local global i32 0, align 4
@CCV_C1 = common dso_local global i32 0, align 4
@CCV_C3 = common dso_local global i32 0, align 4
@CCV_C4 = common dso_local global i32 0, align 4
@CCV_NO_DATA_ALLOC = common dso_local global i32 0, align 4
@CCV_IO_FINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__**, i8*, i32, i32, i32, i32)* @_ccv_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ccv_read_raw(%struct.TYPE_12__** %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %6
  %17 = load i32, i32* %11, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16, %6
  %23 = phi i1 [ false, %16 ], [ false, %6 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @CCV_IO_NO_COPY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %22
  %31 = load i32, i32* @CCV_8U, align 4
  %32 = load i32, i32* @CCV_C1, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 255
  switch i32 %35, label %45 [
    i32 128, label %36
    i32 131, label %36
    i32 129, label %40
    i32 133, label %40
    i32 132, label %40
    i32 134, label %40
    i32 130, label %44
  ]

36:                                               ; preds = %30, %30
  %37 = load i32, i32* @CCV_8U, align 4
  %38 = load i32, i32* @CCV_C3, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %13, align 4
  br label %46

40:                                               ; preds = %30, %30, %30, %30
  %41 = load i32, i32* @CCV_8U, align 4
  %42 = load i32, i32* @CCV_C4, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %13, align 4
  br label %46

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %30, %44
  br label %46

46:                                               ; preds = %45, %40, %36
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @CCV_NO_DATA_ALLOC, align 4
  %51 = or i32 %49, %50
  %52 = load i8*, i8** %8, align 8
  %53 = call %struct.TYPE_12__* @ccv_dense_matrix_new(i32 %47, i32 %48, i32 %51, i8* %52, i32 0)
  %54 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  br label %119

59:                                               ; preds = %22
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 255
  switch i32 %61, label %118 [
    i32 128, label %62
    i32 129, label %70
    i32 133, label %78
    i32 131, label %86
    i32 132, label %94
    i32 134, label %102
    i32 130, label %110
  ]

62:                                               ; preds = %59
  %63 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @_ccv_read_rgb_raw(%struct.TYPE_12__** %63, i8* %64, i32 %65, i32 %66, i32 %67, i32 %68)
  br label %118

70:                                               ; preds = %59
  %71 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @_ccv_read_rgba_raw(%struct.TYPE_12__** %71, i8* %72, i32 %73, i32 %74, i32 %75, i32 %76)
  br label %118

78:                                               ; preds = %59
  %79 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @_ccv_read_argb_raw(%struct.TYPE_12__** %79, i8* %80, i32 %81, i32 %82, i32 %83, i32 %84)
  br label %118

86:                                               ; preds = %59
  %87 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @_ccv_read_bgr_raw(%struct.TYPE_12__** %87, i8* %88, i32 %89, i32 %90, i32 %91, i32 %92)
  br label %118

94:                                               ; preds = %59
  %95 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @_ccv_read_bgra_raw(%struct.TYPE_12__** %95, i8* %96, i32 %97, i32 %98, i32 %99, i32 %100)
  br label %118

102:                                              ; preds = %59
  %103 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @_ccv_read_abgr_raw(%struct.TYPE_12__** %103, i8* %104, i32 %105, i32 %106, i32 %107, i32 %108)
  br label %118

110:                                              ; preds = %59
  %111 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @_ccv_read_gray_raw(%struct.TYPE_12__** %111, i8* %112, i32 %113, i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %59, %110, %102, %94, %86, %78, %70, %62
  br label %119

119:                                              ; preds = %118, %46
  %120 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = icmp ne %struct.TYPE_12__* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = call i32 @ccv_make_matrix_immutable(%struct.TYPE_12__* %125)
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i32, i32* @CCV_IO_FINAL, align 4
  ret i32 %128
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @ccv_dense_matrix_new(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @_ccv_read_rgb_raw(%struct.TYPE_12__**, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @_ccv_read_rgba_raw(%struct.TYPE_12__**, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @_ccv_read_argb_raw(%struct.TYPE_12__**, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @_ccv_read_bgr_raw(%struct.TYPE_12__**, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @_ccv_read_bgra_raw(%struct.TYPE_12__**, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @_ccv_read_abgr_raw(%struct.TYPE_12__**, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @_ccv_read_gray_raw(%struct.TYPE_12__**, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_make_matrix_immutable(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
