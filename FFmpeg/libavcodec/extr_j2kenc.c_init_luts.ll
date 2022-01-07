; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_j2kenc.c_init_luts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_j2kenc.c_init_luts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NMSEDEC_FRACBITS = common dso_local global i32 0, align 4
@NMSEDEC_BITS = common dso_local global i32 0, align 4
@lut_nmsedec_sig = common dso_local global i8** null, align 8
@lut_nmsedec_sig0 = common dso_local global i8** null, align 8
@lut_nmsedec_ref = common dso_local global i8** null, align 8
@lut_nmsedec_ref0 = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_luts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_luts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @NMSEDEC_FRACBITS, align 4
  %5 = shl i32 1, %4
  %6 = sub nsw i32 %5, 1
  %7 = xor i32 %6, -1
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %95, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @NMSEDEC_BITS, align 4
  %11 = shl i32 1, %10
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %98

13:                                               ; preds = %8
  %14 = load i32, i32* %1, align 4
  %15 = mul nsw i32 6, %14
  %16 = load i32, i32* @NMSEDEC_FRACBITS, align 4
  %17 = sub nsw i32 %16, 1
  %18 = shl i32 9, %17
  %19 = sub nsw i32 %15, %18
  %20 = load i32, i32* @NMSEDEC_FRACBITS, align 4
  %21 = sub nsw i32 12, %20
  %22 = shl i32 %19, %21
  %23 = call i8* @FFMAX(i32 %22, i32 0)
  %24 = load i8**, i8*** @lut_nmsedec_sig, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  store i8* %23, i8** %27, align 8
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* @NMSEDEC_FRACBITS, align 4
  %32 = sub nsw i32 %31, 1
  %33 = shl i32 1, %32
  %34 = add nsw i32 %30, %33
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %34, %35
  %37 = shl i32 %36, 1
  %38 = call i8* @FFMAX(i32 %37, i32 0)
  %39 = load i8**, i8*** @lut_nmsedec_sig0, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* %38, i8** %42, align 8
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @NMSEDEC_BITS, align 4
  %45 = sub nsw i32 %44, 2
  %46 = ashr i32 %43, %45
  %47 = and i32 %46, 2
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %1, align 4
  %50 = mul nsw i32 -2, %49
  %51 = load i32, i32* @NMSEDEC_FRACBITS, align 4
  %52 = shl i32 1, %51
  %53 = add nsw i32 %50, %52
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %1, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 %53, %56
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* @NMSEDEC_FRACBITS, align 4
  %62 = sub nsw i32 %61, 2
  %63 = shl i32 %60, %62
  %64 = sub nsw i32 %57, %63
  %65 = load i32, i32* @NMSEDEC_FRACBITS, align 4
  %66 = sub nsw i32 13, %65
  %67 = shl i32 %64, %66
  %68 = call i8* @FFMAX(i32 %67, i32 0)
  %69 = load i8**, i8*** @lut_nmsedec_ref, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %68, i8** %72, align 8
  %73 = load i32, i32* %1, align 4
  %74 = load i32, i32* %1, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %1, align 4
  %77 = mul nsw i32 4, %76
  %78 = sub nsw i32 1, %77
  %79 = load i32, i32* @NMSEDEC_FRACBITS, align 4
  %80 = sub nsw i32 %79, 1
  %81 = shl i32 %78, %80
  %82 = add nsw i32 %75, %81
  %83 = load i32, i32* @NMSEDEC_FRACBITS, align 4
  %84 = mul nsw i32 2, %83
  %85 = shl i32 1, %84
  %86 = add nsw i32 %82, %85
  %87 = load i32, i32* %3, align 4
  %88 = and i32 %86, %87
  %89 = shl i32 %88, 1
  %90 = call i8* @FFMAX(i32 %89, i32 0)
  %91 = load i8**, i8*** @lut_nmsedec_ref0, align 8
  %92 = load i32, i32* %1, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %90, i8** %94, align 8
  br label %95

95:                                               ; preds = %13
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %1, align 4
  br label %8

98:                                               ; preds = %8
  ret void
}

declare dso_local i8* @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
