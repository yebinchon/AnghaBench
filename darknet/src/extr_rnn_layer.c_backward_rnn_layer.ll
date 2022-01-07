; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_rnn_layer.c_backward_rnn_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_rnn_layer.c_backward_rnn_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backward_rnn_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca { i64, i32 }, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %1, i64* %14, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %2, i32* %15, align 4
  %16 = bitcast %struct.TYPE_8__* %4 to i8*
  %17 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  %18 = bitcast %struct.TYPE_8__* %6 to i8*
  %19 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 10
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = bitcast %struct.TYPE_9__* %8 to i8*
  %26 = bitcast %struct.TYPE_9__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 64, i1 false)
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 9
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = bitcast %struct.TYPE_9__* %9 to i8*
  %30 = bitcast %struct.TYPE_9__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 64, i1 false)
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = bitcast %struct.TYPE_9__* %10 to i8*
  %34 = bitcast %struct.TYPE_9__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 64, i1 false)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @increment_layer(%struct.TYPE_9__* %8, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @increment_layer(%struct.TYPE_9__* %9, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @increment_layer(%struct.TYPE_9__* %10, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %48, %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %51, %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %203, %3
  %62 = load i32, i32* %7, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %206

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %66, %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @copy_cpu(i32 %69, i32 %71, i32 1, i32 %73, i32 1)
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %76, %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @axpy_cpu(i32 %79, i32 1, i32 %81, i32 1, i32 %83, i32 1)
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = bitcast { i64, i32 }* %11 to i8*
  %92 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 12, i1 false)
  %93 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %94 = load i64, i64* %93, align 4
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @backward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %10, i64 %94, i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %99, %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, %102
  store i32 %105, i32* %103, align 4
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %112, %114
  %116 = sub nsw i32 %110, %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %120, %64
  %123 = bitcast { i64, i32 }* %12 to i8*
  %124 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 12, i1 false)
  %125 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %126 = load i64, i64* %125, align 4
  %127 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @backward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %9, i64 %126, i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %131, %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @copy_cpu(i32 %134, i32 %136, i32 1, i32 %138, i32 1)
  %140 = load i32, i32* %7, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %122
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %148, %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %157, %159
  %161 = sub nsw i32 %155, %160
  %162 = call i32 @axpy_cpu(i32 %151, i32 1, i32 %153, i32 1, i32 %161, i32 1)
  br label %163

163:                                              ; preds = %146, %142, %122
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %7, align 4
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = mul nsw i32 %166, %168
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %169, %171
  %173 = add nsw i32 %165, %172
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %173, i32* %174, align 4
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %163
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %7, align 4
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = mul nsw i32 %181, %183
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %184, %186
  %188 = add nsw i32 %180, %187
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %188, i32* %189, align 4
  br label %192

190:                                              ; preds = %163
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 0, i32* %191, align 4
  br label %192

192:                                              ; preds = %190, %178
  %193 = bitcast { i64, i32 }* %13 to i8*
  %194 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %193, i8* align 4 %194, i64 12, i1 false)
  %195 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %196 = load i64, i64* %195, align 4
  %197 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @backward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %8, i64 %196, i32 %198)
  %200 = call i32 @increment_layer(%struct.TYPE_9__* %8, i32 -1)
  %201 = call i32 @increment_layer(%struct.TYPE_9__* %9, i32 -1)
  %202 = call i32 @increment_layer(%struct.TYPE_9__* %10, i32 -1)
  br label %203

203:                                              ; preds = %192
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %7, align 4
  br label %61

206:                                              ; preds = %61
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @increment_layer(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @copy_cpu(i32, i32, i32, i32, i32) #2

declare dso_local i32 @axpy_cpu(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @backward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
