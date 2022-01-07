; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_mmi.c_ff_put_pixels4_xy2_8_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_mmi.c_ff_put_pixels4_xy2_8_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_pixels4_xy2_8_mmi(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
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
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i8* @AV_RN32(i32* %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = call i8* @AV_RN32(i32* %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, 50529027
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 50529027
  %31 = add i64 %27, %30
  %32 = add i64 %31, 33686018
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = and i64 %35, 4244438268
  %37 = lshr i64 %36, 2
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, 4244438268
  %41 = lshr i64 %40, 2
  %42 = add i64 %37, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %6, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %146, %4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %149

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  %54 = call i8* @AV_RN32(i32* %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %16, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = call i8* @AV_RN32(i32* %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = and i64 %61, 50529027
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = and i64 %64, 50529027
  %66 = add i64 %62, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = and i64 %69, 4244438268
  %71 = lshr i64 %70, 2
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = and i64 %73, 4244438268
  %75 = lshr i64 %74, 2
  %76 = add i64 %71, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %82, %83
  %85 = ashr i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = and i64 %86, 252645135
  %88 = add i64 %81, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32*, i32** %5, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %5, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = call i8* @AV_RN32(i32* %99)
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %16, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = call i8* @AV_RN32(i32* %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = and i64 %107, 50529027
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = and i64 %110, 50529027
  %112 = add i64 %108, %111
  %113 = add i64 %112, 33686018
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = and i64 %116, 4244438268
  %118 = lshr i64 %117, 2
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = and i64 %120, 4244438268
  %122 = lshr i64 %121, 2
  %123 = add i64 %118, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %129, %130
  %132 = ashr i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = and i64 %133, 252645135
  %135 = add i64 %128, %134
  %136 = trunc i64 %135 to i32
  %137 = load i32*, i32** %5, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i32*, i32** %5, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %5, align 8
  br label %146

146:                                              ; preds = %52
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 2
  store i32 %148, i32* %9, align 4
  br label %48

149:                                              ; preds = %48
  ret void
}

declare dso_local i8* @AV_RN32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
