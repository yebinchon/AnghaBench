; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeQueryResultInterpolate.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeQueryResultInterpolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_19__, %struct.TYPE_18__*, i32, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vnodeQueryResultInterpolate(%struct.TYPE_23__* %0, %struct.TYPE_20__** %1, %struct.TYPE_20__** %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_20__**, align 8
  %9 = alloca %struct.TYPE_20__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_20__** %1, %struct.TYPE_20__*** %8, align 8
  store %struct.TYPE_20__** %2, %struct.TYPE_20__*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %12, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 1
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %13, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %14, align 8
  br label %28

28:                                               ; preds = %5, %240
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = call i64 @taosNumOfRemainPoints(i32* %30)
  store i64 %31, i64* %10, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @taosGetRevisedEndKey(i32 %34, i32 %38, i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %51, i64 0
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @taosGetNumOfResultWithInterpo(i32* %50, i32* %56, i64 %57, i32 %60, i32 %61, i32 %64)
  store i64 %65, i64* %16, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %67 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %68 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %16, align 8
  %71 = call i64 @resultInterpolate(%struct.TYPE_23__* %66, %struct.TYPE_20__** %67, %struct.TYPE_20__** %68, i64 %69, i64 %70)
  store i64 %71, i64* %17, align 8
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* %16, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %28
  %83 = load i64, i64* %17, align 8
  store i64 %83, i64* %6, align 8
  br label %241

84:                                               ; preds = %28
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %17, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %227

91:                                               ; preds = %84
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %17, align 8
  %97 = sub nsw i64 %96, %95
  store i64 %97, i64* %17, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %99 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_22__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %150

101:                                              ; preds = %91
  store i64 0, i64* %18, align 8
  br label %102

102:                                              ; preds = %146, %101
  %103 = load i64, i64* %18, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %108, label %149

108:                                              ; preds = %102
  %109 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %110 = load i64, i64* %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %109, i64 %110
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %116 = load i64, i64* %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %115, i64 %116
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = load i64, i64* %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = mul nsw i64 %128, %132
  %134 = add nsw i64 %120, %133
  %135 = load i64, i64* %17, align 8
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  %139 = load i64, i64* %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %135, %143
  %145 = call i32 @memmove(i64 %114, i64 %134, i64 %144)
  br label %146

146:                                              ; preds = %108
  %147 = load i64, i64* %18, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %18, align 8
  br label %102

149:                                              ; preds = %102
  br label %222

150:                                              ; preds = %91
  store i64 0, i64* %19, align 8
  br label %151

151:                                              ; preds = %218, %150
  %152 = load i64, i64* %19, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp slt i64 %152, %155
  br i1 %156, label %157, label %221

157:                                              ; preds = %151
  %158 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %159 = load i64, i64* %19, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %158, i64 %159
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %17, align 8
  %169 = sub nsw i64 %167, %168
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = load i64, i64* %19, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = mul nsw i64 %169, %177
  %179 = add nsw i64 %163, %178
  %180 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %181 = load i64, i64* %19, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %180, i64 %181
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* %17, align 8
  %191 = sub nsw i64 %189, %190
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %191, %195
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = load i64, i64* %19, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = mul nsw i64 %196, %204
  %206 = add nsw i64 %185, %205
  %207 = load i64, i64* %17, align 8
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %209, align 8
  %211 = load i64, i64* %19, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = mul nsw i64 %207, %215
  %217 = call i32 @memmove(i64 %179, i64 %206, i64 %216)
  br label %218

218:                                              ; preds = %157
  %219 = load i64, i64* %19, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %19, align 8
  br label %151

221:                                              ; preds = %151
  br label %222

222:                                              ; preds = %221, %149
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  store i64 0, i64* %225, align 8
  %226 = load i64, i64* %17, align 8
  store i64 %226, i64* %6, align 8
  br label %241

227:                                              ; preds = %84
  %228 = load i64, i64* %17, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = sub nsw i64 %232, %228
  store i64 %233, i64* %231, align 8
  store i64 0, i64* %17, align 8
  br label %234

234:                                              ; preds = %227
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %236 = call i32 @vnodeHasRemainResults(%struct.TYPE_23__* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %234
  %239 = load i64, i64* %17, align 8
  store i64 %239, i64* %6, align 8
  br label %241

240:                                              ; preds = %234
  br label %28

241:                                              ; preds = %238, %222, %82
  %242 = load i64, i64* %6, align 8
  ret i64 %242
}

declare dso_local i64 @taosNumOfRemainPoints(i32*) #1

declare dso_local i32 @taosGetRevisedEndKey(i32, i32, i32, i32, i32) #1

declare dso_local i64 @taosGetNumOfResultWithInterpo(i32*, i32*, i64, i32, i32, i32) #1

declare dso_local i64 @resultInterpolate(%struct.TYPE_23__*, %struct.TYPE_20__**, %struct.TYPE_20__**, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_22__*) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @vnodeHasRemainResults(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
