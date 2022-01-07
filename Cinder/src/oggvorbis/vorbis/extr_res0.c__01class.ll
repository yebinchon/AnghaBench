; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_res0.c__01class.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_res0.c__01class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64** (i32*, i32*, i32**, i32)* @_01class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64** @_01class(i32* %0, i32* %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64**, align 8
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %12, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %13, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %14, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %17, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = call i8* @_vorbis_block_alloc(i32* %46, i32 %50)
  %52 = bitcast i8* %51 to i64**
  store i64** %52, i64*** %18, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sitofp i32 %53 to double
  %55 = fdiv double 1.000000e+02, %54
  %56 = fptrunc double %55 to float
  store float %56, float* %19, align 4
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %86, %4
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sdiv i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 8
  %69 = trunc i64 %68 to i32
  %70 = call i8* @_vorbis_block_alloc(i32* %63, i32 %69)
  %71 = bitcast i8* %70 to i64*
  %72 = load i64**, i64*** %18, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i64*, i64** %72, i64 %73
  store i64* %71, i64** %74, align 8
  %75 = load i64**, i64*** %18, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i64*, i64** %75, i64 %76
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sdiv i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memset(i64* %78, i32 0, i32 %84)
  br label %86

86:                                               ; preds = %62
  %87 = load i64, i64* %9, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %9, align 8
  br label %57

89:                                               ; preds = %57
  store i64 0, i64* %9, align 8
  br label %90

90:                                               ; preds = %214, %89
  %91 = load i64, i64* %9, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %217

95:                                               ; preds = %90
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %96, %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %99, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %20, align 4
  store i64 0, i64* %10, align 8
  br label %105

105:                                              ; preds = %210, %95
  %106 = load i64, i64* %10, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %110, label %213

110:                                              ; preds = %105
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i64 0, i64* %11, align 8
  br label %111

111:                                              ; preds = %156, %110
  %112 = load i64, i64* %11, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %112, %114
  br i1 %115, label %116, label %159

116:                                              ; preds = %111
  %117 = load i32**, i32*** %7, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds i32*, i32** %117, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %20, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %11, align 8
  %124 = add nsw i64 %122, %123
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @abs(i32 %126) #3
  %128 = load i32, i32* %21, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %116
  %131 = load i32**, i32*** %7, align 8
  %132 = load i64, i64* %10, align 8
  %133 = getelementptr inbounds i32*, i32** %131, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %11, align 8
  %138 = add nsw i64 %136, %137
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @abs(i32 %140) #3
  store i32 %141, i32* %21, align 4
  br label %142

142:                                              ; preds = %130, %116
  %143 = load i32**, i32*** %7, align 8
  %144 = load i64, i64* %10, align 8
  %145 = getelementptr inbounds i32*, i32** %143, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %11, align 8
  %150 = add nsw i64 %148, %149
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @abs(i32 %152) #3
  %154 = load i32, i32* %22, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %22, align 4
  br label %156

156:                                              ; preds = %142
  %157 = load i64, i64* %11, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %11, align 8
  br label %111

159:                                              ; preds = %111
  %160 = load float, float* %19, align 4
  %161 = load i32, i32* %22, align 4
  %162 = sitofp i32 %161 to float
  %163 = fmul float %162, %160
  %164 = fptosi float %163 to i32
  store i32 %164, i32* %22, align 4
  store i64 0, i64* %11, align 8
  br label %165

165:                                              ; preds = %199, %159
  %166 = load i64, i64* %11, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = icmp slt i64 %166, %169
  br i1 %170, label %171, label %202

171:                                              ; preds = %165
  %172 = load i32, i32* %21, align 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %11, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp sle i32 %172, %178
  br i1 %179, label %180, label %198

180:                                              ; preds = %171
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* %11, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %197, label %188

188:                                              ; preds = %180
  %189 = load i32, i32* %22, align 4
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 5
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* %11, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %189, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %188, %180
  br label %202

198:                                              ; preds = %188, %171
  br label %199

199:                                              ; preds = %198
  %200 = load i64, i64* %11, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %11, align 8
  br label %165

202:                                              ; preds = %197, %165
  %203 = load i64, i64* %11, align 8
  %204 = load i64**, i64*** %18, align 8
  %205 = load i64, i64* %10, align 8
  %206 = getelementptr inbounds i64*, i64** %204, i64 %205
  %207 = load i64*, i64** %206, align 8
  %208 = load i64, i64* %9, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  store i64 %203, i64* %209, align 8
  br label %210

210:                                              ; preds = %202
  %211 = load i64, i64* %10, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %10, align 8
  br label %105

213:                                              ; preds = %105
  br label %214

214:                                              ; preds = %213
  %215 = load i64, i64* %9, align 8
  %216 = add nsw i64 %215, 1
  store i64 %216, i64* %9, align 8
  br label %90

217:                                              ; preds = %90
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  %222 = load i64**, i64*** %18, align 8
  ret i64** %222
}

declare dso_local i8* @_vorbis_block_alloc(i32*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
