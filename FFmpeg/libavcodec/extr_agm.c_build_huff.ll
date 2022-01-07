; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_build_huff.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_build_huff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INIT_VLC_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @build_huff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_huff(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [256 x i32], align 16
  %7 = alloca [256 x i32], align 16
  %8 = alloca [256 x i32], align 16
  %9 = alloca [256 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %15 = call i32 @make_new_tree(i32* %13, i32* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %54, %20
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %24, label %57

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %24
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 %38
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %49
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %31, %24
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %21

57:                                               ; preds = %21
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @ff_free_vlc(i32* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %63 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %64 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %65 = load i32, i32* @INIT_VLC_LE, align 4
  %66 = call i32 @ff_init_vlc_sparse(i32* %60, i32 13, i32 %61, i32* %62, i32 1, i32 1, i32* %63, i32 4, i32 4, i32* %64, i32 1, i32 1, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %57, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @make_new_tree(i32*, i32*) #1

declare dso_local i32 @ff_free_vlc(i32*) #1

declare dso_local i32 @ff_init_vlc_sparse(i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
