; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_texstore.c__mesa_upscale_teximage2d.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_texstore.c__mesa_upscale_teximage2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_mesa_upscale_teximage2d(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
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
  %27 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp uge i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp uge i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  store i32 0, i32* %17, align 4
  br label %38

38:                                               ; preds = %135, %8
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %138

42:                                               ; preds = %38
  store i32 0, i32* %18, align 4
  br label %43

43:                                               ; preds = %84, %42
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %11, align 4
  %50 = mul i32 %48, %49
  %51 = load i32, i32* %18, align 4
  %52 = add i32 %50, %51
  %53 = load i32, i32* %13, align 4
  %54 = mul i32 %52, %53
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %15, align 4
  %57 = mul i32 %55, %56
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %13, align 4
  %60 = mul i32 %58, %59
  %61 = add i32 %57, %60
  store i32 %61, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %62

62:                                               ; preds = %80, %47
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %19, align 4
  %70 = add i32 %68, %69
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %19, align 4
  %77 = add i32 %75, %76
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %19, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %19, align 4
  br label %62

83:                                               ; preds = %62
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %18, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %18, align 4
  br label %43

87:                                               ; preds = %43
  br label %88

88:                                               ; preds = %131, %87
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %134

92:                                               ; preds = %88
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul i32 %93, %94
  %96 = load i32, i32* %18, align 4
  %97 = add i32 %95, %96
  %98 = load i32, i32* %13, align 4
  %99 = mul i32 %97, %98
  store i32 %99, i32* %22, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %15, align 4
  %102 = mul i32 %100, %101
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sub i32 %103, %104
  %106 = load i32, i32* %13, align 4
  %107 = mul i32 %105, %106
  %108 = add i32 %102, %107
  store i32 %108, i32* %23, align 4
  store i32 0, i32* %19, align 4
  br label %109

109:                                              ; preds = %127, %92
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* %19, align 4
  %117 = add i32 %115, %116
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %16, align 8
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* %19, align 4
  %124 = add i32 %122, %123
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  store i32 %120, i32* %126, align 4
  br label %127

127:                                              ; preds = %113
  %128 = load i32, i32* %19, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %19, align 4
  br label %109

130:                                              ; preds = %109
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %18, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %18, align 4
  br label %88

134:                                              ; preds = %88
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %17, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %17, align 4
  br label %38

138:                                              ; preds = %38
  br label %139

139:                                              ; preds = %240, %138
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %243

143:                                              ; preds = %139
  store i32 0, i32* %18, align 4
  br label %144

144:                                              ; preds = %187, %143
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %190

148:                                              ; preds = %144
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %11, align 4
  %151 = mul i32 %149, %150
  %152 = load i32, i32* %18, align 4
  %153 = add i32 %151, %152
  %154 = load i32, i32* %13, align 4
  %155 = mul i32 %153, %154
  store i32 %155, i32* %24, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %10, align 4
  %158 = sub i32 %156, %157
  %159 = load i32, i32* %15, align 4
  %160 = mul i32 %158, %159
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* %13, align 4
  %163 = mul i32 %161, %162
  %164 = add i32 %160, %163
  store i32 %164, i32* %25, align 4
  store i32 0, i32* %19, align 4
  br label %165

165:                                              ; preds = %183, %148
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %165
  %170 = load i32*, i32** %14, align 8
  %171 = load i32, i32* %25, align 4
  %172 = load i32, i32* %19, align 4
  %173 = add i32 %171, %172
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %16, align 8
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* %19, align 4
  %180 = add i32 %178, %179
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %177, i64 %181
  store i32 %176, i32* %182, align 4
  br label %183

183:                                              ; preds = %169
  %184 = load i32, i32* %19, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %19, align 4
  br label %165

186:                                              ; preds = %165
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %18, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %18, align 4
  br label %144

190:                                              ; preds = %144
  br label %191

191:                                              ; preds = %236, %190
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp ult i32 %192, %193
  br i1 %194, label %195, label %239

195:                                              ; preds = %191
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %11, align 4
  %198 = mul i32 %196, %197
  %199 = load i32, i32* %18, align 4
  %200 = add i32 %198, %199
  %201 = load i32, i32* %13, align 4
  %202 = mul i32 %200, %201
  store i32 %202, i32* %26, align 4
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %10, align 4
  %205 = sub i32 %203, %204
  %206 = load i32, i32* %15, align 4
  %207 = mul i32 %205, %206
  %208 = load i32, i32* %18, align 4
  %209 = load i32, i32* %9, align 4
  %210 = sub i32 %208, %209
  %211 = load i32, i32* %13, align 4
  %212 = mul i32 %210, %211
  %213 = add i32 %207, %212
  store i32 %213, i32* %27, align 4
  store i32 0, i32* %19, align 4
  br label %214

214:                                              ; preds = %232, %195
  %215 = load i32, i32* %19, align 4
  %216 = load i32, i32* %13, align 4
  %217 = icmp ult i32 %215, %216
  br i1 %217, label %218, label %235

218:                                              ; preds = %214
  %219 = load i32*, i32** %14, align 8
  %220 = load i32, i32* %27, align 4
  %221 = load i32, i32* %19, align 4
  %222 = add i32 %220, %221
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %219, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %16, align 8
  %227 = load i32, i32* %26, align 4
  %228 = load i32, i32* %19, align 4
  %229 = add i32 %227, %228
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %226, i64 %230
  store i32 %225, i32* %231, align 4
  br label %232

232:                                              ; preds = %218
  %233 = load i32, i32* %19, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %19, align 4
  br label %214

235:                                              ; preds = %214
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %18, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %18, align 4
  br label %191

239:                                              ; preds = %191
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %17, align 4
  %242 = add i32 %241, 1
  store i32 %242, i32* %17, align 4
  br label %139

243:                                              ; preds = %139
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
