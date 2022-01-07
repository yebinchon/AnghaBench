; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_abs16_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_abs16_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*, i32, i32)* @pix_abs16_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_abs16_c(i32* %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %218, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %221

17:                                               ; preds = %13
  %18 = load i64*, i64** %7, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = call i64 @abs(i64 %24)
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i64*, i64** %7, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = call i64 @abs(i64 %36)
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load i64*, i64** %7, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %8, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = call i64 @abs(i64 %48)
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load i64*, i64** %7, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 3
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = call i64 @abs(i64 %60)
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i64*, i64** %7, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 4
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 4
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = call i64 @abs(i64 %72)
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i64*, i64** %7, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 5
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %8, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 5
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = call i64 @abs(i64 %84)
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %11, align 4
  %90 = load i64*, i64** %7, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 6
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %8, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 6
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = call i64 @abs(i64 %96)
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %11, align 4
  %102 = load i64*, i64** %7, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 7
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %8, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 7
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  %109 = call i64 @abs(i64 %108)
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %11, align 4
  %114 = load i64*, i64** %7, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 8
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %8, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 8
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %116, %119
  %121 = call i64 @abs(i64 %120)
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %11, align 4
  %126 = load i64*, i64** %7, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 9
  %128 = load i64, i64* %127, align 8
  %129 = load i64*, i64** %8, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 9
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %128, %131
  %133 = call i64 @abs(i64 %132)
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %11, align 4
  %138 = load i64*, i64** %7, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 10
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** %8, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 10
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %140, %143
  %145 = call i64 @abs(i64 %144)
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %11, align 4
  %150 = load i64*, i64** %7, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 11
  %152 = load i64, i64* %151, align 8
  %153 = load i64*, i64** %8, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 11
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %152, %155
  %157 = call i64 @abs(i64 %156)
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %11, align 4
  %162 = load i64*, i64** %7, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 12
  %164 = load i64, i64* %163, align 8
  %165 = load i64*, i64** %8, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 12
  %167 = load i64, i64* %166, align 8
  %168 = sub nsw i64 %164, %167
  %169 = call i64 @abs(i64 %168)
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %11, align 4
  %174 = load i64*, i64** %7, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 13
  %176 = load i64, i64* %175, align 8
  %177 = load i64*, i64** %8, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 13
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %176, %179
  %181 = call i64 @abs(i64 %180)
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %11, align 4
  %186 = load i64*, i64** %7, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 14
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %8, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 14
  %191 = load i64, i64* %190, align 8
  %192 = sub nsw i64 %188, %191
  %193 = call i64 @abs(i64 %192)
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %193
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %11, align 4
  %198 = load i64*, i64** %7, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 15
  %200 = load i64, i64* %199, align 8
  %201 = load i64*, i64** %8, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 15
  %203 = load i64, i64* %202, align 8
  %204 = sub nsw i64 %200, %203
  %205 = call i64 @abs(i64 %204)
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %207, %205
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %9, align 4
  %211 = load i64*, i64** %7, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i64, i64* %211, i64 %212
  store i64* %213, i64** %7, align 8
  %214 = load i32, i32* %9, align 4
  %215 = load i64*, i64** %8, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i64, i64* %215, i64 %216
  store i64* %217, i64** %8, align 8
  br label %218

218:                                              ; preds = %17
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %13

221:                                              ; preds = %13
  %222 = load i32, i32* %11, align 4
  ret i32 %222
}

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
