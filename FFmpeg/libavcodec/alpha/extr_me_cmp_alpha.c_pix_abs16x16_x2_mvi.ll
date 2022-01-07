; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_me_cmp_alpha.c_pix_abs16x16_x2_mvi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_me_cmp_alpha.c_pix_abs16x16_x2_mvi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32, i32)* @pix_abs16x16_x2_mvi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_abs16x16_x2_mvi(i8* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = ptrtoint i32* %34 to i64
  %36 = and i64 %35, 7
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  switch i32 %38, label %144 [
    i32 0, label %39
    i32 7, label %89
  ]

39:                                               ; preds = %5
  br label %40

40:                                               ; preds = %84, %39
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @ldq(i32* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  %45 = call i32 @ldq(i32* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @ldq(i32* %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  %50 = call i32 @ldq(i32* %49)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = ashr i32 %52, 8
  %54 = load i32, i32* %18, align 4
  %55 = shl i32 %54, 56
  %56 = or i32 %53, %55
  %57 = call i32 @avg2(i32 %51, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = ashr i32 %59, 8
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 16
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 56
  %65 = or i32 %60, %64
  %66 = call i32 @avg2(i32 %58, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %8, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @perr(i32 %75, i32 %76)
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @perr(i32 %78, i32 %79)
  %81 = add nsw i32 %77, %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %40
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %40, label %88

88:                                               ; preds = %84
  br label %213

89:                                               ; preds = %5
  br label %90

90:                                               ; preds = %139, %89
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @ldq(i32* %91)
  store i32 %92, i32* %19, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 8
  %95 = call i32 @ldq(i32* %94)
  store i32 %95, i32* %20, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @ldq_u(i32* %96)
  store i32 %97, i32* %23, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 8
  %100 = call i32 @ldq_u(i32* %99)
  store i32 %100, i32* %24, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 16
  %103 = call i32 @ldq_u(i32* %102)
  store i32 %103, i32* %25, align 4
  %104 = load i32, i32* %23, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @extql(i32 %104, i32 %105)
  %107 = load i32, i32* %24, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @extqh(i32 %107, i32 %108)
  %110 = or i32 %106, %109
  %111 = load i32, i32* %24, align 4
  %112 = call i32 @avg2(i32 %110, i32 %111)
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %24, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @extql(i32 %113, i32 %114)
  %116 = load i32, i32* %25, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @extqh(i32 %116, i32 %117)
  %119 = or i32 %115, %118
  %120 = load i32, i32* %25, align 4
  %121 = call i32 @avg2(i32 %119, i32 %120)
  store i32 %121, i32* %22, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %8, align 8
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %21, align 4
  %132 = call i32 @perr(i32 %130, i32 %131)
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %22, align 4
  %135 = call i32 @perr(i32 %133, i32 %134)
  %136 = add nsw i32 %132, %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %90
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %90, label %143

143:                                              ; preds = %139
  br label %213

144:                                              ; preds = %5
  br label %145

145:                                              ; preds = %208, %144
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %26, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @ldq(i32* %148)
  store i32 %149, i32* %27, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 8
  %152 = call i32 @ldq(i32* %151)
  store i32 %152, i32* %28, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @ldq_u(i32* %153)
  store i32 %154, i32* %31, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 8
  %157 = call i32 @ldq_u(i32* %156)
  store i32 %157, i32* %32, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 16
  %160 = call i32 @ldq_u(i32* %159)
  store i32 %160, i32* %33, align 4
  %161 = load i32, i32* %31, align 4
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @extql(i32 %161, i32 %162)
  %164 = load i32, i32* %32, align 4
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @extqh(i32 %164, i32 %165)
  %167 = or i32 %163, %166
  %168 = load i32, i32* %31, align 4
  %169 = load i32, i32* %26, align 4
  %170 = call i32 @extql(i32 %168, i32 %169)
  %171 = load i32, i32* %32, align 4
  %172 = load i32, i32* %26, align 4
  %173 = call i32 @extqh(i32 %171, i32 %172)
  %174 = or i32 %170, %173
  %175 = call i32 @avg2(i32 %167, i32 %174)
  store i32 %175, i32* %29, align 4
  %176 = load i32, i32* %32, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @extql(i32 %176, i32 %177)
  %179 = load i32, i32* %33, align 4
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @extqh(i32 %179, i32 %180)
  %182 = or i32 %178, %181
  %183 = load i32, i32* %32, align 4
  %184 = load i32, i32* %26, align 4
  %185 = call i32 @extql(i32 %183, i32 %184)
  %186 = load i32, i32* %33, align 4
  %187 = load i32, i32* %26, align 4
  %188 = call i32 @extqh(i32 %186, i32 %187)
  %189 = or i32 %185, %188
  %190 = call i32 @avg2(i32 %182, i32 %189)
  store i32 %190, i32* %30, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load i32*, i32** %7, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %7, align 8
  %195 = load i32, i32* %9, align 4
  %196 = load i32*, i32** %8, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32* %198, i32** %8, align 8
  %199 = load i32, i32* %27, align 4
  %200 = load i32, i32* %29, align 4
  %201 = call i32 @perr(i32 %199, i32 %200)
  %202 = load i32, i32* %28, align 4
  %203 = load i32, i32* %30, align 4
  %204 = call i32 @perr(i32 %202, i32 %203)
  %205 = add nsw i32 %201, %204
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %11, align 4
  br label %208

208:                                              ; preds = %145
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %10, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %145, label %212

212:                                              ; preds = %208
  br label %213

213:                                              ; preds = %212, %143, %88
  %214 = load i32, i32* %11, align 4
  ret i32 %214
}

declare dso_local i32 @ldq(i32*) #1

declare dso_local i32 @avg2(i32, i32) #1

declare dso_local i32 @perr(i32, i32) #1

declare dso_local i32 @ldq_u(i32*) #1

declare dso_local i32 @extql(i32, i32) #1

declare dso_local i32 @extqh(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
