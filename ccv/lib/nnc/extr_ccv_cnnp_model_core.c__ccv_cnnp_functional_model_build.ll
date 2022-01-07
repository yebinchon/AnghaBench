; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_core.c__ccv_cnnp_functional_model_build.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_core.c__ccv_cnnp_functional_model_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__**, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32*, i32*, i32, i32*, i32)* @_ccv_cnnp_functional_model_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_cnnp_functional_model_build(%struct.TYPE_18__* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %23 = bitcast %struct.TYPE_18__* %22 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %13, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %75, %6
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %40
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %55, i64 %57
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %52, i32* %64, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %67, i64 %69
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %52, i32* %74, align 4
  br label %75

75:                                               ; preds = %47
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %40

78:                                               ; preds = %40
  %79 = call %struct.TYPE_21__* @ccv_array_new(i32 4, i32 1, i32 0)
  store %struct.TYPE_21__* %79, %struct.TYPE_21__** %17, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %169, %78
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %172

90:                                               ; preds = %84
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %93, i64 %95
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  store %struct.TYPE_18__* %99, %struct.TYPE_18__** %18, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %101 = call i32 @ccv_array_clear(%struct.TYPE_21__* %100)
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %104, i64 %106
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  store %struct.TYPE_21__* %110, %struct.TYPE_21__** %19, align 8
  store i32 0, i32* %15, align 4
  br label %111

111:                                              ; preds = %144, %90
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %147

117:                                              ; preds = %111
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i64 @ccv_array_get(%struct.TYPE_21__* %118, i32 %119)
  %121 = inttoptr i64 %120 to %struct.TYPE_19__**
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  store %struct.TYPE_19__* %122, %struct.TYPE_19__** %20, align 8
  store i32 0, i32* %16, align 4
  br label %123

123:                                              ; preds = %140, %117
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %124, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %123
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = call i32 @ccv_array_push(%struct.TYPE_21__* %132, i32* %138)
  br label %140

140:                                              ; preds = %131
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %16, align 4
  br label %123

143:                                              ; preds = %123
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %111

147:                                              ; preds = %111
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %151 = call i64 @ccv_array_get(%struct.TYPE_21__* %150, i32 0)
  %152 = inttoptr i64 %151 to i32*
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %158, i64 %160
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ccv_cnnp_model_build(%struct.TYPE_18__* %148, i32* %149, i32* %152, i32 %155, i32* %164, i32 %167)
  br label %169

169:                                              ; preds = %147
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %84

172:                                              ; preds = %84
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %174 = call i32 @ccv_array_free(%struct.TYPE_21__* %173)
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %14, align 4
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  br label %180

180:                                              ; preds = %232, %172
  %181 = load i32, i32* %16, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %235

183:                                              ; preds = %180
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %185, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %186, i64 %188
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  store %struct.TYPE_18__* %192, %struct.TYPE_18__** %21, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sub nsw i32 %196, %195
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %14, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %183
  br label %235

201:                                              ; preds = %183
  store i32 0, i32* %15, align 4
  br label %202

202:                                              ; preds = %228, %201
  %203 = load i32, i32* %15, align 4
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %231

208:                                              ; preds = %202
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %211, i64 %213
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %11, align 8
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* %15, align 4
  %225 = add nsw i32 %223, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %222, i64 %226
  store i32 %221, i32* %227, align 4
  br label %228

228:                                              ; preds = %208
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %15, align 4
  br label %202

231:                                              ; preds = %202
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %16, align 4
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %16, align 4
  br label %180

235:                                              ; preds = %200, %180
  %236 = load i32, i32* %14, align 4
  %237 = icmp sle i32 %236, 0
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_21__* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @ccv_array_clear(%struct.TYPE_21__*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ccv_array_push(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @ccv_cnnp_model_build(%struct.TYPE_18__*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
