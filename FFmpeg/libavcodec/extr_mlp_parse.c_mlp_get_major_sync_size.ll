; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlp_parse.c_mlp_get_major_sync_size.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlp_parse.c_mlp_get_major_sync_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mlp_get_major_sync_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlp_get_major_sync_size(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 28, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 28
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @AV_RB32(i32* %13)
  %15 = icmp eq i32 %14, -126718022
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 25
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 26
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %28, 2
  %30 = add nsw i32 2, %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %23, %16
  br label %34

34:                                               ; preds = %33, %12
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @AV_RB32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
