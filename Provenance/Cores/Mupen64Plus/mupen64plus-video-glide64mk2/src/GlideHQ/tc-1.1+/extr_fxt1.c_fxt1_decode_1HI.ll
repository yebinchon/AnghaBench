; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_decode_1HI.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_decode_1HI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCOMP = common dso_local global i64 0, align 8
@GCOMP = common dso_local global i64 0, align 8
@RCOMP = common dso_local global i64 0, align 8
@ACOMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @fxt1_decode_1HI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxt1_decode_1HI(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = mul nsw i32 %8, 3
  store i32 %9, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sdiv i32 %11, 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 7
  %20 = ashr i32 %17, %19
  %21 = and i32 %20, 7
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ZERO_4UBV(i32* %25)
  br label %112

27:                                               ; preds = %3
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 12
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @CC_SEL(i32* %33, i32 0)
  %35 = call i32 @UP5(i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* @BCOMP, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @CC_SEL(i32* %39, i32 5)
  %41 = call i32 @UP5(i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* @GCOMP, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %41, i32* %44, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @CC_SEL(i32* %45, i32 10)
  %47 = call i32 @UP5(i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* @RCOMP, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %50, align 4
  br label %108

51:                                               ; preds = %27
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @CC_SEL(i32* %55, i32 15)
  %57 = call i32 @UP5(i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* @BCOMP, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %60, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @CC_SEL(i32* %61, i32 20)
  %63 = call i32 @UP5(i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i64, i64* @GCOMP, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %63, i32* %66, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @CC_SEL(i32* %67, i32 25)
  %69 = call i32 @UP5(i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load i64, i64* @RCOMP, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %69, i32* %72, align 4
  br label %107

73:                                               ; preds = %51
  %74 = load i32, i32* %5, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @CC_SEL(i32* %75, i32 0)
  %77 = call i32 @UP5(i32 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @CC_SEL(i32* %78, i32 15)
  %80 = call i32 @UP5(i32 %79)
  %81 = call i32 @LERP(i32 6, i32 %74, i32 %77, i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = load i64, i64* @BCOMP, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @CC_SEL(i32* %86, i32 5)
  %88 = call i32 @UP5(i32 %87)
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @CC_SEL(i32* %89, i32 20)
  %91 = call i32 @UP5(i32 %90)
  %92 = call i32 @LERP(i32 6, i32 %85, i32 %88, i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load i64, i64* @GCOMP, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @CC_SEL(i32* %97, i32 10)
  %99 = call i32 @UP5(i32 %98)
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @CC_SEL(i32* %100, i32 25)
  %102 = call i32 @UP5(i32 %101)
  %103 = call i32 @LERP(i32 6, i32 %96, i32 %99, i32 %102)
  %104 = load i32*, i32** %6, align 8
  %105 = load i64, i64* @RCOMP, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %73, %54
  br label %108

108:                                              ; preds = %107, %32
  %109 = load i32*, i32** %6, align 8
  %110 = load i64, i64* @ACOMP, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 255, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %24
  ret void
}

declare dso_local i32 @ZERO_4UBV(i32*) #1

declare dso_local i32 @UP5(i32) #1

declare dso_local i32 @CC_SEL(i32*, i32) #1

declare dso_local i32 @LERP(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
