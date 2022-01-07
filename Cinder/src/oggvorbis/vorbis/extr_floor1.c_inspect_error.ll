; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_inspect_error.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_inspect_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, float*, float*, %struct.TYPE_3__*)* @inspect_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inspect_error(i32 %0, i32 %1, i32 %2, i32 %3, float* %4, float* %5, %struct.TYPE_3__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float* %4, float** %13, align 8
  store float* %5, float** %14, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %15, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @abs(i32 %33) #3
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %7
  %41 = load i32, i32* %19, align 4
  %42 = sub nsw i32 %41, 1
  br label %46

43:                                               ; preds = %7
  %44 = load i32, i32* %19, align 4
  %45 = add nsw i32 %44, 1
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i32 [ %42, %40 ], [ %45, %43 ]
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %50 = load float*, float** %13, align 8
  %51 = load i32, i32* %21, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  %54 = call i32 @vorbis_dBquant(float* %53)
  store i32 %54, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %17, align 4
  %57 = mul nsw i32 %55, %56
  %58 = call i32 @abs(i32 %57) #3
  %59 = load i32, i32* %18, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %22, align 4
  %62 = load i32, i32* %24, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %25, align 4
  %64 = load i32, i32* %25, align 4
  %65 = load i32, i32* %25, align 4
  %66 = mul nsw i32 %65, %64
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* %26, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %26, align 4
  %69 = load float*, float** %14, align 8
  %70 = load i32, i32* %21, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  %73 = load float, float* %72, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load float, float* %75, align 4
  %77 = fadd float %73, %76
  %78 = load float*, float** %13, align 8
  %79 = load i32, i32* %21, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %78, i64 %80
  %82 = load float, float* %81, align 4
  %83 = fcmp oge float %77, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %46
  %85 = load i32, i32* %22, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = load i32, i32* %24, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 1, i32* %8, align 4
  br label %223

93:                                               ; preds = %84
  %94 = load i32, i32* %22, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %94, %97
  %99 = load i32, i32* %24, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 1, i32* %8, align 4
  br label %223

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %46
  br label %104

104:                                              ; preds = %182, %103
  %105 = load i32, i32* %21, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %21, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %183

109:                                              ; preds = %104
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %23, align 4
  %113 = load i32, i32* %23, align 4
  %114 = load i32, i32* %17, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %23, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %23, align 4
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %22, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %22, align 4
  br label %127

123:                                              ; preds = %109
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %22, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %22, align 4
  br label %127

127:                                              ; preds = %123, %116
  %128 = load float*, float** %13, align 8
  %129 = load i32, i32* %21, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  %132 = call i32 @vorbis_dBquant(float* %131)
  store i32 %132, i32* %24, align 4
  %133 = load i32, i32* %22, align 4
  %134 = load i32, i32* %24, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* %24, align 4
  %138 = sub nsw i32 %136, %137
  %139 = mul nsw i32 %135, %138
  %140 = load i32, i32* %25, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %25, align 4
  %142 = load i32, i32* %26, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %26, align 4
  %144 = load float*, float** %14, align 8
  %145 = load i32, i32* %21, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %144, i64 %146
  %148 = load float, float* %147, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load float, float* %150, align 4
  %152 = fadd float %148, %151
  %153 = load float*, float** %13, align 8
  %154 = load i32, i32* %21, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %153, i64 %155
  %157 = load float, float* %156, align 4
  %158 = fcmp oge float %152, %157
  br i1 %158, label %159, label %182

159:                                              ; preds = %127
  %160 = load i32, i32* %24, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %181

162:                                              ; preds = %159
  %163 = load i32, i32* %22, align 4
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %163, %166
  %168 = load i32, i32* %24, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  store i32 1, i32* %8, align 4
  br label %223

171:                                              ; preds = %162
  %172 = load i32, i32* %22, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %172, %175
  %177 = load i32, i32* %24, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  store i32 1, i32* %8, align 4
  br label %223

180:                                              ; preds = %171
  br label %181

181:                                              ; preds = %180, %159
  br label %182

182:                                              ; preds = %181, %127
  br label %104

183:                                              ; preds = %104
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %186, %189
  %191 = load i32, i32* %26, align 4
  %192 = sdiv i32 %190, %191
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = icmp sgt i32 %192, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %183
  store i32 0, i32* %8, align 4
  br label %223

198:                                              ; preds = %183
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %201, %204
  %206 = load i32, i32* %26, align 4
  %207 = sdiv i32 %205, %206
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = icmp sgt i32 %207, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %198
  store i32 0, i32* %8, align 4
  br label %223

213:                                              ; preds = %198
  %214 = load i32, i32* %25, align 4
  %215 = load i32, i32* %26, align 4
  %216 = sdiv i32 %214, %215
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = icmp sgt i32 %216, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %213
  store i32 1, i32* %8, align 4
  br label %223

222:                                              ; preds = %213
  store i32 0, i32* %8, align 4
  br label %223

223:                                              ; preds = %222, %221, %212, %197, %179, %170, %101, %92
  %224 = load i32, i32* %8, align 4
  ret i32 %224
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @vorbis_dBquant(float*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
