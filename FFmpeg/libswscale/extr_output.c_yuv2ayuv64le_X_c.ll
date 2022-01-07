; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2ayuv64le_X_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2ayuv64le_X_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64**, i32, i64*, i64**, i64**, i32, i64**, i32*, i32, i32)* @yuv2ayuv64le_X_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yuv2ayuv64le_X_c(i32* %0, i64* %1, i64** %2, i32 %3, i64* %4, i64** %5, i64** %6, i32 %7, i64** %8, i32* %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64**, align 8
  %19 = alloca i64**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64**, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32**, align 8
  %26 = alloca i32**, align 8
  %27 = alloca i32**, align 8
  %28 = alloca i32**, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i64* %1, i64** %14, align 8
  store i64** %2, i64*** %15, align 8
  store i32 %3, i32* %16, align 4
  store i64* %4, i64** %17, align 8
  store i64** %5, i64*** %18, align 8
  store i64** %6, i64*** %19, align 8
  store i32 %7, i32* %20, align 4
  store i64** %8, i64*** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %36 = load i64**, i64*** %15, align 8
  %37 = bitcast i64** %36 to i32**
  store i32** %37, i32*** %25, align 8
  %38 = load i64**, i64*** %18, align 8
  %39 = bitcast i64** %38 to i32**
  store i32** %39, i32*** %26, align 8
  %40 = load i64**, i64*** %19, align 8
  %41 = bitcast i64** %40 to i32**
  store i32** %41, i32*** %27, align 8
  %42 = load i64**, i64*** %21, align 8
  %43 = bitcast i64** %42 to i32**
  store i32** %43, i32*** %28, align 8
  %44 = load i32**, i32*** %28, align 8
  %45 = icmp ne i32** %44, null
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %29, align 4
  store i32 0, i32* %30, align 4
  br label %49

49:                                               ; preds = %227, %12
  %50 = load i32, i32* %30, align 4
  %51 = load i32, i32* %23, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %230

53:                                               ; preds = %49
  store i32 16384, i32* %31, align 4
  store i32 16384, i32* %32, align 4
  store i32 16384, i32* %33, align 4
  store i32 16384, i32* %34, align 4
  %54 = load i32, i32* %31, align 4
  %55 = sub nsw i32 %54, 1073741824
  store i32 %55, i32* %31, align 4
  %56 = load i32, i32* %32, align 4
  %57 = sub nsw i32 %56, 1073741824
  store i32 %57, i32* %32, align 4
  %58 = load i32, i32* %33, align 4
  %59 = sub nsw i32 %58, 1073741824
  store i32 %59, i32* %33, align 4
  %60 = load i32, i32* %34, align 4
  %61 = sub nsw i32 %60, 1073741824
  store i32 %61, i32* %34, align 4
  store i32 0, i32* %35, align 4
  br label %62

62:                                               ; preds = %85, %53
  %63 = load i32, i32* %35, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %62
  %67 = load i32**, i32*** %25, align 8
  %68 = load i32, i32* %35, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %30, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i64*, i64** %14, align 8
  %77 = load i32, i32* %35, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = mul i32 %75, %81
  %83 = load i32, i32* %31, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %31, align 4
  br label %85

85:                                               ; preds = %66
  %86 = load i32, i32* %35, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %35, align 4
  br label %62

88:                                               ; preds = %62
  store i32 0, i32* %35, align 4
  br label %89

89:                                               ; preds = %112, %88
  %90 = load i32, i32* %35, align 4
  %91 = load i32, i32* %20, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %115

93:                                               ; preds = %89
  %94 = load i32**, i32*** %26, align 8
  %95 = load i32, i32* %35, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %30, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i64*, i64** %17, align 8
  %104 = load i32, i32* %35, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = mul i32 %102, %108
  %110 = load i32, i32* %32, align 4
  %111 = add i32 %110, %109
  store i32 %111, i32* %32, align 4
  br label %112

112:                                              ; preds = %93
  %113 = load i32, i32* %35, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %35, align 4
  br label %89

115:                                              ; preds = %89
  store i32 0, i32* %35, align 4
  br label %116

116:                                              ; preds = %139, %115
  %117 = load i32, i32* %35, align 4
  %118 = load i32, i32* %20, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %116
  %121 = load i32**, i32*** %27, align 8
  %122 = load i32, i32* %35, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %30, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i64*, i64** %17, align 8
  %131 = load i32, i32* %35, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = mul i32 %129, %135
  %137 = load i32, i32* %33, align 4
  %138 = add i32 %137, %136
  store i32 %138, i32* %33, align 4
  br label %139

139:                                              ; preds = %120
  %140 = load i32, i32* %35, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %35, align 4
  br label %116

142:                                              ; preds = %116
  %143 = load i32, i32* %29, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %173

145:                                              ; preds = %142
  store i32 0, i32* %35, align 4
  br label %146

146:                                              ; preds = %169, %145
  %147 = load i32, i32* %35, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %172

150:                                              ; preds = %146
  %151 = load i32**, i32*** %28, align 8
  %152 = load i32, i32* %35, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %30, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i64*, i64** %14, align 8
  %161 = load i32, i32* %35, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = mul i32 %159, %165
  %167 = load i32, i32* %34, align 4
  %168 = add i32 %167, %166
  store i32 %168, i32* %34, align 4
  br label %169

169:                                              ; preds = %150
  %170 = load i32, i32* %35, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %35, align 4
  br label %146

172:                                              ; preds = %146
  br label %173

173:                                              ; preds = %172, %142
  %174 = load i32, i32* %31, align 4
  %175 = ashr i32 %174, 15
  %176 = call i32 @av_clip_int16(i32 %175)
  %177 = add nsw i32 32768, %176
  store i32 %177, i32* %31, align 4
  %178 = load i32, i32* %32, align 4
  %179 = ashr i32 %178, 15
  %180 = call i32 @av_clip_int16(i32 %179)
  %181 = add nsw i32 32768, %180
  store i32 %181, i32* %32, align 4
  %182 = load i32, i32* %33, align 4
  %183 = ashr i32 %182, 15
  %184 = call i32 @av_clip_int16(i32 %183)
  %185 = add nsw i32 32768, %184
  store i32 %185, i32* %33, align 4
  %186 = load i32, i32* %34, align 4
  %187 = ashr i32 %186, 15
  %188 = call i32 @av_clip_int16(i32 %187)
  %189 = add nsw i32 32768, %188
  store i32 %189, i32* %34, align 4
  %190 = load i32*, i32** %22, align 8
  %191 = load i32, i32* %30, align 4
  %192 = mul nsw i32 8, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %29, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %173
  %198 = load i32, i32* %34, align 4
  br label %200

199:                                              ; preds = %173
  br label %200

200:                                              ; preds = %199, %197
  %201 = phi i32 [ %198, %197 ], [ 65535, %199 ]
  %202 = call i32 @AV_WL16(i32* %194, i32 %201)
  %203 = load i32*, i32** %22, align 8
  %204 = load i32, i32* %30, align 4
  %205 = mul nsw i32 8, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  %208 = getelementptr inbounds i32, i32* %207, i64 2
  %209 = load i32, i32* %31, align 4
  %210 = call i32 @AV_WL16(i32* %208, i32 %209)
  %211 = load i32*, i32** %22, align 8
  %212 = load i32, i32* %30, align 4
  %213 = mul nsw i32 8, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  %216 = getelementptr inbounds i32, i32* %215, i64 4
  %217 = load i32, i32* %32, align 4
  %218 = call i32 @AV_WL16(i32* %216, i32 %217)
  %219 = load i32*, i32** %22, align 8
  %220 = load i32, i32* %30, align 4
  %221 = mul nsw i32 8, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = getelementptr inbounds i32, i32* %223, i64 6
  %225 = load i32, i32* %33, align 4
  %226 = call i32 @AV_WL16(i32* %224, i32 %225)
  br label %227

227:                                              ; preds = %200
  %228 = load i32, i32* %30, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %30, align 4
  br label %49

230:                                              ; preds = %49
  ret void
}

declare dso_local i32 @av_clip_int16(i32) #1

declare dso_local i32 @AV_WL16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
