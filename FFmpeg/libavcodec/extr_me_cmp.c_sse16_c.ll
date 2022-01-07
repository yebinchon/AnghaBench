; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_sse16_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_sse16_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_square_tab = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*, i32, i32)* @sse16_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sse16_c(i32* %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i64*, i64** @ff_square_tab, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 256
  store i64* %15, i64** %13, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %253, %5
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %256

20:                                               ; preds = %16
  %21 = load i64*, i64** %13, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  %29 = getelementptr inbounds i64, i64* %21, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load i64*, i64** %13, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = getelementptr inbounds i64, i64* %35, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i64*, i64** %13, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %52, %55
  %57 = getelementptr inbounds i64, i64* %49, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load i64*, i64** %13, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 3
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %66, %69
  %71 = getelementptr inbounds i64, i64* %63, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load i64*, i64** %13, align 8
  %78 = load i64*, i64** %7, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 4
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %8, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 4
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %80, %83
  %85 = getelementptr inbounds i64, i64* %77, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i64*, i64** %13, align 8
  %92 = load i64*, i64** %7, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 5
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 5
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %94, %97
  %99 = getelementptr inbounds i64, i64* %91, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  %105 = load i64*, i64** %13, align 8
  %106 = load i64*, i64** %7, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 6
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 6
  %111 = load i64, i64* %110, align 8
  %112 = sub i64 %108, %111
  %113 = getelementptr inbounds i64, i64* %105, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %11, align 4
  %119 = load i64*, i64** %13, align 8
  %120 = load i64*, i64** %7, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 7
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %8, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 7
  %125 = load i64, i64* %124, align 8
  %126 = sub i64 %122, %125
  %127 = getelementptr inbounds i64, i64* %119, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %11, align 4
  %133 = load i64*, i64** %13, align 8
  %134 = load i64*, i64** %7, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 8
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** %8, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 8
  %139 = load i64, i64* %138, align 8
  %140 = sub i64 %136, %139
  %141 = getelementptr inbounds i64, i64* %133, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %11, align 4
  %147 = load i64*, i64** %13, align 8
  %148 = load i64*, i64** %7, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 9
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %8, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 9
  %153 = load i64, i64* %152, align 8
  %154 = sub i64 %150, %153
  %155 = getelementptr inbounds i64, i64* %147, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %156
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %11, align 4
  %161 = load i64*, i64** %13, align 8
  %162 = load i64*, i64** %7, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 10
  %164 = load i64, i64* %163, align 8
  %165 = load i64*, i64** %8, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 10
  %167 = load i64, i64* %166, align 8
  %168 = sub i64 %164, %167
  %169 = getelementptr inbounds i64, i64* %161, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %11, align 4
  %175 = load i64*, i64** %13, align 8
  %176 = load i64*, i64** %7, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 11
  %178 = load i64, i64* %177, align 8
  %179 = load i64*, i64** %8, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 11
  %181 = load i64, i64* %180, align 8
  %182 = sub i64 %178, %181
  %183 = getelementptr inbounds i64, i64* %175, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %11, align 4
  %189 = load i64*, i64** %13, align 8
  %190 = load i64*, i64** %7, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 12
  %192 = load i64, i64* %191, align 8
  %193 = load i64*, i64** %8, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 12
  %195 = load i64, i64* %194, align 8
  %196 = sub i64 %192, %195
  %197 = getelementptr inbounds i64, i64* %189, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %11, align 4
  %203 = load i64*, i64** %13, align 8
  %204 = load i64*, i64** %7, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 13
  %206 = load i64, i64* %205, align 8
  %207 = load i64*, i64** %8, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 13
  %209 = load i64, i64* %208, align 8
  %210 = sub i64 %206, %209
  %211 = getelementptr inbounds i64, i64* %203, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %214, %212
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %11, align 4
  %217 = load i64*, i64** %13, align 8
  %218 = load i64*, i64** %7, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 14
  %220 = load i64, i64* %219, align 8
  %221 = load i64*, i64** %8, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 14
  %223 = load i64, i64* %222, align 8
  %224 = sub i64 %220, %223
  %225 = getelementptr inbounds i64, i64* %217, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %228, %226
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %11, align 4
  %231 = load i64*, i64** %13, align 8
  %232 = load i64*, i64** %7, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 15
  %234 = load i64, i64* %233, align 8
  %235 = load i64*, i64** %8, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 15
  %237 = load i64, i64* %236, align 8
  %238 = sub i64 %234, %237
  %239 = getelementptr inbounds i64, i64* %231, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %242, %240
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %11, align 4
  %245 = load i32, i32* %9, align 4
  %246 = load i64*, i64** %7, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i64, i64* %246, i64 %247
  store i64* %248, i64** %7, align 8
  %249 = load i32, i32* %9, align 4
  %250 = load i64*, i64** %8, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i64, i64* %250, i64 %251
  store i64* %252, i64** %8, align 8
  br label %253

253:                                              ; preds = %20
  %254 = load i32, i32* %12, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %12, align 4
  br label %16

256:                                              ; preds = %16
  %257 = load i32, i32* %11, align 4
  ret i32 %257
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
