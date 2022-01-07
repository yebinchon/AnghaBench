; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_videogen.c_gen_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_videogen.c_gen_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@NB_OBJS = common dso_local global i32 0, align 4
@seed = common dso_local global i32 0, align 4
@objs = common dso_local global %struct.TYPE_3__* null, align 8
@FRAC_ONE = common dso_local global i32 0, align 4
@FRAC_BITS = common dso_local global i32 0, align 4
@NOISE_W = common dso_local global i32 0, align 4
@NOISE_X = common dso_local global i32 0, align 4
@NOISE_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @gen_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_image(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %81

21:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %77, %21
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @NB_OBJS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @myrnd(i32* @seed, i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @objs, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @myrnd(i32* @seed, i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @objs, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %35, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sdiv i32 %41, 4
  %43 = call i32 @myrnd(i32* @seed, i32 %42)
  %44 = add nsw i32 %43, 10
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @objs, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sdiv i32 %50, 4
  %52 = call i32 @myrnd(i32* @seed, i32 %51)
  %53 = add nsw i32 %52, 10
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @objs, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  store i32 %53, i32* %58, align 4
  %59 = call i32 @myrnd(i32* @seed, i32 256)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @objs, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  store i32 %59, i32* %64, align 4
  %65 = call i32 @myrnd(i32* @seed, i32 256)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @objs, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  store i32 %65, i32* %70, align 4
  %71 = call i32 @myrnd(i32* @seed, i32 256)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @objs, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 6
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %26
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %22

80:                                               ; preds = %22
  br label %81

81:                                               ; preds = %80, %3
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @FRAC_ONE, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sdiv i32 %84, 50
  %86 = call i32 @int_cos(i32 %85)
  %87 = mul nsw i32 %86, 35
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @FRAC_ONE, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sdiv i32 %90, 50
  %92 = load i32, i32* @FRAC_ONE, align 4
  %93 = sdiv i32 %92, 10
  %94 = add nsw i32 %91, %93
  %95 = call i32 @int_cos(i32 %94)
  %96 = mul nsw i32 %95, 30
  store i32 %96, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %144, %81
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %147

101:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %140, %101
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %143

106:                                              ; preds = %102
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @FRAC_BITS, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @FRAC_BITS, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = mul nsw i32 %117, 7
  %119 = load i32, i32* @FRAC_BITS, align 4
  %120 = ashr i32 %118, %119
  %121 = and i32 %120, 255
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %122, %123
  %125 = mul nsw i32 %124, 9
  %126 = load i32, i32* @FRAC_BITS, align 4
  %127 = ashr i32 %125, %126
  %128 = and i32 %127, 255
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %15, align 4
  %130 = mul nsw i32 %129, 5
  %131 = load i32, i32* @FRAC_BITS, align 4
  %132 = ashr i32 %130, %131
  %133 = and i32 %132, 255
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @put_pixel(i32 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %106
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %102

143:                                              ; preds = %102
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %97

147:                                              ; preds = %97
  %148 = load i32, i32* %4, align 4
  store i32 %148, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %149

149:                                              ; preds = %176, %147
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @NOISE_W, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %179

153:                                              ; preds = %149
  store i32 0, i32* %10, align 4
  br label %154

154:                                              ; preds = %172, %153
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @NOISE_W, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %175

158:                                              ; preds = %154
  %159 = call i32 @myrnd(i32* %17, i32 256)
  store i32 %159, i32* %7, align 4
  %160 = call i32 @myrnd(i32* %17, i32 256)
  store i32 %160, i32* %8, align 4
  %161 = call i32 @myrnd(i32* %17, i32 256)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @NOISE_X, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @NOISE_Y, align 4
  %167 = add nsw i32 %165, %166
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @put_pixel(i32 %164, i32 %167, i32 %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %158
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %154

175:                                              ; preds = %154
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %149

179:                                              ; preds = %149
  store i32 0, i32* %12, align 4
  br label %180

180:                                              ; preds = %256, %179
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @NB_OBJS, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %259

184:                                              ; preds = %180
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** @objs, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 %187
  store %struct.TYPE_3__* %188, %struct.TYPE_3__** %18, align 8
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %190

190:                                              ; preds = %240, %184
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %243

196:                                              ; preds = %190
  store i32 0, i32* %10, align 4
  br label %197

197:                                              ; preds = %236, %196
  %198 = load i32, i32* %10, align 4
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %239

203:                                              ; preds = %197
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %7, align 4
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %8, align 4
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %9, align 4
  %213 = call i32 @myrnd(i32* %17, i32 50)
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %7, align 4
  %216 = call i32 @myrnd(i32* %17, i32 50)
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* %8, align 4
  %219 = call i32 @myrnd(i32* %17, i32 50)
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %9, align 4
  %222 = load i32, i32* %10, align 4
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %222, %225
  %227 = load i32, i32* %11, align 4
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %227, %230
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @put_pixel(i32 %226, i32 %231, i32 %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %203
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %10, align 4
  br label %197

239:                                              ; preds = %197
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %11, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %11, align 4
  br label %190

243:                                              ; preds = %190
  %244 = call i32 @myrnd(i32* @seed, i32 21)
  %245 = sub nsw i32 %244, 10
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, %245
  store i32 %249, i32* %247, align 4
  %250 = call i32 @myrnd(i32* @seed, i32 21)
  %251 = sub nsw i32 %250, 10
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %243
  %257 = load i32, i32* %12, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %12, align 4
  br label %180

259:                                              ; preds = %180
  ret void
}

declare dso_local i32 @myrnd(i32*, i32) #1

declare dso_local i32 @int_cos(i32) #1

declare dso_local i32 @put_pixel(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
