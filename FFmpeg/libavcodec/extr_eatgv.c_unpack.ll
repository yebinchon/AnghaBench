; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgv.c_unpack.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgv.c_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32)* @unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %9, align 8
  store i32* %25, i32** %18, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  store i32* %33, i32** %7, align 8
  br label %37

34:                                               ; preds = %5
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32* %36, i32** %7, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = icmp slt i64 %43, 3
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %6, align 4
  br label %236

47:                                               ; preds = %37
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @AV_RB24(i32* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32* %51, i32** %7, align 8
  br label %52

52:                                               ; preds = %234, %47
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ult i32* %56, %57
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i1 [ false, %52 ], [ %58, %55 ]
  br i1 %60, label %61, label %235

61:                                               ; preds = %59
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 3
  store i32 %65, i32* %14, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %141

71:                                               ; preds = %61
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 64
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %122

77:                                               ; preds = %71
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 252
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 31
  %93 = add nsw i32 %92, 1
  %94 = shl i32 %93, 2
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %88, %83
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %7, align 8
  store i32 0, i32* %15, align 4
  br label %121

98:                                               ; preds = %77
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 16
  %103 = shl i32 %102, 12
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = call i32 @AV_RB16(i32* %105)
  %107 = add nsw i32 %103, %106
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 12
  %113 = shl i32 %112, 6
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = add nsw i32 %117, 5
  store i32 %118, i32* %15, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  store i32* %120, i32** %7, align 8
  br label %121

121:                                              ; preds = %98, %95
  br label %140

122:                                              ; preds = %71
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 192
  %127 = ashr i32 %126, 6
  store i32 %127, i32* %14, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = call i32 @AV_RB16(i32* %129)
  %131 = and i32 %130, 16383
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %16, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 63
  %137 = add nsw i32 %136, 4
  store i32 %137, i32* %15, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  store i32* %139, i32** %7, align 8
  br label %140

140:                                              ; preds = %122, %121
  br label %160

141:                                              ; preds = %61
  %142 = load i32*, i32** %7, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 96
  %146 = shl i32 %145, 3
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %146, %149
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 28
  %156 = ashr i32 %155, 2
  %157 = add nsw i32 %156, 3
  store i32 %157, i32* %15, align 4
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  store i32* %159, i32** %7, align 8
  br label %160

160:                                              ; preds = %141, %140
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = load i32*, i32** %8, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = ptrtoint i32* %163 to i64
  %166 = ptrtoint i32* %164 to i64
  %167 = sub i64 %165, %166
  %168 = sdiv exact i64 %167, 4
  %169 = icmp sgt i64 %162, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  br label %235

171:                                              ; preds = %160
  %172 = load i32, i32* %14, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %199

174:                                              ; preds = %171
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %13, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %14, align 4
  %179 = load i32*, i32** %12, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = ptrtoint i32* %179 to i64
  %182 = ptrtoint i32* %180 to i64
  %183 = sub i64 %181, %182
  %184 = sdiv exact i64 %183, 4
  %185 = trunc i64 %184 to i32
  %186 = call i32 @FFMIN(i32 %178, i32 %185)
  store i32 %186, i32* %17, align 4
  %187 = load i32*, i32** %9, align 8
  %188 = load i32*, i32** %7, align 8
  %189 = load i32, i32* %17, align 4
  %190 = call i32 @memcpy(i32* %187, i32* %188, i32 %189)
  %191 = load i32, i32* %17, align 4
  %192 = load i32*, i32** %9, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %9, align 8
  %195 = load i32, i32* %17, align 4
  %196 = load i32*, i32** %7, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32* %198, i32** %7, align 8
  br label %199

199:                                              ; preds = %174, %171
  %200 = load i32, i32* %15, align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %234

202:                                              ; preds = %199
  %203 = load i32*, i32** %9, align 8
  %204 = load i32*, i32** %18, align 8
  %205 = ptrtoint i32* %203 to i64
  %206 = ptrtoint i32* %204 to i64
  %207 = sub i64 %205, %206
  %208 = sdiv exact i64 %207, 4
  %209 = load i32, i32* %16, align 4
  %210 = sext i32 %209 to i64
  %211 = icmp slt i64 %208, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %202
  store i32 0, i32* %6, align 4
  br label %236

213:                                              ; preds = %202
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* %13, align 4
  %216 = sub nsw i32 %215, %214
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %15, align 4
  %218 = load i32*, i32** %12, align 8
  %219 = load i32*, i32** %9, align 8
  %220 = ptrtoint i32* %218 to i64
  %221 = ptrtoint i32* %219 to i64
  %222 = sub i64 %220, %221
  %223 = sdiv exact i64 %222, 4
  %224 = trunc i64 %223 to i32
  %225 = call i32 @FFMIN(i32 %217, i32 %224)
  store i32 %225, i32* %17, align 4
  %226 = load i32*, i32** %9, align 8
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* %17, align 4
  %229 = call i32 @av_memcpy_backptr(i32* %226, i32 %227, i32 %228)
  %230 = load i32, i32* %17, align 4
  %231 = load i32*, i32** %9, align 8
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32* %233, i32** %9, align 8
  br label %234

234:                                              ; preds = %213, %199
  br label %52

235:                                              ; preds = %170, %59
  store i32 0, i32* %6, align 4
  br label %236

236:                                              ; preds = %235, %212, %45
  %237 = load i32, i32* %6, align 4
  ret i32 %237
}

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_memcpy_backptr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
