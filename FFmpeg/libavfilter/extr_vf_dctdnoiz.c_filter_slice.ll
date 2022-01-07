; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_dctdnoiz.c_filter_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_dctdnoiz.c_filter_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, float*, float**, i32, i32 (%struct.TYPE_7__*, float*, i32, float*, i32, i32)* }
%struct.TYPE_6__ = type { float*, float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, i32)* @filter_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_slice(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %11, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %12, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %13, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 %43, %45
  %47 = load i32, i32* %8, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %49, %52
  %54 = add nsw i32 %53, 1
  %55 = call i32 @FFMAX(i32 %54, i32 0)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %57, %60
  %62 = add nsw i32 %61, 1
  %63 = call i32 @FFMIN(i32 %56, i32 %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %17, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %19, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %20, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %21, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %22, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load float*, float** %77, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %20, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %78, i64 %82
  store float* %83, float** %24, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = load float*, float** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %21, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %86, i64 %90
  store float* %91, float** %25, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  %94 = load float**, float*** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float*, float** %94, i64 %96
  %98 = load float*, float** %97, align 8
  store float* %98, float** %26, align 8
  %99 = load float*, float** %26, align 8
  %100 = load i32, i32* %19, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %100, %103
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* %21, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memset(float* %99, i32 0, i32 %110)
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %166, %4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %19, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %172

116:                                              ; preds = %112
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %143, %116
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %119, %122
  %124 = add nsw i32 %123, 1
  %125 = icmp slt i32 %118, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %117
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 7
  %129 = load i32 (%struct.TYPE_7__*, float*, i32, float*, i32, i32)*, i32 (%struct.TYPE_7__*, float*, i32, float*, i32, i32)** %128, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %131 = load float*, float** %24, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %131, i64 %133
  %135 = load i32, i32* %20, align 4
  %136 = load float*, float** %26, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %136, i64 %138
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 %129(%struct.TYPE_7__* %130, float* %134, i32 %135, float* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %126
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %9, align 4
  br label %117

149:                                              ; preds = %117
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %20, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load float*, float** %24, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds float, float* %155, i64 %156
  store float* %157, float** %24, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %22, align 4
  %162 = mul nsw i32 %160, %161
  %163 = load float*, float** %26, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds float, float* %163, i64 %164
  store float* %165, float** %26, align 8
  br label %166

166:                                              ; preds = %149
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %10, align 4
  br label %112

172:                                              ; preds = %112
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 5
  %175 = load float**, float*** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float*, float** %175, i64 %177
  %179 = load float*, float** %178, align 8
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %17, align 4
  %182 = sub nsw i32 %180, %181
  %183 = load i32, i32* %22, align 4
  %184 = mul nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %179, i64 %185
  store float* %186, float** %26, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load float*, float** %188, align 8
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %21, align 4
  %192 = mul nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %189, i64 %193
  store float* %194, float** %23, align 8
  %195 = load i32, i32* %15, align 4
  store i32 %195, i32* %10, align 4
  br label %196

196:                                              ; preds = %237, %172
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %16, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %240

200:                                              ; preds = %196
  store i32 0, i32* %9, align 4
  br label %201

201:                                              ; preds = %221, %200
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %224

205:                                              ; preds = %201
  %206 = load float*, float** %26, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  %210 = load float, float* %209, align 4
  %211 = load float*, float** %25, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %211, i64 %213
  %215 = load float, float* %214, align 4
  %216 = fmul float %210, %215
  %217 = load float*, float** %23, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %217, i64 %219
  store float %216, float* %220, align 4
  br label %221

221:                                              ; preds = %205
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %201

224:                                              ; preds = %201
  %225 = load i32, i32* %22, align 4
  %226 = load float*, float** %26, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds float, float* %226, i64 %227
  store float* %228, float** %26, align 8
  %229 = load i32, i32* %21, align 4
  %230 = load float*, float** %23, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds float, float* %230, i64 %231
  store float* %232, float** %23, align 8
  %233 = load i32, i32* %21, align 4
  %234 = load float*, float** %25, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds float, float* %234, i64 %235
  store float* %236, float** %25, align 8
  br label %237

237:                                              ; preds = %224
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %10, align 4
  br label %196

240:                                              ; preds = %196
  ret i32 0
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
