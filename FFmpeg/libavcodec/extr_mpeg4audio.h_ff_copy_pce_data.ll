; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4audio.h_ff_copy_pce_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4audio.h_ff_copy_pce_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ff_copy_pce_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_copy_pce_data(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @put_bits_count(i32* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ff_pce_copy_bits(i32* %12, i32* %13, i32 10)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ff_pce_copy_bits(i32* %15, i32* %16, i32 4)
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @ff_pce_copy_bits(i32* %18, i32* %19, i32 4)
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ff_pce_copy_bits(i32* %23, i32* %24, i32 4)
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @ff_pce_copy_bits(i32* %28, i32* %29, i32 2)
  store i32 %30, i32* %6, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ff_pce_copy_bits(i32* %31, i32* %32, i32 3)
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @ff_pce_copy_bits(i32* %36, i32* %37, i32 4)
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ff_pce_copy_bits(i32* %41, i32* %42, i32 1)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %2
  %46 = load i32*, i32** %3, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @ff_pce_copy_bits(i32* %46, i32* %47, i32 4)
  br label %49

49:                                               ; preds = %45, %2
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @ff_pce_copy_bits(i32* %50, i32* %51, i32 1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @ff_pce_copy_bits(i32* %55, i32* %56, i32 4)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @ff_pce_copy_bits(i32* %59, i32* %60, i32 1)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32*, i32** %3, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @ff_pce_copy_bits(i32* %64, i32* %65, i32 3)
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 %68, 5
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %70, 4
  %72 = add nsw i32 %69, %71
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %80, %67
  %74 = load i32, i32* %8, align 4
  %75 = icmp sgt i32 %74, 16
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32*, i32** %3, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @ff_pce_copy_bits(i32* %77, i32* %78, i32 16)
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 16
  store i32 %82, i32* %8, align 4
  br label %73

83:                                               ; preds = %73
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32*, i32** %3, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @ff_pce_copy_bits(i32* %87, i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @avpriv_align_put_bits(i32* %92)
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @align_get_bits(i32* %94)
  %96 = load i32*, i32** %3, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @ff_pce_copy_bits(i32* %96, i32* %97, i32 8)
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %106, %91
  %100 = load i32, i32* %7, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32*, i32** %3, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @ff_pce_copy_bits(i32* %103, i32* %104, i32 8)
  br label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %7, align 4
  br label %99

109:                                              ; preds = %99
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @put_bits_count(i32* %110)
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 %111, %112
  ret i32 %113
}

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @ff_pce_copy_bits(i32*, i32*, i32) #1

declare dso_local i32 @avpriv_align_put_bits(i32*) #1

declare dso_local i32 @align_get_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
