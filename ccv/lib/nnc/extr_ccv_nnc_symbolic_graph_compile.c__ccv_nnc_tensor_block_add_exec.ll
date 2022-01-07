; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_tensor_block_add_exec.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_tensor_block_add_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*)* @_ccv_nnc_tensor_block_add_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_tensor_block_add_exec(i32* %0, i32 %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = bitcast %struct.TYPE_10__* %5 to { %struct.TYPE_11__*, %struct.TYPE_11__* }*
  %19 = getelementptr inbounds { %struct.TYPE_11__*, %struct.TYPE_11__* }, { %struct.TYPE_11__*, %struct.TYPE_11__* }* %18, i32 0, i32 0
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %19, align 8
  %20 = getelementptr inbounds { %struct.TYPE_11__*, %struct.TYPE_11__* }, { %struct.TYPE_11__*, %struct.TYPE_11__* }* %18, i32 0, i32 1
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %20, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %10, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = call i32 @assert(%struct.TYPE_11__* %23)
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %110, %85, %4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %113

31:                                               ; preds = %25
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @ccv_array_get(%struct.TYPE_11__* %32, i32 %33)
  %35 = inttoptr i64 %34 to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  br label %113

41:                                               ; preds = %31
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64* @ccv_get_sparse_matrix_cell(i32* %42, i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64* %45, i64** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %91

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  store i32 1, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @ccv_array_get(%struct.TYPE_11__* %61, i32 %62)
  %64 = inttoptr i64 %63 to i32*
  store i32 %60, i32* %64, align 4
  br label %90

65:                                               ; preds = %56
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %65
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = call i64 @ccv_array_get(%struct.TYPE_11__* %73, i32 %77)
  %79 = inttoptr i64 %78 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @ccv_array_get(%struct.TYPE_11__* %81, i32 %82)
  %84 = inttoptr i64 %83 to i32*
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %72, %65
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  br label %25

90:                                               ; preds = %59
  br label %110

91:                                               ; preds = %50, %41
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i64* @ccv_get_sparse_matrix_cell(i32* %92, i32 %93, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i64* %95, i64** %96, align 8
  %97 = bitcast %struct.TYPE_9__* %12 to i8*
  %98 = bitcast %struct.TYPE_9__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 8, i1 false)
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 1, i32* %9, align 4
  br label %113

109:                                              ; preds = %102, %91
  br label %110

110:                                              ; preds = %109, %90
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %25

113:                                              ; preds = %108, %40, %25
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %118 = call i32 @ccv_array_push(%struct.TYPE_11__* %117, i32* %7)
  br label %119

119:                                              ; preds = %116, %113
  store i32 0, i32* %9, align 4
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  store %struct.TYPE_11__* %121, %struct.TYPE_11__** %14, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %123 = call i32 @assert(%struct.TYPE_11__* %122)
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %201, %164, %119
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %204

130:                                              ; preds = %124
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i64 @ccv_array_get(%struct.TYPE_11__* %131, i32 %132)
  %134 = inttoptr i64 %133 to i32*
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  store i32 1, i32* %9, align 4
  br label %204

140:                                              ; preds = %130
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %15, align 4
  %144 = call i64* @ccv_get_sparse_matrix_cell(i32* %141, i32 %142, i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i64* %144, i64** %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = icmp ne i64* %147, null
  br i1 %148, label %149, label %182

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %149
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %155
  store i32 1, i32* %9, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i64 @ccv_array_get(%struct.TYPE_11__* %160, i32 %161)
  %163 = inttoptr i64 %162 to i32*
  store i32 %159, i32* %163, align 4
  br label %181

164:                                              ; preds = %155
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, 1
  %170 = call i64 @ccv_array_get(%struct.TYPE_11__* %165, i32 %169)
  %171 = inttoptr i64 %170 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %174 = load i32, i32* %8, align 4
  %175 = call i64 @ccv_array_get(%struct.TYPE_11__* %173, i32 %174)
  %176 = inttoptr i64 %175 to i32*
  store i32 %172, i32* %176, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %178, align 4
  br label %124

181:                                              ; preds = %158
  br label %201

182:                                              ; preds = %149, %140
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* %7, align 4
  %186 = call i64* @ccv_get_sparse_matrix_cell(i32* %183, i32 %184, i32 %185)
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64* %186, i64** %187, align 8
  %188 = bitcast %struct.TYPE_9__* %16 to i8*
  %189 = bitcast %struct.TYPE_9__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %188, i8* align 8 %189, i64 8, i1 false)
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = icmp ne i64* %191, null
  br i1 %192, label %193, label %200

193:                                              ; preds = %182
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp sgt i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  store i32 1, i32* %9, align 4
  br label %204

200:                                              ; preds = %193, %182
  br label %201

201:                                              ; preds = %200, %181
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %124

204:                                              ; preds = %199, %139, %124
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %209 = call i32 @ccv_array_push(%struct.TYPE_11__* %208, i32* %7)
  br label %210

210:                                              ; preds = %207, %204
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_11__*, i32) #1

declare dso_local i64* @ccv_get_sparse_matrix_cell(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ccv_array_push(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
