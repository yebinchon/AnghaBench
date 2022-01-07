; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_aes.c_init_multbl2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_aes.c_init_multbl2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([256 x i32]*, i32*, i32*, i32*, i32*)* @init_multbl2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_multbl2([256 x i32]* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca [256 x i32]*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store [256 x i32]* %0, [256 x i32]** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %139, %5
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %142

20:                                               ; preds = %17
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %138

28:                                               ; preds = %20
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %35, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %34, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %13, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %48, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %47, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %61, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %60, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %15, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %74, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %73, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @MKBETAG(i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @MKTAG(i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = call i32 @AV_NE(i32 %90, i32 %95)
  %97 = load [256 x i32]*, [256 x i32]** %6, align 8
  %98 = getelementptr inbounds [256 x i32], [256 x i32]* %97, i64 0
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [256 x i32], [256 x i32]* %98, i64 0, i64 %100
  store i32 %96, i32* %101, align 4
  %102 = load [256 x i32]*, [256 x i32]** %6, align 8
  %103 = getelementptr inbounds [256 x i32], [256 x i32]* %102, i64 0
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [256 x i32], [256 x i32]* %103, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ROT(i32 %107, i32 8)
  %109 = load [256 x i32]*, [256 x i32]** %6, align 8
  %110 = getelementptr inbounds [256 x i32], [256 x i32]* %109, i64 1
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [256 x i32], [256 x i32]* %110, i64 0, i64 %112
  store i32 %108, i32* %113, align 4
  %114 = load [256 x i32]*, [256 x i32]** %6, align 8
  %115 = getelementptr inbounds [256 x i32], [256 x i32]* %114, i64 0
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [256 x i32], [256 x i32]* %115, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ROT(i32 %119, i32 16)
  %121 = load [256 x i32]*, [256 x i32]** %6, align 8
  %122 = getelementptr inbounds [256 x i32], [256 x i32]* %121, i64 2
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [256 x i32], [256 x i32]* %122, i64 0, i64 %124
  store i32 %120, i32* %125, align 4
  %126 = load [256 x i32]*, [256 x i32]** %6, align 8
  %127 = getelementptr inbounds [256 x i32], [256 x i32]* %126, i64 0
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [256 x i32], [256 x i32]* %127, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ROT(i32 %131, i32 24)
  %133 = load [256 x i32]*, [256 x i32]** %6, align 8
  %134 = getelementptr inbounds [256 x i32], [256 x i32]* %133, i64 3
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [256 x i32], [256 x i32]* %134, i64 0, i64 %136
  store i32 %132, i32* %137, align 4
  br label %138

138:                                              ; preds = %28, %20
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %17

142:                                              ; preds = %17
  ret void
}

declare dso_local i32 @AV_NE(i32, i32) #1

declare dso_local i32 @MKBETAG(i32, i32, i32, i32) #1

declare dso_local i32 @MKTAG(i32, i32, i32, i32) #1

declare dso_local i32 @ROT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
