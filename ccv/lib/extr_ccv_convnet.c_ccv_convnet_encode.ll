; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c_ccv_convnet_encode.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c_ccv_convnet_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i32, %struct.TYPE_11__**, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_convnet_encode(%struct.TYPE_12__* %0, %struct.TYPE_11__** %1, %struct.TYPE_11__** %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @CCV_GET_CHANNEL(i32 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %48, i64 %53
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %10, align 8
  %56 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %60, i64 %65
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @_ccv_convnet_layer_forward_propagate(i64 %69, %struct.TYPE_11__* %71, %struct.TYPE_11__** %74, i64 %77)
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %113, %4
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %116

85:                                               ; preds = %79
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %94, i64 %97
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %102, i64 %104
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = call i32 @_ccv_convnet_layer_forward_propagate(i64 %91, %struct.TYPE_11__* %99, %struct.TYPE_11__** %105, i64 %111)
  br label %113

113:                                              ; preds = %85
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %79

116:                                              ; preds = %79
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %118, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %119, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %124, i64 -1
  %126 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %127 = icmp ne %struct.TYPE_11__** %125, %126
  br i1 %127, label %128, label %150

128:                                              ; preds = %116
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %130, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %131, i64 %136
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %138, %struct.TYPE_11__** %139, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %142, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %143, i64 %148
  store %struct.TYPE_11__* %140, %struct.TYPE_11__** %149, align 8
  br label %150

150:                                              ; preds = %128, %116
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CCV_GET_CHANNEL(i32) #1

declare dso_local i32 @_ccv_convnet_layer_forward_propagate(i64, %struct.TYPE_11__*, %struct.TYPE_11__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
