; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_io_ccv_io_raw.inc__ccv_read_rgb_raw.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_io_ccv_io_raw.inc__ccv_read_rgb_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@CCV_8U = common dso_local global i32 0, align 4
@CCV_C3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__**, i8*, i32, i32, i32, i32)* @_ccv_read_rgb_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_read_rgb_raw(%struct.TYPE_6__** %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %33 = load i32, i32* @CCV_C3, align 4
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
  switch i32 %43, label %112 [
    i32 129, label %44
    i32 128, label %111
  ]

44:                                               ; preds = %35
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %17, align 8
  %49 = load i8*, i8** %8, align 8
  store i8* %49, i8** %18, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %51, 3
  %53 = sub nsw i32 %50, %52
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = icmp sge i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %107, %44
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %110

62:                                               ; preds = %58
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %93, %62
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %63
  %68 = load i8*, i8** %18, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = mul nsw i32 %71, 6969
  %73 = load i8*, i8** %18, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = mul nsw i32 %76, 23434
  %78 = add nsw i32 %72, %77
  %79 = load i8*, i8** %18, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = mul nsw i32 %82, 2365
  %84 = add nsw i32 %78, %83
  %85 = ashr i32 %84, 15
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %17, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 %86, i8* %90, align 1
  %91 = load i8*, i8** %18, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  store i8* %92, i8** %18, align 8
  br label %93

93:                                               ; preds = %67
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %16, align 4
  br label %63

96:                                               ; preds = %63
  %97 = load i32, i32* %19, align 4
  %98 = load i8*, i8** %18, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %18, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %17, align 8
  br label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %58

110:                                              ; preds = %58
  br label %148

111:                                              ; preds = %35
  br label %112

112:                                              ; preds = %35, %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %20, align 8
  %117 = load i8*, i8** %8, align 8
  store i8* %117, i8** %21, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = mul nsw i32 %119, 3
  %121 = icmp sge i32 %118, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %144, %112
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %124
  %129 = load i8*, i8** %20, align 8
  %130 = load i8*, i8** %21, align 8
  %131 = load i32, i32* %11, align 4
  %132 = mul nsw i32 %131, 3
  %133 = call i32 @memcpy(i8* %129, i8* %130, i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = load i8*, i8** %21, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %21, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i8*, i8** %20, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %20, align 8
  br label %144

144:                                              ; preds = %128
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %124

147:                                              ; preds = %124
  br label %148

148:                                              ; preds = %147, %110
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
