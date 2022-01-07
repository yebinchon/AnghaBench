; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c__ccv_move_sparse_matrix_vector.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c__ccv_move_sparse_matrix_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i64, i64, i32, i64, i32)* @_ccv_move_sparse_matrix_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_move_sparse_matrix_vector(%struct.TYPE_3__* %0, i32* %1, i32* %2, i64 %3, i64 %4, i32 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = load i64, i64* %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %17, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 %31, i64* %35, align 8
  %36 = load i64, i64* %17, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %18, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @_ccv_init_sparse_matrix_vector(i32* %44, i32* %45)
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %121, %8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ult i64 %52, 255
  br i1 %53, label %54, label %126

54:                                               ; preds = %51
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %15, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i64 0, i64* %13, align 8
  br label %59

59:                                               ; preds = %58, %54
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %59
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i64 %67, i64* %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i64 %73, i64* %77, align 8
  %78 = load i32, i32* %18, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %78, i32* %81, align 4
  br label %228

82:                                               ; preds = %59
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %84 = load i64, i64* %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %19, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %19, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %82
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i64 %92, i64* %96, align 8
  %97 = load i64, i64* %19, align 8
  store i64 %97, i64* %12, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %20, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i64 %104, i64* %108, align 8
  %109 = load i64, i64* %20, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %14, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %21, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = load i64, i64* %13, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* %21, align 4
  store i32 %119, i32* %18, align 4
  br label %120

120:                                              ; preds = %91, %82
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %13, align 8
  %124 = load i64, i64* %12, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %12, align 8
  br label %51

126:                                              ; preds = %51
  br label %127

127:                                              ; preds = %223, %126
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %15, align 8
  %130 = icmp uge i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i64 0, i64* %13, align 8
  br label %132

132:                                              ; preds = %131, %127
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %134 = load i64, i64* %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %161, label %139

139:                                              ; preds = %132
  %140 = load i64, i64* %12, align 8
  %141 = icmp ugt i64 %140, 255
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %145

143:                                              ; preds = %139
  %144 = load i64, i64* %12, align 8
  br label %145

145:                                              ; preds = %143, %142
  %146 = phi i64 [ 255, %142 ], [ %144, %143 ]
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %148 = load i64, i64* %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  store i64 %146, i64* %150, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %154 = load i64, i64* %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  store i64 %152, i64* %156, align 8
  %157 = load i32, i32* %18, align 4
  %158 = load i32*, i32** %10, align 8
  %159 = load i64, i64* %13, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32 %157, i32* %160, align 4
  br label %228

161:                                              ; preds = %132
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %163 = load i64, i64* %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %22, align 8
  %167 = load i64, i64* %22, align 8
  %168 = icmp eq i64 %167, 255
  br i1 %168, label %169, label %183

169:                                              ; preds = %161
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %171 = load i64, i64* %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %15, align 8
  %176 = add i64 %174, %175
  %177 = load i64, i64* %13, align 8
  %178 = sub i64 %176, %177
  %179 = load i32, i32* %16, align 4
  %180 = call i32 @_ccv_sparse_matrix_index_for_hash(i64 %178, i32 %179)
  %181 = add nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  store i64 %182, i64* %22, align 8
  br label %183

183:                                              ; preds = %169, %161
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* %22, align 8
  %186 = icmp ugt i64 %184, %185
  br i1 %186, label %187, label %222

187:                                              ; preds = %183
  %188 = load i64, i64* %12, align 8
  %189 = icmp ugt i64 %188, 255
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  br label %193

191:                                              ; preds = %187
  %192 = load i64, i64* %12, align 8
  br label %193

193:                                              ; preds = %191, %190
  %194 = phi i64 [ 255, %190 ], [ %192, %191 ]
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %196 = load i64, i64* %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  store i64 %194, i64* %198, align 8
  %199 = load i64, i64* %22, align 8
  store i64 %199, i64* %12, align 8
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %201 = load i64, i64* %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %23, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %208 = load i64, i64* %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  store i64 %206, i64* %210, align 8
  %211 = load i64, i64* %23, align 8
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %14, align 4
  %213 = load i32*, i32** %10, align 8
  %214 = load i64, i64* %13, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %24, align 4
  %217 = load i32, i32* %18, align 4
  %218 = load i32*, i32** %10, align 8
  %219 = load i64, i64* %13, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32 %217, i32* %220, align 4
  %221 = load i32, i32* %24, align 4
  store i32 %221, i32* %18, align 4
  br label %222

222:                                              ; preds = %193, %183
  br label %223

223:                                              ; preds = %222
  %224 = load i64, i64* %13, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %13, align 8
  %226 = load i64, i64* %12, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %12, align 8
  br label %127

228:                                              ; preds = %145, %66
  ret void
}

declare dso_local i32 @_ccv_init_sparse_matrix_vector(i32*, i32*) #1

declare dso_local i32 @_ccv_sparse_matrix_index_for_hash(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
