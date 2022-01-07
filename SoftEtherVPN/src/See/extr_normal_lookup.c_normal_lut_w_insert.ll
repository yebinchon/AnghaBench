; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_normal_lookup.c_normal_lut_w_insert.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_normal_lookup.c_normal_lut_w_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32, i32, i32, i32, i64, i32*, i32*, i64 }
%struct.TYPE_9__ = type { i32* }
%struct.time_conv = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.timeval = type { i32 }

@TME_FALSE = common dso_local global i64 0, align 8
@TME_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @normal_lut_w_insert(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_9__* %2, %struct.time_conv* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.time_conv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store %struct.time_conv* %3, %struct.time_conv** %9, align 8
  store i64 0, i64* %11, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to i64*
  store i64* %19, i64** %12, align 8
  store i64 0, i64* %13, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 10
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %15, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %17, align 8
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %38, %4
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %17, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i64*, i64** %12, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = xor i64 %36, %35
  store i64 %37, i64* %13, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %10, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = urem i64 %42, %45
  store i64 %46, i64* %14, align 8
  br label %47

47:                                               ; preds = %247, %41
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ule i64 %48, %51
  br i1 %52, label %53, label %248

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %143

60:                                               ; preds = %53
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 9
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %17, align 8
  %73 = mul i64 4, %72
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = bitcast i32* %74 to %struct.timeval*
  %76 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %77 = call i32 @GET_TIME(%struct.timeval* %75, %struct.time_conv* %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 8
  store i32* null, i32** %79, align 8
  %80 = load i64, i64* @TME_FALSE, align 8
  store i64 %80, i64* %5, align 8
  br label %261

81:                                               ; preds = %60
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 9
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %87, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %84, i64 %92
  store i32* %93, i32** %16, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = load i64*, i64** %12, align 8
  %96 = load i64, i64* %17, align 8
  %97 = mul i64 %96, 4
  %98 = call i32 @COPY_MEMORY(i32* %94, i64* %95, i64 %97)
  %99 = load i32*, i32** %16, align 8
  %100 = load i64, i64* %17, align 8
  %101 = mul i64 4, %100
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = bitcast i32* %102 to %struct.timeval*
  %104 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %105 = call i32 @GET_TIME(%struct.timeval* %103, %struct.time_conv* %104)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %107 = load i64, i64* %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32*, i32** %16, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = ptrtoint i32* %110 to i64
  %115 = ptrtoint i32* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = call i32 @SW_ULONG_ASSIGN(i64* %109, i32 %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %125 = load i64, i64* %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @SW_ULONG_ASSIGN(i64* %127, i32 %130)
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %133, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %137 = load i64, i64* %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 %137
  %139 = bitcast %struct.TYPE_8__* %138 to i32*
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 8
  store i32* %139, i32** %141, align 8
  %142 = load i64, i64* @TME_TRUE, align 8
  store i64 %142, i64* %5, align 8
  br label %261

143:                                              ; preds = %53
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %148 = load i64, i64* %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = call i32 @SW_ULONG_AT(i64* %150, i32 0)
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %146, i64 %152
  store i32* %153, i32** %16, align 8
  store i64 0, i64* %10, align 8
  br label %154

154:                                              ; preds = %171, %143
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* %17, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load i64*, i64** %12, align 8
  %160 = load i64, i64* %10, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = load i32*, i32** %16, align 8
  %164 = load i64, i64* %10, align 8
  %165 = mul i64 %164, 4
  %166 = call i64 @ULONG_AT(i32* %163, i64 %165)
  %167 = icmp eq i64 %162, %166
  br label %168

168:                                              ; preds = %158, %154
  %169 = phi i1 [ false, %154 ], [ %167, %158 ]
  br i1 %169, label %170, label %174

170:                                              ; preds = %168
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* %10, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %10, align 8
  br label %154

174:                                              ; preds = %168
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* %17, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %193

178:                                              ; preds = %174
  %179 = load i32*, i32** %16, align 8
  %180 = load i64, i64* %17, align 8
  %181 = mul i64 4, %180
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = bitcast i32* %182 to %struct.timeval*
  %184 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %185 = call i32 @GET_TIME(%struct.timeval* %183, %struct.time_conv* %184)
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %187 = load i64, i64* %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i64 %187
  %189 = bitcast %struct.TYPE_8__* %188 to i32*
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 8
  store i32* %189, i32** %191, align 8
  %192 = load i64, i64* @TME_TRUE, align 8
  store i64 %192, i64* %5, align 8
  br label %261

193:                                              ; preds = %174
  %194 = load i32*, i32** %16, align 8
  %195 = load i64, i64* %17, align 8
  %196 = mul i64 %195, 4
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %199 = call i64 @IS_DELETABLE(i32* %197, %struct.TYPE_7__* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %234

201:                                              ; preds = %193
  %202 = load i32*, i32** %16, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @ZERO_MEMORY(i32* %202, i32 %205)
  %207 = load i32*, i32** %16, align 8
  %208 = load i64*, i64** %12, align 8
  %209 = load i64, i64* %17, align 8
  %210 = mul i64 %209, 4
  %211 = call i32 @COPY_MEMORY(i32* %207, i64* %208, i64 %210)
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %213 = load i64, i64* %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @SW_ULONG_ASSIGN(i64* %215, i32 %218)
  %220 = load i32*, i32** %16, align 8
  %221 = load i64, i64* %17, align 8
  %222 = mul i64 %221, 4
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = bitcast i32* %223 to %struct.timeval*
  %225 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %226 = call i32 @GET_TIME(%struct.timeval* %224, %struct.time_conv* %225)
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %228 = load i64, i64* %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i64 %228
  %230 = bitcast %struct.TYPE_8__* %229 to i32*
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 8
  store i32* %230, i32** %232, align 8
  %233 = load i64, i64* @TME_TRUE, align 8
  store i64 %233, i64* %5, align 8
  br label %261

234:                                              ; preds = %193
  %235 = load i64, i64* %14, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 7
  %238 = load i64, i64* %237, align 8
  %239 = add i64 %235, %238
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = urem i64 %239, %242
  store i64 %243, i64* %14, align 8
  %244 = load i64, i64* %11, align 8
  %245 = add i64 %244, 1
  store i64 %245, i64* %11, align 8
  br label %246

246:                                              ; preds = %234
  br label %247

247:                                              ; preds = %246
  br label %47

248:                                              ; preds = %47
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 9
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* %17, align 8
  %253 = mul i64 4, %252
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = bitcast i32* %254 to %struct.timeval*
  %256 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %257 = call i32 @GET_TIME(%struct.timeval* %255, %struct.time_conv* %256)
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 8
  store i32* null, i32** %259, align 8
  %260 = load i64, i64* @TME_FALSE, align 8
  store i64 %260, i64* %5, align 8
  br label %261

261:                                              ; preds = %248, %201, %178, %81, %68
  %262 = load i64, i64* %5, align 8
  ret i64 %262
}

declare dso_local i32 @GET_TIME(%struct.timeval*, %struct.time_conv*) #1

declare dso_local i32 @COPY_MEMORY(i32*, i64*, i64) #1

declare dso_local i32 @SW_ULONG_ASSIGN(i64*, i32) #1

declare dso_local i32 @SW_ULONG_AT(i64*, i32) #1

declare dso_local i64 @ULONG_AT(i32*, i64) #1

declare dso_local i64 @IS_DELETABLE(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ZERO_MEMORY(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
