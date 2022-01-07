; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_io_ccv_io_raw.inc__ccv_read_gray_raw.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_io_ccv_io_raw.inc__ccv_read_gray_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@CCV_8U = common dso_local global i32 0, align 4
@CCV_C1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__**, i8*, i32, i32, i32, i32)* @_ccv_read_gray_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_read_gray_raw(%struct.TYPE_6__** %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, 3840
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load i32, i32* @CCV_8U, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 3840
  %29 = ashr i32 %28, 8
  %30 = or i32 %26, %29
  br label %35

31:                                               ; preds = %6
  %32 = load i32, i32* @CCV_8U, align 4
  %33 = load i32, i32* @CCV_C1, align 4
  %34 = or i32 %32, %33
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i32 [ %30, %25 ], [ %34, %31 ]
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call %struct.TYPE_6__* @ccv_dense_matrix_new(i32 %37, i32 %38, i32 %39, i32 0, i32 0)
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %41, align 8
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %14, align 8
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 3840
  switch i32 %43, label %100 [
    i32 128, label %44
    i32 129, label %99
  ]

44:                                               ; preds = %35
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %17, align 8
  %49 = load i8*, i8** %8, align 8
  store i8* %49, i8** %18, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 3
  %55 = sub nsw i32 %52, %54
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp sge i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %95, %44
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60
  store i32 0, i32* %16, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i8*, i8** %18, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %17, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  store i8 %74, i8* %76, align 1
  %77 = load i8*, i8** %17, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 %74, i8* %78, align 1
  %79 = load i8*, i8** %17, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 %74, i8* %80, align 1
  %81 = load i8*, i8** %17, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 3
  store i8* %82, i8** %17, align 8
  br label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  br label %65

86:                                               ; preds = %65
  %87 = load i32, i32* %12, align 4
  %88 = load i8*, i8** %18, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %18, align 8
  %91 = load i32, i32* %19, align 4
  %92 = load i8*, i8** %17, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %17, align 8
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %60

98:                                               ; preds = %60
  br label %134

99:                                               ; preds = %35
  br label %100

100:                                              ; preds = %35, %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %20, align 8
  %105 = load i8*, i8** %8, align 8
  store i8* %105, i8** %21, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp sge i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  store i32 0, i32* %15, align 4
  br label %111

111:                                              ; preds = %130, %100
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %111
  %116 = load i8*, i8** %20, align 8
  %117 = load i8*, i8** %21, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @memcpy(i8* %116, i8* %117, i32 %118)
  %120 = load i32, i32* %12, align 4
  %121 = load i8*, i8** %21, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8* %123, i8** %21, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %20, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %20, align 8
  br label %130

130:                                              ; preds = %115
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  br label %111

133:                                              ; preds = %111
  br label %134

134:                                              ; preds = %133, %98
  ret void
}

declare dso_local %struct.TYPE_6__* @ccv_dense_matrix_new(i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
