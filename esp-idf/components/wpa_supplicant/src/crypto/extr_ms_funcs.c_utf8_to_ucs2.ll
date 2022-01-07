; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_ms_funcs.c_utf8_to_ucs2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_ms_funcs.c_utf8_to_ucs2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, i64*)* @utf8_to_ucs2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_to_ucs2(i32* %0, i64 %1, i32* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %17

17:                                               ; preds = %108, %5
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %111

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %119

30:                                               ; preds = %21
  %31 = load i32, i32* %14, align 4
  %32 = icmp sle i32 %31, 127
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @WPA_PUT_LE16(i32* %36, i32 %37)
  %39 = load i64, i64* %13, align 8
  %40 = add i64 %39, 2
  store i64 %40, i64* %13, align 8
  br label %107

41:                                               ; preds = %30
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %43, 1
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %48, 1
  %50 = icmp uge i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %41
  store i32 -1, i32* %6, align 4
  br label %119

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %12, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %14, align 4
  %59 = and i32 %58, 224
  %60 = icmp eq i32 %59, 192
  br i1 %60, label %61, label %74

61:                                               ; preds = %52
  %62 = load i32*, i32** %9, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %14, align 4
  %66 = and i32 %65, 31
  %67 = shl i32 %66, 6
  %68 = load i32, i32* %15, align 4
  %69 = and i32 %68, 63
  %70 = or i32 %67, %69
  %71 = call i32 @WPA_PUT_LE16(i32* %64, i32 %70)
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, 2
  store i64 %73, i64* %13, align 8
  br label %105

74:                                               ; preds = %52
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %10, align 8
  %81 = sub i64 %80, 1
  %82 = icmp uge i64 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %74
  store i32 -1, i32* %6, align 4
  br label %119

84:                                               ; preds = %78
  %85 = load i32*, i32** %7, align 8
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %12, align 8
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %16, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i64, i64* %13, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %14, align 4
  %94 = and i32 %93, 15
  %95 = shl i32 %94, 12
  %96 = load i32, i32* %15, align 4
  %97 = and i32 %96, 63
  %98 = shl i32 %97, 6
  %99 = or i32 %95, %98
  %100 = load i32, i32* %16, align 4
  %101 = and i32 %100, 63
  %102 = or i32 %99, %101
  %103 = call i32 @WPA_PUT_LE16(i32* %92, i32 %102)
  br label %104

104:                                              ; preds = %84
  br label %105

105:                                              ; preds = %104, %61
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %33
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %12, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %12, align 8
  br label %17

111:                                              ; preds = %17
  %112 = load i64*, i64** %11, align 8
  %113 = icmp ne i64* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i64, i64* %13, align 8
  %116 = udiv i64 %115, 2
  %117 = load i64*, i64** %11, align 8
  store i64 %116, i64* %117, align 8
  br label %118

118:                                              ; preds = %114, %111
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %83, %51, %29
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
