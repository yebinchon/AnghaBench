; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_tensor_metadata_rewire.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_tensor_metadata_rewire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, %struct.TYPE_10__*)* @_ccv_nnc_tensor_metadata_rewire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @_ccv_nnc_tensor_metadata_rewire(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__**, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = call i64 @CCV_NNC_IS_METADATA_POS(%struct.TYPE_10__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %3, align 8
  br label %193

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = ptrtoint %struct.TYPE_10__* %21 to i64
  %23 = trunc i64 %22 to i32
  %24 = call i8* @_ccv_nnc_tensor_metadata_get(i32* %20, i32 %23)
  %25 = bitcast i8* %24 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %6, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %19
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = call i64 @CCV_NNC_IS_METADATA_POS(%struct.TYPE_10__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = ptrtoint %struct.TYPE_10__* %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = ptrtoint %struct.TYPE_10__* %44 to i32
  %46 = call i8* @_ccv_nnc_tensor_metadata_get(i32* %41, i32 %45)
  %47 = ptrtoint i8* %46 to i64
  %48 = inttoptr i64 %47 to %struct.TYPE_10__*
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %50, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to %struct.TYPE_10__*
  %55 = call %struct.TYPE_10__* @_ccv_nnc_tensor_metadata_rewire(i32* %51, %struct.TYPE_10__* %54)
  br label %56

56:                                               ; preds = %36, %30, %19
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = call i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_10__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %191

60:                                               ; preds = %56
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %8, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  store i32 %68, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %113, %60
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %116

73:                                               ; preds = %69
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = call %struct.TYPE_10__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_10__* %74)
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %75, i64 %77
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = call i64 @CCV_NNC_IS_METADATA_POS(%struct.TYPE_10__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %73
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = call %struct.TYPE_10__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_10__* %83)
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %84, i64 %86
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = ptrtoint %struct.TYPE_10__* %88 to i64
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = call %struct.TYPE_10__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_10__* %92)
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %93, i64 %95
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = ptrtoint %struct.TYPE_10__* %97 to i64
  %99 = trunc i64 %98 to i32
  %100 = call i8* @_ccv_nnc_tensor_metadata_get(i32* %91, i32 %99)
  %101 = bitcast i8* %100 to %struct.TYPE_10__*
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = call %struct.TYPE_10__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_10__* %102)
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %103, i64 %105
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %106, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to %struct.TYPE_10__*
  %111 = call %struct.TYPE_10__* @_ccv_nnc_tensor_metadata_rewire(i32* %107, %struct.TYPE_10__* %110)
  br label %112

112:                                              ; preds = %82, %73
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %69

116:                                              ; preds = %69
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = icmp ne %struct.TYPE_10__* %119, null
  br i1 %120, label %121, label %138

121:                                              ; preds = %116
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = call i64 @CCV_NNC_IS_METADATA_POS(%struct.TYPE_10__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %121
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = ptrtoint %struct.TYPE_10__* %131 to i64
  %133 = trunc i64 %132 to i32
  %134 = call i8* @_ccv_nnc_tensor_metadata_get(i32* %128, i32 %133)
  %135 = bitcast i8* %134 to %struct.TYPE_10__*
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  store %struct.TYPE_10__* %135, %struct.TYPE_10__** %137, align 8
  br label %138

138:                                              ; preds = %127, %121, %116
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = icmp ne %struct.TYPE_11__* %141, null
  br i1 %142, label %143, label %190

143:                                              ; preds = %138
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %186, %143
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %145, %150
  br i1 %151, label %152, label %189

152:                                              ; preds = %144
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i64 @ccv_array_get(%struct.TYPE_11__* %155, i32 %156)
  %158 = inttoptr i64 %157 to %struct.TYPE_10__**
  store %struct.TYPE_10__** %158, %struct.TYPE_10__*** %12, align 8
  %159 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = call i64 @CCV_NNC_IS_METADATA_POS(%struct.TYPE_10__* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %185

163:                                              ; preds = %152
  %164 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = ptrtoint %struct.TYPE_10__* %165 to i64
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %13, align 4
  %168 = load i32*, i32** %4, align 8
  %169 = load i32, i32* %13, align 4
  %170 = call i8* @_ccv_nnc_tensor_metadata_get(i32* %168, i32 %169)
  %171 = bitcast i8* %170 to %struct.TYPE_10__*
  %172 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  store %struct.TYPE_10__* %171, %struct.TYPE_10__** %172, align 8
  %173 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = call i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_10__* %174)
  %176 = icmp ne i64 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i32 @assert(i32 %178)
  %180 = load i32*, i32** %4, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to %struct.TYPE_10__*
  %184 = call %struct.TYPE_10__* @_ccv_nnc_tensor_metadata_rewire(i32* %180, %struct.TYPE_10__* %183)
  br label %185

185:                                              ; preds = %163, %152
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %144

189:                                              ; preds = %144
  br label %190

190:                                              ; preds = %189, %138
  br label %191

191:                                              ; preds = %190, %56
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %192, %struct.TYPE_10__** %3, align 8
  br label %193

193:                                              ; preds = %191, %17
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %194
}

declare dso_local i64 @CCV_NNC_IS_METADATA_POS(%struct.TYPE_10__*) #1

declare dso_local i8* @_ccv_nnc_tensor_metadata_get(i32*, i32) #1

declare dso_local i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_10__*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
