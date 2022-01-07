; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Bra.c_SPARC_Convert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Bra.c_SPARC_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SPARC_Convert(i32* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %144

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = sub i64 %17, 4
  store i64 %18, i64* %7, align 8
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %139, %16
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ule i64 %20, %21
  br i1 %22, label %23, label %142

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 64
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %31, 1
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 192
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %29, %23
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 127
  br i1 %42, label %43, label %138

43:                                               ; preds = %37
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 192
  %50 = icmp eq i32 %49, 192
  br i1 %50, label %51, label %138

51:                                               ; preds = %43, %29
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 0
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = shl i64 %57, 24
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = shl i64 %64, 16
  %66 = or i64 %58, %65
  %67 = load i32*, i32** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 2
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = shl i64 %72, 8
  %74 = or i64 %66, %73
  %75 = load i32*, i32** %6, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, 3
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = or i64 %74, %80
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = shl i64 %82, 2
  store i64 %83, i64* %11, align 8
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %51
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %87, %88
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %89, %90
  store i64 %91, i64* %12, align 8
  br label %98

92:                                               ; preds = %51
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %94, %95
  %97 = sub i64 %93, %96
  store i64 %97, i64* %12, align 8
  br label %98

98:                                               ; preds = %92, %86
  %99 = load i64, i64* %12, align 8
  %100 = lshr i64 %99, 2
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = lshr i64 %101, 22
  %103 = and i64 %102, 1
  %104 = sub i64 0, %103
  %105 = shl i64 %104, 22
  %106 = and i64 %105, 1073741823
  %107 = load i64, i64* %12, align 8
  %108 = and i64 %107, 4194303
  %109 = or i64 %106, %108
  %110 = or i64 %109, 1073741824
  store i64 %110, i64* %12, align 8
  %111 = load i64, i64* %12, align 8
  %112 = lshr i64 %111, 24
  %113 = trunc i64 %112 to i32
  %114 = load i32*, i32** %6, align 8
  %115 = load i64, i64* %10, align 8
  %116 = add i64 %115, 0
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  %118 = load i64, i64* %12, align 8
  %119 = lshr i64 %118, 16
  %120 = trunc i64 %119 to i32
  %121 = load i32*, i32** %6, align 8
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, 1
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  %125 = load i64, i64* %12, align 8
  %126 = lshr i64 %125, 8
  %127 = trunc i64 %126 to i32
  %128 = load i32*, i32** %6, align 8
  %129 = load i64, i64* %10, align 8
  %130 = add i64 %129, 2
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  %132 = load i64, i64* %12, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i32*, i32** %6, align 8
  %135 = load i64, i64* %10, align 8
  %136 = add i64 %135, 3
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %98, %43, %37
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %10, align 8
  %141 = add i64 %140, 4
  store i64 %141, i64* %10, align 8
  br label %19

142:                                              ; preds = %19
  %143 = load i64, i64* %10, align 8
  store i64 %143, i64* %5, align 8
  br label %144

144:                                              ; preds = %142, %15
  %145 = load i64, i64* %5, align 8
  ret i64 %145
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
