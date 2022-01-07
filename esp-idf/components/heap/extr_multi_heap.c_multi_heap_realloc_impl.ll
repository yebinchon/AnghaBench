; ModuleID = '/home/carl/AnghaBench/esp-idf/components/heap/extr_multi_heap.c_multi_heap_realloc_impl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/heap/extr_multi_heap.c_multi_heap_realloc_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_26__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @multi_heap_realloc_impl(%struct.TYPE_25__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.TYPE_26__* @get_block(i8* %15)
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @ALIGN_UP(i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %20 = icmp ne %struct.TYPE_25__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i8* @multi_heap_malloc_impl(%struct.TYPE_25__* %26, i64 %27)
  store i8* %28, i8** %4, align 8
  br label %196

29:                                               ; preds = %3
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %32 = call i32 @assert_valid_block(%struct.TYPE_25__* %30, %struct.TYPE_26__* %31)
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %34 = call i64 @is_free(%struct.TYPE_26__* %33)
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %39 = call i32 @MULTI_HEAP_ASSERT(i32 %37, %struct.TYPE_26__* %38)
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @multi_heap_free_impl(%struct.TYPE_25__* %43, i8* %44)
  store i8* null, i8** %4, align 8
  br label %196

46:                                               ; preds = %29
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %48 = icmp eq %struct.TYPE_25__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i8* null, i8** %4, align 8
  br label %196

50:                                               ; preds = %46
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %52 = call i32 @multi_heap_internal_lock(%struct.TYPE_25__* %51)
  store i8* null, i8** %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %55 = call i64 @block_data_size(%struct.TYPE_26__* %54)
  %56 = icmp ule i64 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @split_if_necessary(%struct.TYPE_25__* %58, %struct.TYPE_26__* %59, i64 %60, i32* null)
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %9, align 8
  br label %78

65:                                               ; preds = %50
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %71 = call i64 @block_data_size(%struct.TYPE_26__* %70)
  %72 = sub i64 %69, %71
  %73 = icmp ult i64 %68, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = call i32 @multi_heap_internal_unlock(%struct.TYPE_25__* %75)
  store i8* null, i8** %4, align 8
  br label %196

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i8*, i8** %9, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %155

81:                                               ; preds = %78
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_26__* %82, %struct.TYPE_26__** %10, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %84 = call i64 @block_data_size(%struct.TYPE_26__* %83)
  store i64 %84, i64* %11, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %86 = call %struct.TYPE_26__* @get_next_block(%struct.TYPE_26__* %85)
  store %struct.TYPE_26__* %86, %struct.TYPE_26__** %12, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %89 = call %struct.TYPE_26__* @get_prev_free_block(%struct.TYPE_25__* %87, %struct.TYPE_26__* %88)
  store %struct.TYPE_26__* %89, %struct.TYPE_26__** %13, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %91 = call %struct.TYPE_26__* @get_next_block(%struct.TYPE_26__* %90)
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %93 = icmp eq %struct.TYPE_26__* %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %81
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %96 = call i64 @block_data_size(%struct.TYPE_26__* %95)
  br label %98

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %94
  %99 = phi i64 [ %96, %94 ], [ 0, %97 ]
  store i64 %99, i64* %14, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %101 = call i64 @is_free(%struct.TYPE_26__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %98
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %105 = call i64 @block_data_size(%struct.TYPE_26__* %104)
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %107 = call i64 @block_data_size(%struct.TYPE_26__* %106)
  %108 = add i64 %105, %107
  %109 = load i64, i64* %14, align 8
  %110 = add i64 %108, %109
  %111 = load i64, i64* %7, align 8
  %112 = icmp uge i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %103
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %117 = call %struct.TYPE_26__* @merge_adjacent(%struct.TYPE_25__* %114, %struct.TYPE_26__* %115, %struct.TYPE_26__* %116)
  store %struct.TYPE_26__* %117, %struct.TYPE_26__** %8, align 8
  br label %118

118:                                              ; preds = %113, %103, %98
  %119 = load i64, i64* %14, align 8
  %120 = icmp ugt i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %123 = call i64 @block_data_size(%struct.TYPE_26__* %122)
  %124 = load i64, i64* %14, align 8
  %125 = add i64 %123, %124
  %126 = load i64, i64* %7, align 8
  %127 = icmp uge i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %121
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %132 = call %struct.TYPE_26__* @merge_adjacent(%struct.TYPE_25__* %129, %struct.TYPE_26__* %130, %struct.TYPE_26__* %131)
  store %struct.TYPE_26__* %132, %struct.TYPE_26__** %8, align 8
  br label %133

133:                                              ; preds = %128, %121, %118
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %135 = call i64 @block_data_size(%struct.TYPE_26__* %134)
  %136 = load i64, i64* %7, align 8
  %137 = icmp uge i64 %135, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %133
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i32 @memmove(i8* %141, i8* %144, i64 %145)
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %149 = load i64, i64* %7, align 8
  %150 = call i32 @split_if_necessary(%struct.TYPE_25__* %147, %struct.TYPE_26__* %148, i64 %149, i32* null)
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %9, align 8
  br label %154

154:                                              ; preds = %138, %133
  br label %155

155:                                              ; preds = %154, %78
  %156 = load i8*, i8** %9, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %178

158:                                              ; preds = %155
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %160 = load i64, i64* %7, align 8
  %161 = call i8* @multi_heap_malloc_impl(%struct.TYPE_25__* %159, i64 %160)
  store i8* %161, i8** %9, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %177

164:                                              ; preds = %158
  %165 = load i8*, i8** %9, align 8
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %170 = call i64 @block_data_size(%struct.TYPE_26__* %169)
  %171 = call i32 @memcpy(i8* %165, i8* %168, i64 %170)
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @multi_heap_free_impl(%struct.TYPE_25__* %172, i8* %175)
  br label %177

177:                                              ; preds = %164, %158
  br label %178

178:                                              ; preds = %177, %155
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ult i64 %181, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %186, %178
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %194 = call i32 @multi_heap_internal_unlock(%struct.TYPE_25__* %193)
  %195 = load i8*, i8** %9, align 8
  store i8* %195, i8** %4, align 8
  br label %196

196:                                              ; preds = %192, %74, %49, %42, %25
  %197 = load i8*, i8** %4, align 8
  ret i8* %197
}

declare dso_local %struct.TYPE_26__* @get_block(i8*) #1

declare dso_local i64 @ALIGN_UP(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @multi_heap_malloc_impl(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @assert_valid_block(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @MULTI_HEAP_ASSERT(i32, %struct.TYPE_26__*) #1

declare dso_local i64 @is_free(%struct.TYPE_26__*) #1

declare dso_local i32 @multi_heap_free_impl(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @multi_heap_internal_lock(%struct.TYPE_25__*) #1

declare dso_local i64 @block_data_size(%struct.TYPE_26__*) #1

declare dso_local i32 @split_if_necessary(%struct.TYPE_25__*, %struct.TYPE_26__*, i64, i32*) #1

declare dso_local i32 @multi_heap_internal_unlock(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_26__* @get_next_block(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @get_prev_free_block(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @merge_adjacent(%struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
