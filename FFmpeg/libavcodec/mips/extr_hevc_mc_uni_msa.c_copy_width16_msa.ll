; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_copy_width16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_copy_width16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @copy_width16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_width16_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
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
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 12, %20
  br i1 %21, label %22, label %79

22:                                               ; preds = %5
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %19, align 4
  %33 = call i32 @LD_UB8(i32* %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 8, %34
  %36 = load i32*, i32** %6, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %6, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %19, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @ST_UB8(i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32* %47, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 8, %50
  %52 = load i32*, i32** %8, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @LD_UB4(i32* %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 4, %62
  %64 = load i32*, i32** %6, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ST_UB4(i32 %67, i32 %68, i32 %69, i32 %70, i32* %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 4, %74
  %76 = load i32*, i32** %8, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %8, align 8
  br label %163

79:                                               ; preds = %5
  %80 = load i32, i32* %10, align 4
  %81 = srem i32 %80, 8
  %82 = icmp eq i32 0, %81
  br i1 %82, label %83, label %124

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = ashr i32 %84, 3
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %90, %83
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %11, align 4
  %89 = icmp ne i32 %87, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %86
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %19, align 4
  %101 = call i32 @LD_UB8(i32* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 8, %102
  %104 = load i32*, i32** %6, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %6, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %19, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @ST_UB8(i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32* %115, i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 8, %118
  %120 = load i32*, i32** %8, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %8, align 8
  br label %86

123:                                              ; preds = %86
  br label %162

124:                                              ; preds = %79
  %125 = load i32, i32* %10, align 4
  %126 = srem i32 %125, 4
  %127 = icmp eq i32 0, %126
  br i1 %127, label %128, label %161

128:                                              ; preds = %124
  %129 = load i32, i32* %10, align 4
  %130 = ashr i32 %129, 2
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %135, %128
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %11, align 4
  %134 = icmp ne i32 %132, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %131
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @LD_UB4(i32* %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %7, align 4
  %144 = mul nsw i32 4, %143
  %145 = load i32*, i32** %6, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %6, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @ST_UB4(i32 %148, i32 %149, i32 %150, i32 %151, i32* %152, i32 %153)
  %155 = load i32, i32* %9, align 4
  %156 = mul nsw i32 4, %155
  %157 = load i32*, i32** %8, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %8, align 8
  br label %131

160:                                              ; preds = %131
  br label %161

161:                                              ; preds = %160, %124
  br label %162

162:                                              ; preds = %161, %123
  br label %163

163:                                              ; preds = %162, %22
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB8(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
