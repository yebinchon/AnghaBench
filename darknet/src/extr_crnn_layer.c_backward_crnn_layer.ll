; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_crnn_layer.c_backward_crnn_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_crnn_layer.c_backward_crnn_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backward_crnn_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = bitcast %struct.TYPE_8__* %3 to i64*
  store i64 %1, i64* %9, align 4
  %10 = bitcast %struct.TYPE_8__* %4 to i8*
  %11 = bitcast %struct.TYPE_8__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 8, i1 false)
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 10
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = bitcast %struct.TYPE_9__* %6 to i8*
  %15 = bitcast %struct.TYPE_9__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 64, i1 false)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 9
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = bitcast %struct.TYPE_9__* %7 to i8*
  %19 = bitcast %struct.TYPE_9__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 64, i1 false)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = bitcast %struct.TYPE_9__* %8 to i8*
  %23 = bitcast %struct.TYPE_9__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 64, i1 false)
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @increment_layer(%struct.TYPE_9__* %6, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = call i32 @increment_layer(%struct.TYPE_9__* %7, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @increment_layer(%struct.TYPE_9__* %8, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %37, %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %40, %42
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %180, %2
  %51 = load i32, i32* %5, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %183

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %55, %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @copy_cpu(i32 %58, i32 %60, i32 1, i32 %62, i32 1)
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %65, %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @axpy_cpu(i32 %68, i32 1, i32 %70, i32 1, i32 %72, i32 1)
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = bitcast %struct.TYPE_8__* %4 to i64*
  %81 = load i64, i64* %80, align 4
  %82 = call i32 @backward_convolutional_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %8, i64 %81)
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %84, %86
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, %87
  store i32 %90, i32* %88, align 4
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %97, %99
  %101 = sub nsw i32 %95, %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %53
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %53
  %108 = bitcast %struct.TYPE_8__* %4 to i64*
  %109 = load i64, i64* %108, align 4
  %110 = call i32 @backward_convolutional_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %7, i64 %109)
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %112, %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @copy_cpu(i32 %115, i32 %117, i32 1, i32 %119, i32 1)
  %121 = load i32, i32* %5, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %107
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %129, %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %138, %140
  %142 = sub nsw i32 %136, %141
  %143 = call i32 @axpy_cpu(i32 %132, i32 1, i32 %134, i32 1, i32 %142, i32 1)
  br label %144

144:                                              ; preds = %127, %123, %107
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %5, align 4
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = mul nsw i32 %147, %149
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %150, %152
  %154 = add nsw i32 %146, %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i32 %154, i32* %155, align 4
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %5, align 4
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = mul nsw i32 %162, %164
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %165, %167
  %169 = add nsw i32 %161, %168
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 %169, i32* %170, align 4
  br label %173

171:                                              ; preds = %144
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 0, i32* %172, align 4
  br label %173

173:                                              ; preds = %171, %159
  %174 = bitcast %struct.TYPE_8__* %4 to i64*
  %175 = load i64, i64* %174, align 4
  %176 = call i32 @backward_convolutional_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6, i64 %175)
  %177 = call i32 @increment_layer(%struct.TYPE_9__* %6, i32 -1)
  %178 = call i32 @increment_layer(%struct.TYPE_9__* %7, i32 -1)
  %179 = call i32 @increment_layer(%struct.TYPE_9__* %8, i32 -1)
  br label %180

180:                                              ; preds = %173
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %5, align 4
  br label %50

183:                                              ; preds = %50
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @increment_layer(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @copy_cpu(i32, i32, i32, i32, i32) #2

declare dso_local i32 @axpy_cpu(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @backward_convolutional_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
