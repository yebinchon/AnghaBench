; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_twofish.c_tf_RS.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_twofish.c_tf_RS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @tf_RS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tf_RS(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca [8 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @AV_WL32(i32* %7, i32 %8)
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %11 = getelementptr inbounds i32, i32* %10, i64 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @AV_WL32(i32* %11, i32 %12)
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %15 = load i32, i32* %14, align 16
  %16 = call i32 @gfmul(i32 1, i32 %15)
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gfmul(i32 164, i32 %18)
  %20 = xor i32 %16, %19
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @gfmul(i32 85, i32 %22)
  %24 = xor i32 %20, %23
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gfmul(i32 135, i32 %26)
  %28 = xor i32 %24, %27
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %30 = load i32, i32* %29, align 16
  %31 = call i32 @gfmul(i32 90, i32 %30)
  %32 = xor i32 %28, %31
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gfmul(i32 88, i32 %34)
  %36 = xor i32 %32, %35
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @gfmul(i32 219, i32 %38)
  %40 = xor i32 %36, %39
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gfmul(i32 158, i32 %42)
  %44 = xor i32 %40, %43
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %44, i32* %45, align 16
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %47 = load i32, i32* %46, align 16
  %48 = call i32 @gfmul(i32 164, i32 %47)
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gfmul(i32 86, i32 %50)
  %52 = xor i32 %48, %51
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @gfmul(i32 130, i32 %54)
  %56 = xor i32 %52, %55
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @gfmul(i32 243, i32 %58)
  %60 = xor i32 %56, %59
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %62 = load i32, i32* %61, align 16
  %63 = call i32 @gfmul(i32 30, i32 %62)
  %64 = xor i32 %60, %63
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @gfmul(i32 198, i32 %66)
  %68 = xor i32 %64, %67
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @gfmul(i32 104, i32 %70)
  %72 = xor i32 %68, %71
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gfmul(i32 229, i32 %74)
  %76 = xor i32 %72, %75
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %79 = load i32, i32* %78, align 16
  %80 = call i32 @gfmul(i32 2, i32 %79)
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @gfmul(i32 161, i32 %82)
  %84 = xor i32 %80, %83
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @gfmul(i32 252, i32 %86)
  %88 = xor i32 %84, %87
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @gfmul(i32 193, i32 %90)
  %92 = xor i32 %88, %91
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %94 = load i32, i32* %93, align 16
  %95 = call i32 @gfmul(i32 71, i32 %94)
  %96 = xor i32 %92, %95
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @gfmul(i32 174, i32 %98)
  %100 = xor i32 %96, %99
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @gfmul(i32 61, i32 %102)
  %104 = xor i32 %100, %103
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @gfmul(i32 25, i32 %106)
  %108 = xor i32 %104, %107
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %108, i32* %109, align 8
  %110 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %111 = load i32, i32* %110, align 16
  %112 = call i32 @gfmul(i32 164, i32 %111)
  %113 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @gfmul(i32 85, i32 %114)
  %116 = xor i32 %112, %115
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @gfmul(i32 135, i32 %118)
  %120 = xor i32 %116, %119
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @gfmul(i32 90, i32 %122)
  %124 = xor i32 %120, %123
  %125 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %126 = load i32, i32* %125, align 16
  %127 = call i32 @gfmul(i32 88, i32 %126)
  %128 = xor i32 %124, %127
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @gfmul(i32 219, i32 %130)
  %132 = xor i32 %128, %131
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @gfmul(i32 158, i32 %134)
  %136 = xor i32 %132, %135
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @gfmul(i32 3, i32 %138)
  %140 = xor i32 %136, %139
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %140, i32* %141, align 4
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %143 = call i32 @AV_RL32(i32* %142)
  ret i32 %143
}

declare dso_local i32 @AV_WL32(i32*, i32) #1

declare dso_local i32 @gfmul(i32, i32) #1

declare dso_local i32 @AV_RL32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
