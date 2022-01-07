; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dsp.c_wmv2_idct_row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dsp.c_wmv2_idct_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@W1 = common dso_local global i16 0, align 2
@W7 = common dso_local global i16 0, align 2
@W5 = common dso_local global i16 0, align 2
@W3 = common dso_local global i16 0, align 2
@W2 = common dso_local global i16 0, align 2
@W6 = common dso_local global i16 0, align 2
@W0 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*)* @wmv2_idct_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmv2_idct_row(i16* %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i16* %0, i16** %2, align 8
  %13 = load i16, i16* @W1, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16*, i16** %2, align 8
  %16 = getelementptr inbounds i16, i16* %15, i64 1
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %14, %18
  %20 = load i16, i16* @W7, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16*, i16** %2, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 7
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  %26 = mul nsw i32 %21, %25
  %27 = add nsw i32 %19, %26
  store i32 %27, i32* %6, align 4
  %28 = load i16, i16* @W7, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16*, i16** %2, align 8
  %31 = getelementptr inbounds i16, i16* %30, i64 1
  %32 = load i16, i16* %31, align 2
  %33 = sext i16 %32 to i32
  %34 = mul nsw i32 %29, %33
  %35 = load i16, i16* @W1, align 2
  %36 = sext i16 %35 to i32
  %37 = load i16*, i16** %2, align 8
  %38 = getelementptr inbounds i16, i16* %37, i64 7
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  %41 = mul nsw i32 %36, %40
  %42 = sub nsw i32 %34, %41
  store i32 %42, i32* %12, align 4
  %43 = load i16, i16* @W5, align 2
  %44 = sext i16 %43 to i32
  %45 = load i16*, i16** %2, align 8
  %46 = getelementptr inbounds i16, i16* %45, i64 5
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  %49 = mul nsw i32 %44, %48
  %50 = load i16, i16* @W3, align 2
  %51 = sext i16 %50 to i32
  %52 = load i16*, i16** %2, align 8
  %53 = getelementptr inbounds i16, i16* %52, i64 3
  %54 = load i16, i16* %53, align 2
  %55 = sext i16 %54 to i32
  %56 = mul nsw i32 %51, %55
  %57 = add nsw i32 %49, %56
  store i32 %57, i32* %10, align 4
  %58 = load i16, i16* @W3, align 2
  %59 = sext i16 %58 to i32
  %60 = load i16*, i16** %2, align 8
  %61 = getelementptr inbounds i16, i16* %60, i64 5
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  %64 = mul nsw i32 %59, %63
  %65 = load i16, i16* @W5, align 2
  %66 = sext i16 %65 to i32
  %67 = load i16*, i16** %2, align 8
  %68 = getelementptr inbounds i16, i16* %67, i64 3
  %69 = load i16, i16* %68, align 2
  %70 = sext i16 %69 to i32
  %71 = mul nsw i32 %66, %70
  %72 = sub nsw i32 %64, %71
  store i32 %72, i32* %8, align 4
  %73 = load i16, i16* @W2, align 2
  %74 = sext i16 %73 to i32
  %75 = load i16*, i16** %2, align 8
  %76 = getelementptr inbounds i16, i16* %75, i64 2
  %77 = load i16, i16* %76, align 2
  %78 = sext i16 %77 to i32
  %79 = mul nsw i32 %74, %78
  %80 = load i16, i16* @W6, align 2
  %81 = sext i16 %80 to i32
  %82 = load i16*, i16** %2, align 8
  %83 = getelementptr inbounds i16, i16* %82, i64 6
  %84 = load i16, i16* %83, align 2
  %85 = sext i16 %84 to i32
  %86 = mul nsw i32 %81, %85
  %87 = add nsw i32 %79, %86
  store i32 %87, i32* %7, align 4
  %88 = load i16, i16* @W6, align 2
  %89 = sext i16 %88 to i32
  %90 = load i16*, i16** %2, align 8
  %91 = getelementptr inbounds i16, i16* %90, i64 2
  %92 = load i16, i16* %91, align 2
  %93 = sext i16 %92 to i32
  %94 = mul nsw i32 %89, %93
  %95 = load i16, i16* @W2, align 2
  %96 = sext i16 %95 to i32
  %97 = load i16*, i16** %2, align 8
  %98 = getelementptr inbounds i16, i16* %97, i64 6
  %99 = load i16, i16* %98, align 2
  %100 = sext i16 %99 to i32
  %101 = mul nsw i32 %96, %100
  %102 = sub nsw i32 %94, %101
  store i32 %102, i32* %11, align 4
  %103 = load i16, i16* @W0, align 2
  %104 = sext i16 %103 to i32
  %105 = load i16*, i16** %2, align 8
  %106 = getelementptr inbounds i16, i16* %105, i64 0
  %107 = load i16, i16* %106, align 2
  %108 = sext i16 %107 to i32
  %109 = mul nsw i32 %104, %108
  %110 = load i16, i16* @W0, align 2
  %111 = sext i16 %110 to i32
  %112 = load i16*, i16** %2, align 8
  %113 = getelementptr inbounds i16, i16* %112, i64 4
  %114 = load i16, i16* %113, align 2
  %115 = sext i16 %114 to i32
  %116 = mul nsw i32 %111, %115
  %117 = add nsw i32 %109, %116
  store i32 %117, i32* %5, align 4
  %118 = load i16, i16* @W0, align 2
  %119 = sext i16 %118 to i32
  %120 = load i16*, i16** %2, align 8
  %121 = getelementptr inbounds i16, i16* %120, i64 0
  %122 = load i16, i16* %121, align 2
  %123 = sext i16 %122 to i32
  %124 = mul nsw i32 %119, %123
  %125 = load i16, i16* @W0, align 2
  %126 = sext i16 %125 to i32
  %127 = load i16*, i16** %2, align 8
  %128 = getelementptr inbounds i16, i16* %127, i64 4
  %129 = load i16, i16* %128, align 2
  %130 = sext i16 %129 to i32
  %131 = mul nsw i32 %126, %130
  %132 = sub nsw i32 %124, %131
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %10, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %137, %138
  %140 = mul i32 181, %139
  %141 = add i32 %140, 128
  %142 = ashr i32 %141, 8
  store i32 %142, i32* %3, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %10, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32, i32* %12, align 4
  %147 = sub nsw i32 %145, %146
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %147, %148
  %150 = mul i32 181, %149
  %151 = add i32 %150, 128
  %152 = ashr i32 %151, 8
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %155, %156
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %157, %158
  %160 = add nsw i32 %159, 128
  %161 = ashr i32 %160, 8
  %162 = trunc i32 %161 to i16
  %163 = load i16*, i16** %2, align 8
  %164 = getelementptr inbounds i16, i16* %163, i64 0
  store i16 %162, i16* %164, align 2
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %165, %166
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %167, %168
  %170 = add nsw i32 %169, 128
  %171 = ashr i32 %170, 8
  %172 = trunc i32 %171 to i16
  %173 = load i16*, i16** %2, align 8
  %174 = getelementptr inbounds i16, i16* %173, i64 1
  store i16 %172, i16* %174, align 2
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %11, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %177, %178
  %180 = add nsw i32 %179, 128
  %181 = ashr i32 %180, 8
  %182 = trunc i32 %181 to i16
  %183 = load i16*, i16** %2, align 8
  %184 = getelementptr inbounds i16, i16* %183, i64 2
  store i16 %182, i16* %184, align 2
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* %7, align 4
  %187 = sub nsw i32 %185, %186
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %189, %190
  %192 = add nsw i32 %191, 128
  %193 = ashr i32 %192, 8
  %194 = trunc i32 %193 to i16
  %195 = load i16*, i16** %2, align 8
  %196 = getelementptr inbounds i16, i16* %195, i64 3
  store i16 %194, i16* %196, align 2
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* %7, align 4
  %199 = sub nsw i32 %197, %198
  %200 = load i32, i32* %12, align 4
  %201 = sub nsw i32 %199, %200
  %202 = load i32, i32* %8, align 4
  %203 = sub nsw i32 %201, %202
  %204 = add nsw i32 %203, 128
  %205 = ashr i32 %204, 8
  %206 = trunc i32 %205 to i16
  %207 = load i16*, i16** %2, align 8
  %208 = getelementptr inbounds i16, i16* %207, i64 4
  store i16 %206, i16* %208, align 2
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* %11, align 4
  %211 = sub nsw i32 %209, %210
  %212 = load i32, i32* %4, align 4
  %213 = sub nsw i32 %211, %212
  %214 = add nsw i32 %213, 128
  %215 = ashr i32 %214, 8
  %216 = trunc i32 %215 to i16
  %217 = load i16*, i16** %2, align 8
  %218 = getelementptr inbounds i16, i16* %217, i64 5
  store i16 %216, i16* %218, align 2
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %219, %220
  %222 = load i32, i32* %3, align 4
  %223 = sub nsw i32 %221, %222
  %224 = add nsw i32 %223, 128
  %225 = ashr i32 %224, 8
  %226 = trunc i32 %225 to i16
  %227 = load i16*, i16** %2, align 8
  %228 = getelementptr inbounds i16, i16* %227, i64 6
  store i16 %226, i16* %228, align 2
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* %7, align 4
  %231 = add nsw i32 %229, %230
  %232 = load i32, i32* %6, align 4
  %233 = sub nsw i32 %231, %232
  %234 = load i32, i32* %10, align 4
  %235 = sub nsw i32 %233, %234
  %236 = add nsw i32 %235, 128
  %237 = ashr i32 %236, 8
  %238 = trunc i32 %237 to i16
  %239 = load i16*, i16** %2, align 8
  %240 = getelementptr inbounds i16, i16* %239, i64 7
  store i16 %238, i16* %240, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
