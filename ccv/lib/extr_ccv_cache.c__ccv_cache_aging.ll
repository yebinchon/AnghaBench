; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_cache.c__ccv_cache_aging.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_cache.c__ccv_cache_aging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@bits_in_16bits_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @_ccv_cache_aging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_cache_aging(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x %struct.TYPE_7__*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i32, i32* @bits_in_16bits_init, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 (...) @precomputed_16bits()
  br label %23

23:                                               ; preds = %21, %2
  store i32 63, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %101, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %27, label %104

27:                                               ; preds = %24
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x %struct.TYPE_7__*], [10 x %struct.TYPE_7__*]* %7, i64 0, i64 %30
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 2
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %104

45:                                               ; preds = %27
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 3
  %55 = sub nsw i32 %49, %54
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %10, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 %61, 6
  %63 = ashr i32 %60, %62
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %45
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %3, align 8
  br label %97

71:                                               ; preds = %45
  store i32 1, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = shl i32 %72, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %75, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %71
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %84, %88
  store i32 %89, i32* %13, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @compute_bits(i32 %91)
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %93
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %3, align 8
  br label %96

95:                                               ; preds = %71
  br label %104

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %66
  %98 = load i32, i32* %6, align 4
  %99 = shl i32 %98, 6
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %24

104:                                              ; preds = %95, %44, %24
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 10
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  br label %109

109:                                              ; preds = %212, %104
  %110 = load i32, i32* %5, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %215

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [10 x %struct.TYPE_7__*], [10 x %struct.TYPE_7__*]* %7, i64 0, i64 %114
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %3, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 1
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %211, label %124

124:                                              ; preds = %112
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 3
  %134 = sub nsw i32 %128, %133
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %136, %struct.TYPE_7__** %15, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @compute_bits(i32 %140)
  store i32 %141, i32* %16, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %124
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @CCV_GET_TERMINAL_AGE(i32 %154)
  br label %162

156:                                              ; preds = %124
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  br label %162

162:                                              ; preds = %156, %149
  %163 = phi i32 [ %155, %149 ], [ %161, %156 ]
  store i32 %163, i32* %17, align 4
  store i32 1, i32* %6, align 4
  br label %164

164:                                              ; preds = %203, %162
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %16, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %206

168:                                              ; preds = %164
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 1
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %168
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @CCV_GET_TERMINAL_AGE(i32 %185)
  br label %195

187:                                              ; preds = %168
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  br label %195

195:                                              ; preds = %187, %178
  %196 = phi i32 [ %186, %178 ], [ %194, %187 ]
  store i32 %196, i32* %18, align 4
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* %17, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i32, i32* %18, align 4
  store i32 %201, i32* %17, align 4
  br label %202

202:                                              ; preds = %200, %195
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %6, align 4
  br label %164

206:                                              ; preds = %164
  %207 = load i32, i32* %17, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 2
  store i32 %207, i32* %210, align 4
  br label %211

211:                                              ; preds = %206, %112
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* %5, align 4
  br label %109

215:                                              ; preds = %109
  ret void
}

declare dso_local i32 @precomputed_16bits(...) #1

declare dso_local i32 @compute_bits(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_GET_TERMINAL_AGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
