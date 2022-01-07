; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pixlet.c_read_low_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pixlet.c_read_low_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32, i32)* @read_low_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_low_coeffs(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
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
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %12, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* %28, i32** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 3, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %29

29:                                               ; preds = %207, %124, %5
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %212

33:                                               ; preds = %29
  %34 = load i32, i32* %20, align 4
  %35 = ashr i32 %34, 8
  %36 = add nsw i32 %35, 3
  %37 = call i32 @ff_clz(i32 %36)
  %38 = xor i32 %37, 31
  %39 = call i32 @FFMIN(i32 %38, i32 14)
  store i32 %39, i32* %15, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @get_unary(i32* %40, i32 0, i32 8)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ult i32 %42, 8
  br i1 %43, label %44, label %73

44:                                               ; preds = %33
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @show_bits(i32* %45, i32 %46)
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp sle i32 %48, 1
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sub i32 %52, 1
  %54 = call i32 @skip_bits(i32* %51, i32 %53)
  %55 = load i32, i32* %15, align 4
  %56 = shl i32 1, %55
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* %14, align 4
  %59 = mul i32 %57, %58
  store i32 %59, i32* %22, align 4
  br label %72

60:                                               ; preds = %44
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @skip_bits(i32* %61, i32 %62)
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %15, align 4
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %14, align 4
  %69 = mul i32 %67, %68
  %70 = add i32 %64, %69
  %71 = sub i32 %70, 1
  store i32 %71, i32* %22, align 4
  br label %72

72:                                               ; preds = %60, %50
  br label %76

73:                                               ; preds = %33
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @get_bits(i32* %74, i32 16)
  store i32 %75, i32* %22, align 4
  br label %76

76:                                               ; preds = %73, %72
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %23, align 4
  %79 = add nsw i32 %77, %78
  %80 = and i32 %79, 1
  %81 = sub nsw i32 0, %80
  %82 = or i32 %81, 1
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* %23, align 4
  %86 = add nsw i32 %84, %85
  %87 = add nsw i32 %86, 1
  %88 = ashr i32 %87, 1
  %89 = mul nsw i32 %83, %88
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %17, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %17, align 4
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  %95 = load i32, i32* %18, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %76
  store i32 0, i32* %17, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %8, align 8
  br label %105

105:                                              ; preds = %100, %76
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %23, align 4
  %108 = add nsw i32 %106, %107
  %109 = mul nsw i32 120, %108
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %20, align 4
  %113 = mul nsw i32 120, %112
  %114 = ashr i32 %113, 8
  %115 = sub nsw i32 %111, %114
  store i32 %115, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %116 = load i32, i32* %20, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = icmp ugt i64 %118, 255
  br i1 %119, label %124, label %120

120:                                              ; preds = %105
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp uge i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %105
  br label %29

125:                                              ; preds = %120
  %126 = load i32, i32* %20, align 4
  %127 = add nsw i32 %126, 8
  %128 = ashr i32 %127, 5
  %129 = load i32, i32* %20, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* %20, align 4
  %133 = call i32 @ff_clz(i32 %132)
  br label %135

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %131
  %136 = phi i32 [ %133, %131 ], [ 32, %134 ]
  %137 = add nsw i32 %128, %136
  %138 = sub nsw i32 %137, 24
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @av_mod_uintp2(i32 16383, i32 %139)
  store i32 %140, i32* %22, align 4
  %141 = load i32*, i32** %13, align 8
  %142 = call i32 @get_unary(i32* %141, i32 0, i32 8)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp ugt i32 %143, 7
  br i1 %144, label %145, label %148

145:                                              ; preds = %135
  %146 = load i32*, i32** %13, align 8
  %147 = call i32 @get_bits(i32* %146, i32 16)
  store i32 %147, i32* %21, align 4
  br label %173

148:                                              ; preds = %135
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @show_bits(i32* %149, i32 %150)
  store i32 %151, i32* %19, align 4
  %152 = load i32, i32* %19, align 4
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %154, label %164

154:                                              ; preds = %148
  %155 = load i32*, i32** %13, align 8
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @skip_bits(i32* %155, i32 %156)
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %14, align 4
  %161 = mul i32 %159, %160
  %162 = add i32 %158, %161
  %163 = sub i32 %162, 1
  store i32 %163, i32* %21, align 4
  br label %172

164:                                              ; preds = %148
  %165 = load i32*, i32** %13, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sub i32 %166, 1
  %168 = call i32 @skip_bits(i32* %165, i32 %167)
  %169 = load i32, i32* %22, align 4
  %170 = load i32, i32* %14, align 4
  %171 = mul i32 %169, %170
  store i32 %171, i32* %21, align 4
  br label %172

172:                                              ; preds = %164, %154
  br label %173

173:                                              ; preds = %172, %145
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %18, align 4
  %177 = sub i32 %175, %176
  %178 = icmp ugt i32 %174, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %180, i32* %6, align 4
  br label %218

181:                                              ; preds = %173
  %182 = load i32, i32* %21, align 4
  %183 = load i32, i32* %18, align 4
  %184 = add i32 %183, %182
  store i32 %184, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %185

185:                                              ; preds = %204, %181
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %21, align 4
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %189, label %207

189:                                              ; preds = %185
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %17, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %17, align 4
  %193 = zext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 0, i32* %194, align 4
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %189
  store i32 0, i32* %17, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32*, i32** %8, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32* %202, i32** %8, align 8
  br label %203

203:                                              ; preds = %198, %189
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %16, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %16, align 4
  br label %185

207:                                              ; preds = %185
  store i32 0, i32* %20, align 4
  %208 = load i32, i32* %21, align 4
  %209 = icmp slt i32 %208, 65535
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 1, i32 0
  store i32 %211, i32* %23, align 4
  br label %29

212:                                              ; preds = %29
  %213 = load i32*, i32** %13, align 8
  %214 = call i32 @align_get_bits(i32* %213)
  %215 = load i32*, i32** %13, align 8
  %216 = call i32 @get_bits_count(i32* %215)
  %217 = ashr i32 %216, 3
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %212, %179
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_clz(i32) #1

declare dso_local i32 @get_unary(i32*, i32, i32) #1

declare dso_local i32 @show_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_mod_uintp2(i32, i32) #1

declare dso_local i32 @align_get_bits(i32*) #1

declare dso_local i32 @get_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
