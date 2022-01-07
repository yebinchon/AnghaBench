; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_mser.c_ccv_mser.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_mser.c_ccv_mser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@CCV_EOF_SIGN = common dso_local global i32 0, align 4
@bsig = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ccv_mser(matrix)\00", align 1
@rsig = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ccv_mser(array)\00", align 1
@CCV_32S = common dso_local global i32 0, align 4
@CCV_C1 = common dso_local global i32 0, align 4
@CCV_ALL_DATA_TYPE = common dso_local global i32 0, align 4
@CCV_32F = common dso_local global i32 0, align 4
@CCV_64F = common dso_local global i32 0, align 4
@CCV_8U = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ccv_mser(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = bitcast i32* %10 to i8*
  %15 = load i32, i32* @CCV_EOF_SIGN, align 4
  %16 = call i32 @ccv_cache_generate_signature(i8* %14, i32 4, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @bsig, align 4
  %18 = call i32 @ccv_sign_with_literal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = icmp eq %struct.TYPE_18__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %21, %5
  %27 = phi i1 [ false, %5 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CCV_EOF_SIGN, align 4
  %34 = call i32 (i32, i32, i32, i32, ...) @ccv_sign_if(i32 %28, i32 %29, i32 %32, i32 %33)
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %36 = icmp ne %struct.TYPE_18__* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %26
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %42, %37, %26
  %48 = phi i1 [ false, %37 ], [ false, %26 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CCV_EOF_SIGN, align 4
  %58 = call i32 (i32, i32, i32, i32, ...) @ccv_sign_if(i32 %49, i32 %50, i32 %53, i32 %56, i32 %57)
  %59 = call i32 @ccv_declare_derived_signature_case(i32 %17, i32 %18, i32 %34, i32 %58)
  %60 = load i32, i32* @rsig, align 4
  %61 = call i32 @ccv_sign_with_literal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %63 = icmp eq %struct.TYPE_18__* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %47
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %64, %47
  %70 = phi i1 [ false, %47 ], [ %68, %64 ]
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CCV_EOF_SIGN, align 4
  %77 = call i32 (i32, i32, i32, i32, ...) @ccv_sign_if(i32 %71, i32 %72, i32 %75, i32 %76)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %79 = icmp ne %struct.TYPE_18__* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %69
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %85, %80, %69
  %91 = phi i1 [ false, %80 ], [ false, %69 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CCV_EOF_SIGN, align 4
  %101 = call i32 (i32, i32, i32, i32, ...) @ccv_sign_if(i32 %92, i32 %93, i32 %96, i32 %99, i32 %100)
  %102 = call i32 @ccv_declare_derived_signature_case(i32 %60, i32 %61, i32 %77, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %90
  %106 = load i32, i32* @CCV_32S, align 4
  %107 = load i32, i32* @CCV_C1, align 4
  %108 = or i32 %106, %107
  br label %114

109:                                              ; preds = %90
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @CCV_GET_DATA_TYPE(i32 %110)
  %112 = load i32, i32* @CCV_C1, align 4
  %113 = or i32 %111, %112
  br label %114

114:                                              ; preds = %109, %105
  %115 = phi i32 [ %108, %105 ], [ %113, %109 ]
  store i32 %115, i32* %9, align 4
  %116 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @CCV_C1, align 4
  %125 = load i32, i32* @CCV_ALL_DATA_TYPE, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @bsig, align 4
  %129 = call %struct.TYPE_18__* @ccv_dense_matrix_renew(%struct.TYPE_18__* %117, i32 %120, i32 %123, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %129, %struct.TYPE_18__** %130, align 8
  store %struct.TYPE_18__* %129, %struct.TYPE_18__** %12, align 8
  %131 = load i32, i32* @rsig, align 4
  %132 = call i32* @ccv_array_new(i32 4, i32 64, i32 %131)
  store i32* %132, i32** %13, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @ccv_object_return_if_cached(i32* %133, %struct.TYPE_18__* %134, i32* %135)
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = call i32 @ccv_revive_object_if_cached(%struct.TYPE_18__* %137, i32* %138)
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @CCV_GET_CHANNEL(i32 %142)
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %159, label %145

145:                                              ; preds = %114
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @CCV_GET_DATA_TYPE(i32 %148)
  %150 = load i32, i32* @CCV_32F, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %159, label %152

152:                                              ; preds = %145
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @CCV_GET_DATA_TYPE(i32 %155)
  %157 = load i32, i32* @CCV_64F, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %152, %145, %114
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %163 = load i32*, i32** %13, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @_ccv_mscr(%struct.TYPE_18__* %160, %struct.TYPE_18__* %161, %struct.TYPE_18__* %162, i32* %163, i32 %164)
  br label %188

166:                                              ; preds = %152
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @CCV_GET_DATA_TYPE(i32 %169)
  %171 = load i32, i32* @CCV_8U, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %177 = load i32*, i32** %13, align 8
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @_ccv_linear_mser(%struct.TYPE_18__* %174, %struct.TYPE_18__* %175, %struct.TYPE_18__* %176, i32* %177, i32 %178)
  br label %187

180:                                              ; preds = %166
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %184 = load i32*, i32** %13, align 8
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @_ccv_set_union_mser(%struct.TYPE_18__* %181, %struct.TYPE_18__* %182, %struct.TYPE_18__* %183, i32* %184, i32 %185)
  br label %187

187:                                              ; preds = %180, %173
  br label %188

188:                                              ; preds = %187, %159
  %189 = load i32*, i32** %13, align 8
  ret i32* %189
}

declare dso_local i32 @ccv_cache_generate_signature(i8*, i32, i32) #1

declare dso_local i32 @ccv_declare_derived_signature_case(i32, i32, i32, i32) #1

declare dso_local i32 @ccv_sign_with_literal(i8*) #1

declare dso_local i32 @ccv_sign_if(i32, i32, i32, i32, ...) #1

declare dso_local i32 @CCV_GET_DATA_TYPE(i32) #1

declare dso_local %struct.TYPE_18__* @ccv_dense_matrix_renew(%struct.TYPE_18__*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @ccv_object_return_if_cached(i32*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ccv_revive_object_if_cached(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local i32 @_ccv_mscr(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @_ccv_linear_mser(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @_ccv_set_union_mser(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
