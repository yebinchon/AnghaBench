; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_connected_layer.c_make_connected_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_connected_layer.c_make_connected_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, float*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }

@CONNECTED = common dso_local global i32 0, align 4
@forward_connected_layer = common dso_local global i32 0, align 4
@backward_connected_layer = common dso_local global i32 0, align 4
@update_connected_layer = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"connected                            %4d  ->  %4d\0A\00", align 1
@CUDNN_DATA_FLOAT = common dso_local global i32 0, align 4
@CUDNN_TENSOR_NCHW = common dso_local global i32 0, align 4
@backward_connected_layer_gpu = common dso_local global i32 0, align 4
@forward_connected_layer_gpu = common dso_local global i32 0, align 4
@update_connected_layer_gpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_connected_layer(%struct.TYPE_3__* noalias sret %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 %6, i32* %13, align 4
  %16 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 456, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* @CONNECTED, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 64
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %12, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  store i32 1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 10
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %36, %37
  %39 = call i8* @calloc(i32 %38, i32 4)
  %40 = bitcast i8* %39 to i32*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  store i32* %40, i32** %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i8* @calloc(i32 %44, i32 4)
  %46 = bitcast i8* %45 to i32*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  store i32* %46, i32** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %48, %49
  %51 = call i8* @calloc(i32 %50, i32 4)
  %52 = bitcast i8* %51 to i32*
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 13
  store i32* %52, i32** %53, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i8* @calloc(i32 %54, i32 4)
  %56 = bitcast i8* %55 to i32*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 14
  store i32* %56, i32** %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %58, %59
  %61 = call i8* @calloc(i32 %60, i32 4)
  %62 = bitcast i8* %61 to float*
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 15
  store float* %62, float** %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i8* @calloc(i32 %64, i32 4)
  %66 = bitcast i8* %65 to i32*
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 16
  store i32* %66, i32** %67, align 8
  %68 = load i32, i32* @forward_connected_layer, align 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 63
  store i32 %68, i32* %69, align 8
  %70 = load i32, i32* @backward_connected_layer, align 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 62
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @update_connected_layer, align 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 61
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sitofp i32 %74 to double
  %76 = fdiv double 2.000000e+00, %75
  %77 = fptosi double %76 to i32
  %78 = call float @sqrt(i32 %77)
  store float %78, float* %15, align 4
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %94, %7
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 %81, %82
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load float, float* %15, align 4
  %87 = call float @rand_uniform(i32 -1, i32 1)
  %88 = fmul float %86, %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 15
  %90 = load float*, float** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  store float %88, float* %93, align 4
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %79

97:                                               ; preds = %79
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %108, %97
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 16
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %98

111:                                              ; preds = %98
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %145

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %116, %118
  %120 = call i8* @calloc(i32 %119, i32 4)
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 60
  store i8* %120, i8** %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %123, %125
  %127 = call i8* @calloc(i32 %126, i32 4)
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 59
  store i8* %127, i8** %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @calloc(i32 %130, i32 4)
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 58
  store i8* %131, i8** %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @calloc(i32 %134, i32 4)
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 57
  store i8* %135, i8** %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i8* @calloc(i32 %138, i32 4)
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 56
  store i8* %139, i8** %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @calloc(i32 %142, i32 4)
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 55
  store i8* %143, i8** %144, align 8
  br label %145

145:                                              ; preds = %114, %111
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %201

148:                                              ; preds = %145
  %149 = load i32, i32* %10, align 4
  %150 = call i8* @calloc(i32 %149, i32 4)
  %151 = bitcast i8* %150 to i32*
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 17
  store i32* %151, i32** %152, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i8* @calloc(i32 %153, i32 4)
  %155 = bitcast i8* %154 to i32*
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 18
  store i32* %155, i32** %156, align 8
  store i32 0, i32* %14, align 4
  br label %157

157:                                              ; preds = %167, %148
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 17
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 1, i32* %166, align 4
  br label %167

167:                                              ; preds = %161
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %157

170:                                              ; preds = %157
  %171 = load i32, i32* %10, align 4
  %172 = call i8* @calloc(i32 %171, i32 4)
  %173 = bitcast i8* %172 to i32*
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 19
  store i32* %173, i32** %174, align 8
  %175 = load i32, i32* %10, align 4
  %176 = call i8* @calloc(i32 %175, i32 4)
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 54
  store i8* %176, i8** %177, align 8
  %178 = load i32, i32* %10, align 4
  %179 = call i8* @calloc(i32 %178, i32 4)
  %180 = bitcast i8* %179 to i32*
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 20
  store i32* %180, i32** %181, align 8
  %182 = load i32, i32* %10, align 4
  %183 = call i8* @calloc(i32 %182, i32 4)
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 53
  store i8* %183, i8** %184, align 8
  %185 = load i32, i32* %10, align 4
  %186 = call i8* @calloc(i32 %185, i32 4)
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 52
  store i8* %186, i8** %187, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call i8* @calloc(i32 %188, i32 4)
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 51
  store i8* %189, i8** %190, align 8
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %10, align 4
  %193 = mul nsw i32 %191, %192
  %194 = call i8* @calloc(i32 %193, i32 4)
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 50
  store i8* %194, i8** %195, align 8
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %10, align 4
  %198 = mul nsw i32 %196, %197
  %199 = call i8* @calloc(i32 %198, i32 4)
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 49
  store i8* %199, i8** %200, align 8
  br label %201

201:                                              ; preds = %170, %145
  %202 = load i32, i32* %11, align 4
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 21
  store i32 %202, i32* %203, align 8
  %204 = load i32, i32* @stderr, align 4
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @fprintf(i32 %204, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %205, i32 %206)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @calloc(i32, i32) #2

declare dso_local float @sqrt(i32) #2

declare dso_local float @rand_uniform(i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
