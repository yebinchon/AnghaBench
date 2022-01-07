; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_attention.c_network_loss_data.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_attention.c_network_loss_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, float*, float*, i32, i32, %struct.TYPE_12__*, i32, i64 }
%struct.TYPE_12__ = type { float* }
%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_16__ = type { float** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float** @network_loss_data(%struct.TYPE_15__* %0, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %1) #0 {
  %3 = alloca %struct.TYPE_16__, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 1, i32* %7, align 4
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call float** @make_matrix(i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  store float** %18, float*** %19, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = call float* @calloc(i32 %26, i32 4)
  store float* %27, float** %8, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %30, %33
  %35 = call float* @calloc(i32 %34, i32 4)
  store float* %35, float** %9, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %192, %2
  %37 = load i32, i32* %5, align 4
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %198

42:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %107, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %110

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %110

58:                                               ; preds = %49
  %59 = load float*, float** %8, align 8
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %59, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memcpy(float* %66, i32 %75, i32 %81)
  %83 = load float*, float** %9, align 8
  %84 = load i32, i32* %6, align 4
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %83, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = call i32 @memcpy(float* %90, i32 %99, i32 %105)
  br label %107

107:                                              ; preds = %58
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %43

110:                                              ; preds = %57, %43
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = bitcast %struct.TYPE_15__* %10 to i8*
  %113 = bitcast %struct.TYPE_15__* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 56, i1 false)
  %114 = load float*, float** %8, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  store float* %114, float** %116, align 8
  %117 = load float*, float** %9, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  store float* %117, float** %119, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 7
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 6
  store i32 0, i32* %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = call i32 @forward_network(%struct.TYPE_15__* %124)
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = bitcast %struct.TYPE_15__* %126 to i8*
  %128 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 %128, i64 56, i1 false)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load float*, float** %138, align 8
  store float* %139, float** %11, align 8
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %188, %110
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %191

146:                                              ; preds = %140
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %147, %148
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %191

155:                                              ; preds = %146
  %156 = load float*, float** %9, align 8
  %157 = load i32, i32* %6, align 4
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %157, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %156, i64 %162
  %164 = call i32 @max_index(float* %163, i32 1000)
  store i32 %164, i32* %12, align 4
  %165 = load float*, float** %11, align 8
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %166, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %165, i64 %171
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = call float @sum_array(float* %172, i32 %175)
  store float %176, float* %13, align 4
  %177 = load float, float* %13, align 4
  %178 = fneg float %177
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %180 = load float**, float*** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float*, float** %180, i64 %184
  %186 = load float*, float** %185, align 8
  %187 = getelementptr inbounds float, float* %186, i64 0
  store float %178, float* %187, align 4
  br label %188

188:                                              ; preds = %155
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %6, align 4
  br label %140

191:                                              ; preds = %154, %140
  br label %192

192:                                              ; preds = %191
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %5, align 4
  br label %36

198:                                              ; preds = %36
  %199 = load float*, float** %8, align 8
  %200 = call i32 @free(float* %199)
  %201 = load float*, float** %9, align 8
  %202 = call i32 @free(float* %201)
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %204 = load float**, float*** %203, align 8
  ret float** %204
}

declare dso_local float** @make_matrix(i32, i32) #1

declare dso_local float* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(float*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @forward_network(%struct.TYPE_15__*) #1

declare dso_local i32 @max_index(float*, i32) #1

declare dso_local float @sum_array(float*, i32) #1

declare dso_local i32 @free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
