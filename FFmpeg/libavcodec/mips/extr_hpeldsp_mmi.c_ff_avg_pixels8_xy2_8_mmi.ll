; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_mmi.c_ff_avg_pixels8_xy2_8_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_mmi.c_ff_avg_pixels8_xy2_8_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_pixels8_xy2_8_mmi(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
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

19:                                               ; preds = %176, %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %179

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
  %37 = add i64 %36, 33686018
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

53:                                               ; preds = %157, %22
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %160

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
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %89, %90
  %92 = ashr i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = and i64 %93, 252645135
  %95 = add i64 %88, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @rnd_avg32(i32 %84, i32 %96)
  %98 = load i32*, i32** %5, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %5, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = call i8* @AV_RN32(i32* %107)
  %109 = ptrtoint i8* %108 to i32
  store i32 %109, i32* %17, align 4
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = call i8* @AV_RN32(i32* %111)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = and i64 %115, 50529027
  %117 = load i32, i32* %18, align 4
  %118 = sext i32 %117 to i64
  %119 = and i64 %118, 50529027
  %120 = add i64 %116, %119
  %121 = add i64 %120, 33686018
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = and i64 %124, 4244438268
  %126 = lshr i64 %125, 2
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = and i64 %128, 4244438268
  %130 = lshr i64 %129, 2
  %131 = add i64 %126, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %14, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %139, %140
  %142 = ashr i32 %141, 2
  %143 = sext i32 %142 to i64
  %144 = and i64 %143, 252645135
  %145 = add i64 %138, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @rnd_avg32(i32 %134, i32 %146)
  %148 = load i32*, i32** %5, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32*, i32** %6, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i32*, i32** %5, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %5, align 8
  br label %157

157:                                              ; preds = %57
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 2
  store i32 %159, i32* %10, align 4
  br label %53

160:                                              ; preds = %53
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  %164 = mul nsw i32 %161, %163
  %165 = sub nsw i32 4, %164
  %166 = load i32*, i32** %6, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %6, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %8, align 4
  %171 = mul nsw i32 %169, %170
  %172 = sub nsw i32 4, %171
  %173 = load i32*, i32** %5, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %5, align 8
  br label %176

176:                                              ; preds = %160
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %19

179:                                              ; preds = %19
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
