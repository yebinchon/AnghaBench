; ModuleID = '/home/carl/AnghaBench/Cinder/src/linebreak/extr_linebreak.c_lb_get_next_char_utf8.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/linebreak/extr_linebreak.c_lb_get_next_char_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lb_get_next_char_utf8(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ule i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EOS, align 4
  store i32 %21, i32* %4, align 4
  br label %143

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 194
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 244
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %22
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %143

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 224
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 2
  %45 = load i64, i64* %6, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @EOS, align 4
  store i32 %48, i32* %4, align 4
  br label %143

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 31
  %52 = shl i32 %51, 6
  %53 = load i32*, i32** %5, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 63
  %60 = add nsw i32 %52, %59
  store i32 %60, i32* %9, align 4
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 2
  store i64 %63, i64* %61, align 8
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %143

65:                                               ; preds = %38
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 240
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 3
  %72 = load i64, i64* %6, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @EOS, align 4
  store i32 %75, i32* %4, align 4
  br label %143

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 15
  %79 = shl i32 %78, 12
  %80 = load i32*, i32** %5, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 63
  %87 = shl i32 %86, 6
  %88 = add nsw i32 %79, %87
  %89 = load i32*, i32** %5, align 8
  %90 = load i64*, i64** %7, align 8
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 2
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 63
  %96 = add nsw i32 %88, %95
  store i32 %96, i32* %9, align 4
  %97 = load i64*, i64** %7, align 8
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 3
  store i64 %99, i64* %97, align 8
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %143

101:                                              ; preds = %65
  %102 = load i64*, i64** %7, align 8
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 4
  %105 = load i64, i64* %6, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @EOS, align 4
  store i32 %108, i32* %4, align 4
  br label %143

109:                                              ; preds = %101
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, 7
  %112 = shl i32 %111, 18
  %113 = load i32*, i32** %5, align 8
  %114 = load i64*, i64** %7, align 8
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 1
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 63
  %120 = shl i32 %119, 12
  %121 = add nsw i32 %112, %120
  %122 = load i32*, i32** %5, align 8
  %123 = load i64*, i64** %7, align 8
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, 2
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 63
  %129 = shl i32 %128, 6
  %130 = add nsw i32 %121, %129
  %131 = load i32*, i32** %5, align 8
  %132 = load i64*, i64** %7, align 8
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, 3
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 63
  %138 = add nsw i32 %130, %137
  store i32 %138, i32* %9, align 4
  %139 = load i64*, i64** %7, align 8
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %140, 4
  store i64 %141, i64* %139, align 8
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %109, %107, %76, %74, %49, %47, %33, %20
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
