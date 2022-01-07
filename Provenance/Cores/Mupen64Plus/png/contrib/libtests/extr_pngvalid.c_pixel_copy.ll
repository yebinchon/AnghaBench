; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_pixel_copy.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_pixel_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32)* @pixel_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pixel_copy(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul i32 %17, %16
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = mul i32 %20, %19
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ult i32 %22, 8
  br i1 %23, label %24, label %106

24:                                               ; preds = %6
  %25 = load i32, i32* %11, align 4
  %26 = shl i32 1, %25
  %27 = sub i32 %26, 1
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 7
  br label %39

33:                                               ; preds = %24
  %34 = load i32, i32* %11, align 4
  %35 = sub i32 8, %34
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 7
  %38 = sub i32 %35, %37
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i32 [ %32, %30 ], [ %38, %33 ]
  %41 = shl i32 %27, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = lshr i32 %43, 3
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = lshr i32 %52, 3
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 7
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %39
  %62 = load i32, i32* %10, align 4
  %63 = icmp ugt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %15, align 4
  %67 = lshr i32 %66, %65
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 7
  %71 = icmp ugt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, 7
  %75 = load i32, i32* %15, align 4
  %76 = shl i32 %75, %74
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %72, %68
  br label %95

78:                                               ; preds = %39
  %79 = load i32, i32* %10, align 4
  %80 = icmp ugt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %15, align 4
  %84 = shl i32 %83, %82
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, 7
  %88 = icmp ugt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 7
  %92 = load i32, i32* %15, align 4
  %93 = lshr i32 %92, %91
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %89, %85
  br label %95

95:                                               ; preds = %94, %77
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %13, align 4
  %99 = and i32 %97, %98
  %100 = or i32 %96, %99
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = lshr i32 %102, 3
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32 %100, i32* %105, align 4
  br label %120

106:                                              ; preds = %6
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = lshr i32 %108, 3
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %10, align 4
  %114 = lshr i32 %113, 3
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %11, align 4
  %118 = lshr i32 %117, 3
  %119 = call i32 @memmove(i32* %111, i32* %116, i32 %118)
  br label %120

120:                                              ; preds = %106, %95
  ret void
}

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
