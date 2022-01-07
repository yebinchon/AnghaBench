; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_draw_rline.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_draw_rline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32, i32)* @draw_rline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_rline(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
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
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %23, %24
  %26 = call i32 @FFABS(i32 %25)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 -1
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %12, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32 @FFABS(i32 %34)
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 -1
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %19, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %8
  %45 = load i32, i32* %17, align 4
  br label %49

46:                                               ; preds = %8
  %47 = load i32, i32* %19, align 4
  %48 = sub nsw i32 0, %47
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i32 [ %45, %44 ], [ %48, %46 ]
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %21, align 4
  br label %52

52:                                               ; preds = %161, %49
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %57, 4
  %59 = add nsw i32 %56, %58
  %60 = add nsw i32 %59, 0
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %53, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 65535, %63
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 %69, 4
  %71 = add nsw i32 %68, %70
  %72 = add nsw i32 %71, 0
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %65, i64 %73
  store i32 %64, i32* %74, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %11, align 4
  %80 = mul nsw i32 %79, 4
  %81 = add nsw i32 %78, %80
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %75, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 65535, %85
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %10, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = mul nsw i32 %91, 4
  %93 = add nsw i32 %90, %92
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %87, i64 %95
  store i32 %86, i32* %96, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %10, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %11, align 4
  %102 = mul nsw i32 %101, 4
  %103 = add nsw i32 %100, %102
  %104 = add nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %97, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 65535, %107
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %10, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %11, align 4
  %114 = mul nsw i32 %113, 4
  %115 = add nsw i32 %112, %114
  %116 = add nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %109, i64 %117
  store i32 %108, i32* %118, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %10, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %11, align 4
  %124 = mul nsw i32 %123, 4
  %125 = add nsw i32 %122, %124
  %126 = add nsw i32 %125, 3
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %119, i64 %127
  store i32 65535, i32* %128, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %52
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %162

137:                                              ; preds = %132, %52
  %138 = load i32, i32* %21, align 4
  store i32 %138, i32* %22, align 4
  %139 = load i32, i32* %22, align 4
  %140 = load i32, i32* %17, align 4
  %141 = sub nsw i32 0, %140
  %142 = icmp sgt i32 %139, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %21, align 4
  %146 = sub nsw i32 %145, %144
  store i32 %146, i32* %21, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %143, %137
  %151 = load i32, i32* %22, align 4
  %152 = load i32, i32* %19, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %21, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %21, align 4
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %154, %150
  br label %52

162:                                              ; preds = %136
  ret void
}

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
