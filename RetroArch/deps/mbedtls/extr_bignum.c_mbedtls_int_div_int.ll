; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_int_div_int.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_int_div_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@biH = common dso_local global i32 0, align 4
@biL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @mbedtls_int_div_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_int_div_int(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %22 = load i32, i32* @biH, align 4
  %23 = shl i32 1, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @biH, align 4
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 0, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %4
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32*, i32** %9, align 8
  store i32 -1, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %33
  store i32 -1, i32* %5, align 4
  br label %186

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @mbedtls_clz(i32 %40)
  store i64 %41, i64* %21, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %21, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %42, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i64, i64* %21, align 8
  %48 = trunc i64 %47 to i32
  %49 = shl i32 %46, %48
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @biL, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %21, align 8
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = ashr i32 %50, %55
  %57 = load i64, i64* %21, align 8
  %58 = trunc i64 %57 to i32
  %59 = sub nsw i32 0, %58
  %60 = load i32, i32* @biL, align 4
  %61 = sub nsw i32 %60, 1
  %62 = ashr i32 %59, %61
  %63 = and i32 %56, %62
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i64, i64* %21, align 8
  %68 = trunc i64 %67 to i32
  %69 = shl i32 %66, %68
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @biH, align 4
  %72 = ashr i32 %70, %71
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @biH, align 4
  %78 = ashr i32 %76, %77
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %13, align 4
  %84 = sdiv i32 %82, %83
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %15, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sub nsw i32 %85, %88
  store i32 %89, i32* %17, align 4
  br label %90

90:                                               ; preds = %116, %39
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %104, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %12, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %17, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %100, %101
  %103 = icmp sgt i32 %97, %102
  br label %104

104:                                              ; preds = %94, %90
  %105 = phi i1 [ true, %90 ], [ %103, %94 ]
  br i1 %105, label %106, label %117

106:                                              ; preds = %104
  %107 = load i32, i32* %15, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %117

116:                                              ; preds = %106
  br label %90

117:                                              ; preds = %115, %104
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %10, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %8, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sub nsw i32 %121, %124
  %126 = add nsw i32 %120, %125
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %13, align 4
  %129 = sdiv i32 %127, %128
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %13, align 4
  %133 = mul nsw i32 %131, %132
  %134 = sub nsw i32 %130, %133
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %161, %117
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %149, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %12, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %17, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load i32, i32* %20, align 4
  %147 = add nsw i32 %145, %146
  %148 = icmp sgt i32 %142, %147
  br label %149

149:                                              ; preds = %139, %135
  %150 = phi i1 [ true, %135 ], [ %148, %139 ]
  br i1 %150, label %151, label %162

151:                                              ; preds = %149
  %152 = load i32, i32* %14, align 4
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp sge i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %162

161:                                              ; preds = %151
  br label %135

162:                                              ; preds = %160, %149
  %163 = load i32*, i32** %9, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %179

165:                                              ; preds = %162
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %10, align 4
  %168 = mul nsw i32 %166, %167
  %169 = load i32, i32* %20, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %8, align 4
  %173 = mul nsw i32 %171, %172
  %174 = sub nsw i32 %170, %173
  %175 = load i64, i64* %21, align 8
  %176 = trunc i64 %175 to i32
  %177 = ashr i32 %174, %176
  %178 = load i32*, i32** %9, align 8
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %165, %162
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %10, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %182, %183
  store i32 %184, i32* %18, align 4
  %185 = load i32, i32* %18, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %179, %38
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i64 @mbedtls_clz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
