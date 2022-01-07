; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c__ccv_get_or_add_sparse_matrix_vector.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c__ccv_get_or_add_sparse_matrix_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32)* @_ccv_get_or_add_sparse_matrix_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_ccv_get_or_add_sparse_matrix_vector(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @_ccv_sparse_matrix_index_for_hash(i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %29

29:                                               ; preds = %103, %2
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 255
  br i1 %31, label %32, label %108

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %88

47:                                               ; preds = %37
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i32 %61, i32* %66, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = call i32 @_ccv_init_sparse_matrix_vector(i32* %70, %struct.TYPE_7__* %71)
  br label %83

73:                                               ; preds = %47
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @_ccv_move_sparse_matrix_vector(%struct.TYPE_8__* %74, i32* %75, %struct.TYPE_7__* %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %73, %60
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32* %87, i32** %3, align 8
  br label %208

88:                                               ; preds = %37
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32* %101, i32** %3, align 8
  br label %208

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %29

108:                                              ; preds = %29
  br label %109

109:                                              ; preds = %203, %108
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %113, %109
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp eq i32 %121, 255
  br i1 %122, label %123, label %137

123:                                              ; preds = %114
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %10, align 4
  %133 = sub nsw i32 %131, %132
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @_ccv_sparse_matrix_index_for_hash(i32 %133, i32 %134)
  %136 = add nsw i32 %135, 2
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %123, %114
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %188

141:                                              ; preds = %137
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = load i32, i32* %11, align 4
  %147 = icmp sgt i32 %146, 255
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %151

149:                                              ; preds = %141
  %150 = load i32, i32* %11, align 4
  br label %151

151:                                              ; preds = %149, %148
  %152 = phi i32 [ 255, %148 ], [ %150, %149 ]
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  store i32 %152, i32* %157, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %173, label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %5, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  store i32 %161, i32* %166, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %172 = call i32 @_ccv_init_sparse_matrix_vector(i32* %170, %struct.TYPE_7__* %171)
  br label %183

173:                                              ; preds = %151
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %175 = load i32*, i32** %8, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @_ccv_move_sparse_matrix_vector(%struct.TYPE_8__* %174, i32* %175, %struct.TYPE_7__* %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %173, %160
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32* %187, i32** %3, align 8
  br label %208

188:                                              ; preds = %137
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %188
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32* %201, i32** %3, align 8
  br label %208

202:                                              ; preds = %188
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %11, align 4
  br label %109

208:                                              ; preds = %197, %183, %97, %83
  %209 = load i32*, i32** %3, align 8
  ret i32* %209
}

declare dso_local i32 @_ccv_sparse_matrix_index_for_hash(i32, i32) #1

declare dso_local i32 @_ccv_init_sparse_matrix_vector(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @_ccv_move_sparse_matrix_vector(%struct.TYPE_8__*, i32*, %struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
