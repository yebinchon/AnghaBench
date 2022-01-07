; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_me_cmp_alpha.c_pix_abs16x16_xy2_mvi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_me_cmp_alpha.c_pix_abs16x16_xy2_mvi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*, i32, i32)* @pix_abs16x16_xy2_mvi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_abs16x16_xy2_mvi(i8* %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load i64*, i64** %7, align 8
  %23 = call i32 @ldq(i64* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i64*, i64** %7, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 8
  %26 = call i32 @ldq(i64* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i64*, i64** %8, align 8
  %28 = ptrtoint i64* %27 to i64
  %29 = and i64 %28, 7
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %5
  %32 = load i64*, i64** %8, align 8
  %33 = call i32 @uldq(i64* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i64*, i64** %8, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 8
  %36 = call i32 @uldq(i64* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i64*, i64** %8, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 16
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 56
  store i32 %41, i32* %16, align 4
  br label %52

42:                                               ; preds = %5
  %43 = load i64*, i64** %8, align 8
  %44 = call i32 @ldq(i64* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i64*, i64** %8, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 8
  %47 = call i32 @ldq(i64* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i64*, i64** %8, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 16
  %50 = call i32 @ldq(i64* %49)
  %51 = shl i32 %50, 56
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %42, %31
  br label %53

53:                                               ; preds = %131, %52
  %54 = load i32, i32* %9, align 4
  %55 = load i64*, i64** %7, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64* %57, i64** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i64*, i64** %8, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64* %61, i64** %8, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = call i32 @ldq(i64* %62)
  store i32 %63, i32* %17, align 4
  %64 = load i64*, i64** %7, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 8
  %66 = call i32 @ldq(i64* %65)
  store i32 %66, i32* %18, align 4
  %67 = load i64*, i64** %8, align 8
  %68 = ptrtoint i64* %67 to i64
  %69 = and i64 %68, 7
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %53
  %72 = load i64*, i64** %8, align 8
  %73 = call i32 @uldq(i64* %72)
  store i32 %73, i32* %19, align 4
  %74 = load i64*, i64** %8, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 8
  %76 = call i32 @uldq(i64* %75)
  store i32 %76, i32* %20, align 4
  %77 = load i64*, i64** %8, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 16
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %80, 56
  store i32 %81, i32* %21, align 4
  br label %92

82:                                               ; preds = %53
  %83 = load i64*, i64** %8, align 8
  %84 = call i32 @ldq(i64* %83)
  store i32 %84, i32* %19, align 4
  %85 = load i64*, i64** %8, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 8
  %87 = call i32 @ldq(i64* %86)
  store i32 %87, i32* %20, align 4
  %88 = load i64*, i64** %8, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 16
  %90 = call i32 @ldq(i64* %89)
  %91 = shl i32 %90, 56
  store i32 %91, i32* %21, align 4
  br label %92

92:                                               ; preds = %82, %71
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = ashr i32 %95, 8
  %97 = load i32, i32* %15, align 4
  %98 = shl i32 %97, 56
  %99 = or i32 %96, %98
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %19, align 4
  %102 = ashr i32 %101, 8
  %103 = load i32, i32* %20, align 4
  %104 = shl i32 %103, 56
  %105 = or i32 %102, %104
  %106 = call i32 @avg4(i32 %94, i32 %99, i32 %100, i32 %105)
  %107 = call i64 @perr(i32 %93, i32 %106)
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = ashr i32 %110, 8
  %112 = load i32, i32* %16, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %20, align 4
  %116 = ashr i32 %115, 8
  %117 = load i32, i32* %21, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @avg4(i32 %109, i32 %113, i32 %114, i32 %118)
  %120 = call i64 @perr(i32 %108, i32 %119)
  %121 = add nsw i64 %107, %120
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %17, align 4
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %18, align 4
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %19, align 4
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %20, align 4
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %21, align 4
  store i32 %130, i32* %16, align 4
  br label %131

131:                                              ; preds = %92
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %53, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  ret i32 %136
}

declare dso_local i32 @ldq(i64*) #1

declare dso_local i32 @uldq(i64*) #1

declare dso_local i64 @perr(i32, i32) #1

declare dso_local i32 @avg4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
