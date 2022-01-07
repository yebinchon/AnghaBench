; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_kempf_restore_buf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_kempf_restore_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32*, i32, i32)* @kempf_restore_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempf_restore_buf(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %31 = load i32, i32* %19, align 4
  %32 = call i32 @FFALIGN(i32 %31, i32 16)
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @init_get_bits8(i32* %24, i32* %33, i32 %34)
  store i32 %35, i32* %29, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %11
  %38 = load i32, i32* %29, align 4
  store i32 %38, i32* %12, align 4
  br label %121

39:                                               ; preds = %11
  %40 = load i32, i32* %22, align 4
  %41 = icmp sle i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %27, align 4
  br label %54

43:                                               ; preds = %39
  %44 = load i32, i32* %22, align 4
  %45 = icmp sle i32 %44, 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 2, i32* %27, align 4
  br label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %22, align 4
  %49 = icmp sle i32 %48, 16
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 4, i32* %27, align 4
  br label %52

51:                                               ; preds = %47
  store i32 8, i32* %27, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %46
  br label %54

54:                                               ; preds = %53, %42
  store i32 0, i32* %26, align 4
  br label %55

55:                                               ; preds = %109, %54
  %56 = load i32, i32* %26, align 4
  %57 = load i32, i32* %20, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %120

59:                                               ; preds = %55
  %60 = call i32 @get_bits(i32* %24, i32 8)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %109

63:                                               ; preds = %59
  store i32 0, i32* %25, align 4
  br label %64

64:                                               ; preds = %99, %63
  %65 = load i32, i32* %25, align 4
  %66 = load i32, i32* %19, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %102

68:                                               ; preds = %64
  %69 = load i32, i32* %27, align 4
  %70 = call i32 @get_bits(i32* %24, i32 %69)
  store i32 %70, i32* %28, align 4
  %71 = load i32, i32* %28, align 4
  %72 = load i32, i32* %23, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %25, align 4
  %77 = mul nsw i32 %76, 3
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32*, i32** %21, align 8
  %81 = load i32, i32* %28, align 4
  %82 = mul nsw i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = call i32 @memcpy(i32* %79, i32* %84, i32 3)
  br label %98

86:                                               ; preds = %68
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %25, align 4
  %89 = mul nsw i32 %88, 3
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* %25, align 4
  %94 = mul nsw i32 %93, 3
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = call i32 @memcpy(i32* %91, i32* %96, i32 3)
  br label %98

98:                                               ; preds = %86, %74
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %25, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %25, align 4
  br label %64

102:                                              ; preds = %64
  %103 = load i32, i32* %27, align 4
  %104 = load i32, i32* %30, align 4
  %105 = load i32, i32* %19, align 4
  %106 = sub nsw i32 %104, %105
  %107 = mul nsw i32 %103, %106
  %108 = call i32 @skip_bits_long(i32* %24, i32 %107)
  br label %109

109:                                              ; preds = %102, %62
  %110 = load i32, i32* %26, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %26, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32*, i32** %15, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %15, align 8
  %116 = load i32, i32* %18, align 4
  %117 = load i32*, i32** %17, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %17, align 8
  br label %55

120:                                              ; preds = %55
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %120, %37
  %122 = load i32, i32* %12, align 4
  ret i32 %122
}

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
