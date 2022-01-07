; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_draw_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_draw_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32, i32, i32*)* @draw_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_line(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i32 @FFABS(i32 %27)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 -1
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sub nsw i32 %34, %35
  %37 = call i32 @FFABS(i32 %36)
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 -1
  store i32 %42, i32* %22, align 4
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %21, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %9
  %47 = load i32, i32* %19, align 4
  br label %51

48:                                               ; preds = %9
  %49 = load i32, i32* %21, align 4
  %50 = sub nsw i32 0, %49
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi i32 [ %47, %46 ], [ %50, %48 ]
  %53 = sdiv i32 %52, 2
  store i32 %53, i32* %23, align 4
  br label %54

54:                                               ; preds = %139, %51
  %55 = load i32*, i32** %18, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = mul nsw i32 %62, 4
  %64 = add nsw i32 %61, %63
  %65 = add nsw i32 %64, 0
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %58, i64 %66
  store i32 %57, i32* %67, align 4
  %68 = load i32*, i32** %18, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 %75, 4
  %77 = add nsw i32 %74, %76
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %71, i64 %79
  store i32 %70, i32* %80, align 4
  %81 = load i32*, i32** %18, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %12, align 4
  %89 = mul nsw i32 %88, 4
  %90 = add nsw i32 %87, %89
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %84, i64 %92
  store i32 %83, i32* %93, align 4
  %94 = load i32*, i32** %18, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %11, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %12, align 4
  %102 = mul nsw i32 %101, 4
  %103 = add nsw i32 %100, %102
  %104 = add nsw i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %97, i64 %105
  store i32 %96, i32* %106, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %54
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %140

115:                                              ; preds = %110, %54
  %116 = load i32, i32* %23, align 4
  store i32 %116, i32* %24, align 4
  %117 = load i32, i32* %24, align 4
  %118 = load i32, i32* %19, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp sgt i32 %117, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %23, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %23, align 4
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %121, %115
  %129 = load i32, i32* %24, align 4
  %130 = load i32, i32* %21, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %23, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %23, align 4
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %132, %128
  br label %54

140:                                              ; preds = %114
  ret void
}

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
