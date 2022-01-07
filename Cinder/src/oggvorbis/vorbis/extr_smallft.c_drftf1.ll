; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_drftf1.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_drftf1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*, float*, float*, i32*)* @drftf1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drftf1(i32 %0, float* %1, float* %2, float* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
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
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store i32* %4, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  store i32 1, i32* %15, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %19, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %189, %5
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %192

33:                                               ; preds = %29
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %12, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %16, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %18, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %14, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %13, align 4
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %18, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %20, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %19, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %15, align 4
  %59 = sub nsw i32 1, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 4
  br i1 %61, label %62, label %63

62:                                               ; preds = %33
  br label %115

63:                                               ; preds = %33
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %20, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %22, align 4
  %67 = load i32, i32* %22, align 4
  %68 = load i32, i32* %20, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %23, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %63
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load float*, float** %8, align 8
  %76 = load float*, float** %7, align 8
  %77 = load float*, float** %9, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = getelementptr inbounds float, float* %80, i64 -1
  %82 = load float*, float** %9, align 8
  %83 = load i32, i32* %22, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = getelementptr inbounds float, float* %85, i64 -1
  %87 = load float*, float** %9, align 8
  %88 = load i32, i32* %23, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  %91 = getelementptr inbounds float, float* %90, i64 -1
  %92 = call i32 @dradf4(i32 %73, i32 %74, float* %75, float* %76, float* %81, float* %86, float* %91)
  br label %114

93:                                               ; preds = %63
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load float*, float** %7, align 8
  %97 = load float*, float** %8, align 8
  %98 = load float*, float** %9, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  %102 = getelementptr inbounds float, float* %101, i64 -1
  %103 = load float*, float** %9, align 8
  %104 = load i32, i32* %22, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  %107 = getelementptr inbounds float, float* %106, i64 -1
  %108 = load float*, float** %9, align 8
  %109 = load i32, i32* %23, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %108, i64 %110
  %112 = getelementptr inbounds float, float* %111, i64 -1
  %113 = call i32 @dradf4(i32 %94, i32 %95, float* %96, float* %97, float* %102, float* %107, float* %112)
  br label %114

114:                                              ; preds = %93, %72
  br label %187

115:                                              ; preds = %62
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 2
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %145

119:                                              ; preds = %115
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %134

123:                                              ; preds = %119
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load float*, float** %7, align 8
  %127 = load float*, float** %8, align 8
  %128 = load float*, float** %9, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  %132 = getelementptr inbounds float, float* %131, i64 -1
  %133 = call i32 @dradf2(i32 %124, i32 %125, float* %126, float* %127, float* %132)
  br label %187

134:                                              ; preds = %122
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load float*, float** %8, align 8
  %138 = load float*, float** %7, align 8
  %139 = load float*, float** %9, align 8
  %140 = load i32, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %139, i64 %141
  %143 = getelementptr inbounds float, float* %142, i64 -1
  %144 = call i32 @dradf2(i32 %135, i32 %136, float* %137, float* %138, float* %143)
  br label %187

145:                                              ; preds = %118
  %146 = load i32, i32* %20, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* %15, align 4
  %150 = sub nsw i32 1, %149
  store i32 %150, i32* %15, align 4
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  br label %171

155:                                              ; preds = %151
  %156 = load i32, i32* %20, align 4
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %21, align 4
  %160 = load float*, float** %7, align 8
  %161 = load float*, float** %7, align 8
  %162 = load float*, float** %7, align 8
  %163 = load float*, float** %8, align 8
  %164 = load float*, float** %8, align 8
  %165 = load float*, float** %9, align 8
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %165, i64 %167
  %169 = getelementptr inbounds float, float* %168, i64 -1
  %170 = call i32 @dradfg(i32 %156, i32 %157, i32 %158, i32 %159, float* %160, float* %161, float* %162, float* %163, float* %164, float* %169)
  store i32 1, i32* %15, align 4
  br label %187

171:                                              ; preds = %154
  %172 = load i32, i32* %20, align 4
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %21, align 4
  %176 = load float*, float** %8, align 8
  %177 = load float*, float** %8, align 8
  %178 = load float*, float** %8, align 8
  %179 = load float*, float** %7, align 8
  %180 = load float*, float** %7, align 8
  %181 = load float*, float** %9, align 8
  %182 = load i32, i32* %19, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %181, i64 %183
  %185 = getelementptr inbounds float, float* %184, i64 -1
  %186 = call i32 @dradfg(i32 %172, i32 %173, i32 %174, i32 %175, float* %176, float* %177, float* %178, float* %179, float* %180, float* %185)
  store i32 0, i32* %15, align 4
  br label %187

187:                                              ; preds = %171, %155, %134, %123, %114
  %188 = load i32, i32* %13, align 4
  store i32 %188, i32* %14, align 4
  br label %189

189:                                              ; preds = %187
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %12, align 4
  br label %29

192:                                              ; preds = %29
  %193 = load i32, i32* %15, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %214

196:                                              ; preds = %192
  store i32 0, i32* %11, align 4
  br label %197

197:                                              ; preds = %211, %196
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %214

201:                                              ; preds = %197
  %202 = load float*, float** %8, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %202, i64 %204
  %206 = load float, float* %205, align 4
  %207 = load float*, float** %7, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %207, i64 %209
  store float %206, float* %210, align 4
  br label %211

211:                                              ; preds = %201
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  br label %197

214:                                              ; preds = %195, %197
  ret void
}

declare dso_local i32 @dradf4(i32, i32, float*, float*, float*, float*, float*) #1

declare dso_local i32 @dradf2(i32, i32, float*, float*, float*) #1

declare dso_local i32 @dradfg(i32, i32, i32, i32, float*, float*, float*, float*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
