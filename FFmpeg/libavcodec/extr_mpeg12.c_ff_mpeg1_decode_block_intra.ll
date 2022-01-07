; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12.c_ff_mpeg1_decode_block_intra.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12.c_ff_mpeg1_decode_block_intra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@ff_rl_mpeg1 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@re = common dso_local global i32 0, align 4
@TEX_VLC_BITS = common dso_local global i32 0, align 4
@MAX_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mpeg1_decode_block_intra(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_3__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store %struct.TYPE_3__* @ff_rl_mpeg1, %struct.TYPE_3__** %20, align 8
  %24 = load i32, i32* %14, align 4
  %25 = icmp sle i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  br label %31

27:                                               ; preds = %7
  %28 = load i32, i32* %14, align 4
  %29 = sub nsw i32 %28, 4
  %30 = add nsw i32 %29, 1
  br label %31

31:                                               ; preds = %27, %26
  %32 = phi i32 [ 0, %26 ], [ %30, %27 ]
  store i32 %32, i32* %19, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %19, align 4
  %35 = call i32 @decode_dc(i32* %33, i32 %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp sge i32 %36, 65535
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %39, i32* %8, align 4
  br label %243

40:                                               ; preds = %31
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %19, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %16, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %19, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = load i32*, i32** %13, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @re, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @OPEN_READER(i32 %61, i32* %62)
  %64 = load i32, i32* @re, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @UPDATE_CACHE(i32 %64, i32* %65)
  %67 = load i32, i32* @re, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = call i64 @GET_CACHE(i32 %67, i32* %68)
  %70 = icmp sle i64 %69, 3221225471
  br i1 %70, label %71, label %72

71:                                               ; preds = %40
  br label %229

72:                                               ; preds = %40
  br label %73

73:                                               ; preds = %72, %224
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* @re, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TEX_VLC_BITS, align 4
  %84 = call i32 @GET_RL_VLC(i32 %74, i32 %75, i32 %76, i32* %77, i32 %82, i32 %83, i32 2, i32 0)
  %85 = load i32, i32* %21, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %126

87:                                               ; preds = %73
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* @MAX_INDEX, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %228

95:                                               ; preds = %87
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %23, align 4
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* %15, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %23, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %103, %108
  %110 = ashr i32 %109, 4
  store i32 %110, i32* %21, align 4
  %111 = load i32, i32* %21, align 4
  %112 = sub nsw i32 %111, 1
  %113 = or i32 %112, 1
  store i32 %113, i32* %21, align 4
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* @re, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @SHOW_SBITS(i32 %115, i32* %116, i32 1)
  %118 = xor i32 %114, %117
  %119 = load i32, i32* @re, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @SHOW_SBITS(i32 %119, i32* %120, i32 1)
  %122 = sub nsw i32 %118, %121
  store i32 %122, i32* %21, align 4
  %123 = load i32, i32* @re, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @SKIP_BITS(i32 %123, i32* %124, i32 1)
  br label %213

126:                                              ; preds = %73
  %127 = load i32, i32* @re, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @SHOW_UBITS(i32 %127, i32* %128, i32 6)
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %22, align 4
  %131 = load i32, i32* @re, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @LAST_SKIP_BITS(i32 %131, i32* %132, i32 6)
  %134 = load i32, i32* @re, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @UPDATE_CACHE(i32 %134, i32* %135)
  %137 = load i32, i32* @re, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = call i32 @SHOW_SBITS(i32 %137, i32* %138, i32 8)
  store i32 %139, i32* %21, align 4
  %140 = load i32, i32* @re, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @SKIP_BITS(i32 %140, i32* %141, i32 8)
  %143 = load i32, i32* %21, align 4
  %144 = icmp eq i32 %143, -128
  br i1 %144, label %145, label %153

145:                                              ; preds = %126
  %146 = load i32, i32* @re, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @SHOW_UBITS(i32 %146, i32* %147, i32 8)
  %149 = sub nsw i32 %148, 256
  store i32 %149, i32* %21, align 4
  %150 = load i32, i32* @re, align 4
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @SKIP_BITS(i32 %150, i32* %151, i32 8)
  br label %164

153:                                              ; preds = %126
  %154 = load i32, i32* %21, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load i32, i32* @re, align 4
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @SHOW_UBITS(i32 %157, i32* %158, i32 8)
  store i32 %159, i32* %21, align 4
  %160 = load i32, i32* @re, align 4
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @SKIP_BITS(i32 %160, i32* %161, i32 8)
  br label %163

163:                                              ; preds = %156, %153
  br label %164

164:                                              ; preds = %163, %145
  %165 = load i32, i32* %22, align 4
  %166 = load i32, i32* %18, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* @MAX_INDEX, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %228

172:                                              ; preds = %164
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %23, align 4
  %178 = load i32, i32* %21, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %198

180:                                              ; preds = %172
  %181 = load i32, i32* %21, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %21, align 4
  %183 = load i32, i32* %21, align 4
  %184 = load i32, i32* %15, align 4
  %185 = mul nsw i32 %183, %184
  %186 = load i32*, i32** %10, align 8
  %187 = load i32, i32* %23, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 %185, %190
  %192 = ashr i32 %191, 4
  store i32 %192, i32* %21, align 4
  %193 = load i32, i32* %21, align 4
  %194 = sub nsw i32 %193, 1
  %195 = or i32 %194, 1
  store i32 %195, i32* %21, align 4
  %196 = load i32, i32* %21, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %21, align 4
  br label %212

198:                                              ; preds = %172
  %199 = load i32, i32* %21, align 4
  %200 = load i32, i32* %15, align 4
  %201 = mul nsw i32 %199, %200
  %202 = load i32*, i32** %10, align 8
  %203 = load i32, i32* %23, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %201, %206
  %208 = ashr i32 %207, 4
  store i32 %208, i32* %21, align 4
  %209 = load i32, i32* %21, align 4
  %210 = sub nsw i32 %209, 1
  %211 = or i32 %210, 1
  store i32 %211, i32* %21, align 4
  br label %212

212:                                              ; preds = %198, %180
  br label %213

213:                                              ; preds = %212, %95
  %214 = load i32, i32* %21, align 4
  %215 = load i32*, i32** %13, align 8
  %216 = load i32, i32* %23, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %214, i32* %218, align 4
  %219 = load i32, i32* @re, align 4
  %220 = load i32*, i32** %9, align 8
  %221 = call i64 @GET_CACHE(i32 %219, i32* %220)
  %222 = icmp sle i64 %221, 3221225471
  br i1 %222, label %223, label %224

223:                                              ; preds = %213
  br label %228

224:                                              ; preds = %213
  %225 = load i32, i32* @re, align 4
  %226 = load i32*, i32** %9, align 8
  %227 = call i32 @UPDATE_CACHE(i32 %225, i32* %226)
  br label %73

228:                                              ; preds = %223, %171, %94
  br label %229

229:                                              ; preds = %228, %71
  %230 = load i32, i32* @re, align 4
  %231 = load i32*, i32** %9, align 8
  %232 = call i32 @LAST_SKIP_BITS(i32 %230, i32* %231, i32 2)
  %233 = load i32, i32* @re, align 4
  %234 = load i32*, i32** %9, align 8
  %235 = call i32 @CLOSE_READER(i32 %233, i32* %234)
  %236 = load i32, i32* %18, align 4
  %237 = load i32, i32* @MAX_INDEX, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %229
  %240 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %240, i32* %18, align 4
  br label %241

241:                                              ; preds = %239, %229
  %242 = load i32, i32* %18, align 4
  store i32 %242, i32* %8, align 4
  br label %243

243:                                              ; preds = %241, %38
  %244 = load i32, i32* %8, align 4
  ret i32 %244
}

declare dso_local i32 @decode_dc(i32*, i32) #1

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i64 @GET_CACHE(i32, i32*) #1

declare dso_local i32 @GET_RL_VLC(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @SHOW_SBITS(i32, i32*, i32) #1

declare dso_local i32 @SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @SHOW_UBITS(i32, i32*, i32) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
