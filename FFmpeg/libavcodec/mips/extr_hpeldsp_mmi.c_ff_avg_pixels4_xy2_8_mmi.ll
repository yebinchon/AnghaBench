; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_mmi.c_ff_avg_pixels4_xy2_8_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_mmi.c_ff_avg_pixels4_xy2_8_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_pixels4_xy2_8_mmi(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
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

48:                                               ; preds = %152, %4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %155

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
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %84, %85
  %87 = ashr i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = and i64 %88, 252645135
  %90 = add i64 %83, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @rnd_avg32(i32 %79, i32 %91)
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %5, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = call i8* @AV_RN32(i32* %102)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %16, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = call i8* @AV_RN32(i32* %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = and i64 %110, 50529027
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = and i64 %113, 50529027
  %115 = add i64 %111, %114
  %116 = add i64 %115, 33686018
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = and i64 %119, 4244438268
  %121 = lshr i64 %120, 2
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = and i64 %123, 4244438268
  %125 = lshr i64 %124, 2
  %126 = add i64 %121, %125
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %13, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %134, %135
  %137 = ashr i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = and i64 %138, 252645135
  %140 = add i64 %133, %139
  %141 = trunc i64 %140 to i32
  %142 = call i32 @rnd_avg32(i32 %129, i32 %141)
  %143 = load i32*, i32** %5, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32*, i32** %6, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32*, i32** %5, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %5, align 8
  br label %152

152:                                              ; preds = %52
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 2
  store i32 %154, i32* %9, align 4
  br label %48

155:                                              ; preds = %48
  ret void
}

declare dso_local i8* @AV_RN32(i32*) #1

declare dso_local i32 @rnd_avg32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
