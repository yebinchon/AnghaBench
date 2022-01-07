; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_bucket_lookup.c_bucket_lookup_insert.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_bucket_lookup.c_bucket_lookup_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i64 }
%struct.TYPE_8__ = type { i32* }
%struct.time_conv = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.timeval = type { i32 }

@TME_ERROR = common dso_local global i64 0, align 8
@TME_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bucket_lookup_insert(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_8__* %2, %struct.time_conv* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.time_conv*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store %struct.time_conv* %3, %struct.time_conv** %9, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %10, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @TME_ERROR, align 8
  store i64 %31, i64* %5, align 8
  br label %271

32:                                               ; preds = %25, %4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %155

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @SW_ULONG_AT(i32* %38, i32 0)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %11, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @SW_ULONG_AT(i32* %41, i32 4)
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i64, i64* @TME_ERROR, align 8
  store i64 %48, i64* %5, align 8
  br label %271

49:                                               ; preds = %37
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %49
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = call i32 @SW_ULONG_AT(i32* %65, i32 0)
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %57, i64 %67
  store i32* %68, i32** %13, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @SW_ULONG_AT(i32* %69, i32 4)
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %11, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %54
  %75 = load i64, i64* @TME_ERROR, align 8
  store i64 %75, i64* %5, align 8
  br label %271

76:                                               ; preds = %54
  br label %77

77:                                               ; preds = %76, %49
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i64, i64* @TME_ERROR, align 8
  store i64 %86, i64* %5, align 8
  br label %271

87:                                               ; preds = %77
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i64, i64* @TME_ERROR, align 8
  store i64 %96, i64* %5, align 8
  br label %271

97:                                               ; preds = %87
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 7
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %103, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %100, i64 %108
  store i32* %109, i32** %13, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @COPY_MEMORY(i32* %110, i32* %111, i32 8)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32*, i32** %13, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = ptrtoint i32* %120 to i64
  %125 = ptrtoint i32* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = call i32 @SW_ULONG_ASSIGN(i32* %119, i32 %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @SW_ULONG_ASSIGN(i32* %136, i32 %139)
  %141 = load i32*, i32** %13, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 8
  %143 = bitcast i32* %142 to %struct.timeval*
  %144 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %145 = call i32 @GET_TIME(%struct.timeval* %143, %struct.time_conv* %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load i64, i64* @TME_TRUE, align 8
  store i64 %154, i64* %5, align 8
  br label %271

155:                                              ; preds = %32
  %156 = load i32*, i32** %6, align 8
  %157 = call i64 @SW_USHORT_AT(i32* %156, i32 0)
  store i64 %157, i64* %14, align 8
  %158 = load i32*, i32** %6, align 8
  %159 = call i64 @SW_USHORT_AT(i32* %158, i32 2)
  store i64 %159, i64* %15, align 8
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* %15, align 8
  %162 = icmp sgt i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %155
  %164 = load i64, i64* @TME_ERROR, align 8
  store i64 %164, i64* %5, align 8
  br label %271

165:                                              ; preds = %155
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %192

170:                                              ; preds = %165
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = call i32 @SW_ULONG_AT(i32* %181, i32 0)
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %173, i64 %183
  store i32* %184, i32** %16, align 8
  %185 = load i32*, i32** %16, align 8
  %186 = call i64 @SW_USHORT_AT(i32* %185, i32 2)
  %187 = load i64, i64* %14, align 8
  %188 = icmp sge i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %170
  %190 = load i64, i64* @TME_ERROR, align 8
  store i64 %190, i64* %5, align 8
  br label %271

191:                                              ; preds = %170
  br label %192

192:                                              ; preds = %191, %165
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %195, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = load i64, i64* @TME_ERROR, align 8
  store i64 %201, i64* %5, align 8
  br label %271

202:                                              ; preds = %192
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %205, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %202
  %211 = load i64, i64* @TME_ERROR, align 8
  store i64 %211, i64* %5, align 8
  br label %271

212:                                              ; preds = %202
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = call i32 @SW_ULONG_AT(i32* %222, i32 0)
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %215, i64 %224
  store i32* %225, i32** %16, align 8
  %226 = load i32*, i32** %16, align 8
  %227 = load i32*, i32** %6, align 8
  %228 = call i32 @COPY_MEMORY(i32* %226, i32* %227, i32 4)
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load i32*, i32** %16, align 8
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = ptrtoint i32* %236 to i64
  %241 = ptrtoint i32* %239 to i64
  %242 = sub i64 %240, %241
  %243 = sdiv exact i64 %242, 4
  %244 = trunc i64 %243 to i32
  %245 = call i32 @SW_ULONG_ASSIGN(i32* %235, i32 %244)
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @SW_ULONG_ASSIGN(i32* %252, i32 %255)
  %257 = load i32*, i32** %16, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 4
  %259 = bitcast i32* %258 to %struct.timeval*
  %260 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %261 = call i32 @GET_TIME(%struct.timeval* %259, %struct.time_conv* %260)
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 8
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 4
  %270 = load i64, i64* @TME_TRUE, align 8
  store i64 %270, i64* %5, align 8
  br label %271

271:                                              ; preds = %212, %210, %200, %189, %163, %97, %95, %85, %74, %47, %30
  %272 = load i64, i64* %5, align 8
  ret i64 %272
}

declare dso_local i32 @SW_ULONG_AT(i32*, i32) #1

declare dso_local i32 @COPY_MEMORY(i32*, i32*, i32) #1

declare dso_local i32 @SW_ULONG_ASSIGN(i32*, i32) #1

declare dso_local i32 @GET_TIME(%struct.timeval*, %struct.time_conv*) #1

declare dso_local i64 @SW_USHORT_AT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
