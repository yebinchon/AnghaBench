; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Bra86.c_x86_Convert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Bra86.c_x86_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kMaskToBitNumber = common dso_local global i32* null, align 8
@kMaskToAllowedStatus = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @x86_Convert(i32* %0, i64 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 7
  store i32 %24, i32* %14, align 4
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %25, 5
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %227

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 5
  store i32 %30, i32* %9, align 4
  store i64 -1, i64* %13, align 8
  br label %31

31:                                               ; preds = %208, %101, %28
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %15, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = getelementptr inbounds i32, i32* %37, i64 -4
  store i32* %38, i32** %16, align 8
  br label %39

39:                                               ; preds = %50, %31
  %40 = load i32*, i32** %15, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = icmp ult i32* %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 254
  %47 = icmp eq i32 %46, 232
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %53

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49
  %51 = load i32*, i32** %15, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %15, align 8
  br label %39

53:                                               ; preds = %48, %39
  %54 = load i32*, i32** %15, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = ptrtoint i32* %54 to i64
  %57 = ptrtoint i32* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  store i64 %59, i64* %12, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = icmp uge i32* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %209

64:                                               ; preds = %53
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = sub i64 %65, %66
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp ugt i64 %68, 3
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  br label %111

71:                                               ; preds = %64
  %72 = load i32, i32* %14, align 4
  %73 = load i64, i64* %13, align 8
  %74 = trunc i64 %73 to i32
  %75 = sub nsw i32 %74, 1
  %76 = shl i32 %72, %75
  %77 = and i32 %76, 7
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %71
  %81 = load i32*, i32** %15, align 8
  %82 = load i32*, i32** @kMaskToBitNumber, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 4, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %81, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %17, align 4
  %91 = load i32*, i32** @kMaskToAllowedStatus, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %80
  %98 = load i32, i32* %17, align 4
  %99 = call i64 @Test86MSuint8_t(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97, %80
  %102 = load i64, i64* %12, align 8
  store i64 %102, i64* %13, align 8
  %103 = load i32, i32* %14, align 4
  %104 = shl i32 %103, 1
  %105 = and i32 %104, 7
  %106 = or i32 %105, 1
  store i32 %106, i32* %14, align 4
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %12, align 8
  br label %31

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %71
  br label %111

111:                                              ; preds = %110, %70
  %112 = load i64, i64* %12, align 8
  store i64 %112, i64* %13, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @Test86MSuint8_t(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %201

118:                                              ; preds = %111
  %119 = load i32*, i32** %15, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 24
  %123 = load i32*, i32** %15, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 16
  %127 = or i32 %122, %126
  %128 = load i32*, i32** %15, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 8
  %132 = or i32 %127, %131
  %133 = load i32*, i32** %15, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %132, %135
  store i32 %136, i32* %18, align 4
  br label %137

137:                                              ; preds = %173, %118
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32, i32* %9, align 4
  %142 = load i64, i64* %12, align 8
  %143 = trunc i64 %142 to i32
  %144 = add nsw i32 %141, %143
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %144, %145
  store i32 %146, i32* %19, align 4
  br label %154

147:                                              ; preds = %137
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i64, i64* %12, align 8
  %151 = trunc i64 %150 to i32
  %152 = add nsw i32 %149, %151
  %153 = sub nsw i32 %148, %152
  store i32 %153, i32* %19, align 4
  br label %154

154:                                              ; preds = %147, %140
  %155 = load i32, i32* %14, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %180

158:                                              ; preds = %154
  %159 = load i32*, i32** @kMaskToBitNumber, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %163, 8
  store i32 %164, i32* %21, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %21, align 4
  %167 = sub nsw i32 24, %166
  %168 = ashr i32 %165, %167
  store i32 %168, i32* %20, align 4
  %169 = load i32, i32* %20, align 4
  %170 = call i64 @Test86MSuint8_t(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %158
  br label %180

173:                                              ; preds = %158
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %21, align 4
  %176 = sub nsw i32 32, %175
  %177 = shl i32 1, %176
  %178 = sub nsw i32 %177, 1
  %179 = xor i32 %174, %178
  store i32 %179, i32* %18, align 4
  br label %137

180:                                              ; preds = %172, %157
  %181 = load i32, i32* %19, align 4
  %182 = ashr i32 %181, 24
  %183 = and i32 %182, 1
  %184 = sub nsw i32 %183, 1
  %185 = xor i32 %184, -1
  %186 = load i32*, i32** %15, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 4
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* %19, align 4
  %189 = ashr i32 %188, 16
  %190 = load i32*, i32** %15, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %19, align 4
  %193 = ashr i32 %192, 8
  %194 = load i32*, i32** %15, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %19, align 4
  %197 = load i32*, i32** %15, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %196, i32* %198, align 4
  %199 = load i64, i64* %12, align 8
  %200 = add i64 %199, 5
  store i64 %200, i64* %12, align 8
  br label %208

201:                                              ; preds = %111
  %202 = load i32, i32* %14, align 4
  %203 = shl i32 %202, 1
  %204 = and i32 %203, 7
  %205 = or i32 %204, 1
  store i32 %205, i32* %14, align 4
  %206 = load i64, i64* %12, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %12, align 8
  br label %208

208:                                              ; preds = %201, %180
  br label %31

209:                                              ; preds = %63
  %210 = load i64, i64* %12, align 8
  %211 = load i64, i64* %13, align 8
  %212 = sub i64 %210, %211
  store i64 %212, i64* %13, align 8
  %213 = load i64, i64* %13, align 8
  %214 = icmp ugt i64 %213, 3
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %223

216:                                              ; preds = %209
  %217 = load i32, i32* %14, align 4
  %218 = load i64, i64* %13, align 8
  %219 = trunc i64 %218 to i32
  %220 = sub nsw i32 %219, 1
  %221 = shl i32 %217, %220
  %222 = and i32 %221, 7
  br label %223

223:                                              ; preds = %216, %215
  %224 = phi i32 [ 0, %215 ], [ %222, %216 ]
  %225 = load i32*, i32** %10, align 8
  store i32 %224, i32* %225, align 4
  %226 = load i64, i64* %12, align 8
  store i64 %226, i64* %6, align 8
  br label %227

227:                                              ; preds = %223, %27
  %228 = load i64, i64* %6, align 8
  ret i64 %228
}

declare dso_local i64 @Test86MSuint8_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
