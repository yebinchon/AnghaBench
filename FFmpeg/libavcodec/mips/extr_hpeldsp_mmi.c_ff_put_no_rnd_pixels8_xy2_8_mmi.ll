; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_mmi.c_ff_put_no_rnd_pixels8_xy2_8_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_mmi.c_ff_put_no_rnd_pixels8_xy2_8_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_no_rnd_pixels8_xy2_8_mmi(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
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
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %170, %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %173

22:                                               ; preds = %19
  %23 = load i32*, i32** %6, align 8
  %24 = call i8* @AV_RN32(i32* %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = call i8* @AV_RN32(i32* %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = and i64 %31, 50529027
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = and i64 %34, 50529027
  %36 = add i64 %32, %35
  %37 = add i64 %36, 16843009
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = and i64 %40, 4244438268
  %42 = lshr i64 %41, 2
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = and i64 %44, 4244438268
  %46 = lshr i64 %45, 2
  %47 = add i64 %42, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %6, align 8
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %151, %22
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %154

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = call i8* @AV_RN32(i32* %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %17, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = call i8* @AV_RN32(i32* %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = and i64 %66, 50529027
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = and i64 %69, 50529027
  %71 = add i64 %67, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %17, align 4
  %74 = sext i32 %73 to i64
  %75 = and i64 %74, 4244438268
  %76 = lshr i64 %75, 2
  %77 = load i32, i32* %18, align 4
  %78 = sext i32 %77 to i64
  %79 = and i64 %78, 4244438268
  %80 = lshr i64 %79, 2
  %81 = add i64 %76, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %87, %88
  %90 = ashr i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = and i64 %91, 252645135
  %93 = add i64 %86, %92
  %94 = trunc i64 %93 to i32
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %5, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = call i8* @AV_RN32(i32* %104)
  %106 = ptrtoint i8* %105 to i32
  store i32 %106, i32* %17, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = call i8* @AV_RN32(i32* %108)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = and i64 %112, 50529027
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = and i64 %115, 50529027
  %117 = add i64 %113, %116
  %118 = add i64 %117, 16843009
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = and i64 %121, 4244438268
  %123 = lshr i64 %122, 2
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = and i64 %125, 4244438268
  %127 = lshr i64 %126, 2
  %128 = add i64 %123, %127
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %134, %135
  %137 = ashr i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = and i64 %138, 252645135
  %140 = add i64 %133, %139
  %141 = trunc i64 %140 to i32
  %142 = load i32*, i32** %5, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %5, align 8
  br label %151

151:                                              ; preds = %57
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 2
  store i32 %153, i32* %10, align 4
  br label %53

154:                                              ; preds = %53
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  %158 = mul nsw i32 %155, %157
  %159 = sub nsw i32 4, %158
  %160 = load i32*, i32** %6, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %6, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = mul nsw i32 %163, %164
  %166 = sub nsw i32 4, %165
  %167 = load i32*, i32** %5, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %5, align 8
  br label %170

170:                                              ; preds = %154
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %19

173:                                              ; preds = %19
  ret void
}

declare dso_local i8* @AV_RN32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
