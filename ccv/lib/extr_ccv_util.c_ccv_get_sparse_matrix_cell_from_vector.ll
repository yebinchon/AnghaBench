; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c_ccv_get_sparse_matrix_cell_from_vector.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c_ccv_get_sparse_matrix_cell_from_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32 }

@CCV_DENSE_VECTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ccv_get_sparse_matrix_cell_from_vector(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = bitcast %struct.TYPE_13__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 8, i1 false)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CCV_GET_DATA_TYPE_SIZE(i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CCV_GET_CHANNEL(i32 %26)
  %28 = mul nsw i32 %23, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CCV_DENSE_VECTOR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %3
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %41, %43
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  store i32* %45, i32** %46, align 8
  br label %166

47:                                               ; preds = %3
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @CCV_GET_DATA_TYPE_SIZE(i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CCV_GET_CHANNEL(i32 %54)
  %56 = mul nsw i32 %51, %55
  %57 = add nsw i32 %56, 3
  %58 = and i32 %57, -4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 8, %60
  store i64 %61, i64* %10, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %11, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %12, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @_ccv_sparse_matrix_index_for_hash(i32 %72, i32 %73)
  store i32 %74, i32* %14, align 4
  store i32 2, i32* %15, align 4
  br label %75

75:                                               ; preds = %109, %47
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %76, 255
  br i1 %77, label %78, label %114

78:                                               ; preds = %75
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32*, i32** %12, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %85, %87
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = bitcast i32* %89 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %16, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  br label %166

97:                                               ; preds = %83
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i64 1
  %106 = bitcast %struct.TYPE_12__* %105 to i32*
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  store i32* %106, i32** %107, align 8
  br label %166

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %75

114:                                              ; preds = %75
  br label %115

115:                                              ; preds = %161, %114
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %119, %115
  %121 = load i32*, i32** %12, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %122, %124
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = bitcast i32* %126 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %127, %struct.TYPE_12__** %17, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp eq i32 %131, 255
  br i1 %132, label %133, label %144

133:                                              ; preds = %120
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %14, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @_ccv_sparse_matrix_index_for_hash(i32 %140, i32 %141)
  %143 = add nsw i32 %142, 2
  store i32 %143, i32* %18, align 4
  br label %144

144:                                              ; preds = %133, %120
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %18, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %166

149:                                              ; preds = %144
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i64 1
  %158 = bitcast %struct.TYPE_12__* %157 to i32*
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  store i32* %158, i32** %159, align 8
  br label %166

160:                                              ; preds = %149
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %15, align 4
  br label %115

166:                                              ; preds = %155, %148, %103, %96, %36
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  ret i32* %168
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CCV_GET_DATA_TYPE_SIZE(i32) #2

declare dso_local i32 @CCV_GET_CHANNEL(i32) #2

declare dso_local i32 @_ccv_sparse_matrix_index_for_hash(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
