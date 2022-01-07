; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c_ccv_nnc_tensor_bind_symbol.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c_ccv_nnc_tensor_bind_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32*, i64*, %struct.TYPE_13__**, %struct.TYPE_18__**, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_tensor_bind_symbol(%struct.TYPE_17__* %0, i64 %1, i64 %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_16__* %5 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %1, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %2, i64* %13, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %7, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %80, label %34

34:                                               ; preds = %4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @cccalloc(i64 %37, i32 8)
  %39 = inttoptr i64 %38 to %struct.TYPE_14__*
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 6
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %41, align 8
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %76, %34
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %42
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %52, i64 %54
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %75

58:                                               ; preds = %49
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i64 %63
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %67, i64 %69
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = bitcast %struct.TYPE_14__* %64 to i8*
  %74 = bitcast %struct.TYPE_14__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 8, i1 false)
  br label %75

75:                                               ; preds = %58, %49
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %42

79:                                               ; preds = %42
  br label %80

80:                                               ; preds = %79, %4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %82, align 8
  %84 = icmp ne %struct.TYPE_18__** %83, null
  br i1 %84, label %148, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @cccalloc(i64 %88, i32 8)
  %90 = inttoptr i64 %89 to %struct.TYPE_18__**
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 5
  store %struct.TYPE_18__** %90, %struct.TYPE_18__*** %92, align 8
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %144, %85
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %95, %98
  br i1 %99, label %100, label %147

100:                                              ; preds = %93
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %100
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 5
  %120 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %120, i64 %122
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = icmp ne %struct.TYPE_18__* %124, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %109
  %127 = call %struct.TYPE_18__* @ccv_array_new(i32 4, i32 1, i32 0)
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %130, i64 %132
  store %struct.TYPE_18__* %127, %struct.TYPE_18__** %133, align 8
  br label %134

134:                                              ; preds = %126, %109
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %137, i64 %139
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = call i32 @ccv_array_push(%struct.TYPE_18__* %141, i32* %8)
  br label %143

143:                                              ; preds = %134, %100
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %93

147:                                              ; preds = %93
  br label %148

148:                                              ; preds = %147, %80
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %151, i64 %153
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = bitcast %struct.TYPE_14__* %156 to i8*
  %160 = bitcast %struct.TYPE_14__* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 8, i1 false)
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 5
  %163 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %163, i64 %165
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = icmp ne %struct.TYPE_18__* %167, null
  br i1 %168, label %169, label %219

169:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  br label %170

170:                                              ; preds = %215, %169
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 5
  %174 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %174, i64 %176
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %171, %180
  br i1 %181, label %182, label %218

182:                                              ; preds = %170
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 5
  %185 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %185, i64 %187
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i64 @ccv_array_get(%struct.TYPE_18__* %189, i32 %190)
  %192 = inttoptr i64 %191 to i32*
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %10, align 4
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 3
  %200 = load i64*, i64** %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %197, %204
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 4
  %208 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %208, i64 %210
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  store i64 %205, i64* %214, align 8
  br label %215

215:                                              ; preds = %182
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %8, align 4
  br label %170

218:                                              ; preds = %170
  br label %219

219:                                              ; preds = %218, %148
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @cccalloc(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_18__* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @ccv_array_push(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
