; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideoencdsp.c_shrink22.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideoencdsp.c_shrink22.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32)* @shrink22 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shrink22(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  br label %17

17:                                               ; preds = %160, %6
  %18 = load i32, i32* %12, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %163

20:                                               ; preds = %17
  %21 = load i32*, i32** %9, align 8
  store i32* %21, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %15, align 8
  %26 = load i32*, i32** %7, align 8
  store i32* %26, i32** %16, align 8
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %114, %20
  %29 = load i32, i32* %13, align 4
  %30 = icmp sge i32 %29, 4
  br i1 %30, label %31, label %117

31:                                               ; preds = %28
  %32 = load i32*, i32** %14, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %14, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = load i32*, i32** %15, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = load i32*, i32** %15, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = add nsw i32 %46, 2
  %48 = ashr i32 %47, 2
  %49 = load i32*, i32** %16, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = load i32*, i32** %15, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load i32*, i32** %15, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = add nsw i32 %65, 2
  %67 = ashr i32 %66, 2
  %68 = load i32*, i32** %16, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = load i32*, i32** %15, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  %81 = load i32*, i32** %15, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  %85 = add nsw i32 %84, 2
  %86 = ashr i32 %85, 2
  %87 = load i32*, i32** %16, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %14, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 6
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %14, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 7
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  %96 = load i32*, i32** %15, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 6
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = load i32*, i32** %15, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 7
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = add nsw i32 %103, 2
  %105 = ashr i32 %104, 2
  %106 = load i32*, i32** %16, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %14, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 8
  store i32* %109, i32** %14, align 8
  %110 = load i32*, i32** %15, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 8
  store i32* %111, i32** %15, align 8
  %112 = load i32*, i32** %16, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  store i32* %113, i32** %16, align 8
  br label %114

114:                                              ; preds = %31
  %115 = load i32, i32* %13, align 4
  %116 = sub nsw i32 %115, 4
  store i32 %116, i32* %13, align 4
  br label %28

117:                                              ; preds = %28
  br label %118

118:                                              ; preds = %147, %117
  %119 = load i32, i32* %13, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %118
  %122 = load i32*, i32** %14, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %14, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %124, %127
  %129 = load i32*, i32** %15, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %128, %131
  %133 = load i32*, i32** %15, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %132, %135
  %137 = add nsw i32 %136, 2
  %138 = ashr i32 %137, 2
  %139 = load i32*, i32** %16, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 %138, i32* %140, align 4
  %141 = load i32*, i32** %14, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  store i32* %142, i32** %14, align 8
  %143 = load i32*, i32** %15, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  store i32* %144, i32** %15, align 8
  %145 = load i32*, i32** %16, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %16, align 8
  br label %147

147:                                              ; preds = %121
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %13, align 4
  br label %118

150:                                              ; preds = %118
  %151 = load i32, i32* %10, align 4
  %152 = mul nsw i32 2, %151
  %153 = load i32*, i32** %9, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %9, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %7, align 8
  br label %160

160:                                              ; preds = %150
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %12, align 4
  br label %17

163:                                              ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
