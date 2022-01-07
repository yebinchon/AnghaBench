; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dnxhdenc.c_radix_sort.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dnxhdenc.c_radix_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RADIX_PASSES = common dso_local global i32 0, align 4
@NBUCKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @radix_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radix_sort(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @RADIX_PASSES, align 4
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* @NBUCKETS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = mul nuw i64 %11, %13
  %16 = alloca i32, i64 %15, align 16
  store i64 %11, i64* %8, align 8
  store i64 %13, i64* %9, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = bitcast i32* %16 to i32**
  %20 = call i32 @radix_count(i32* %17, i32 %18, i32** %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i64 0, %13
  %25 = getelementptr inbounds i32, i32* %16, i64 %24
  %26 = call i32 @radix_sort_pass(i32* %21, i32* %22, i32 %23, i32* %25, i32 0)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i64 1, %13
  %31 = getelementptr inbounds i32, i32* %16, i64 %30
  %32 = call i32 @radix_sort_pass(i32* %27, i32* %28, i32 %29, i32* %31, i32 1)
  %33 = mul nsw i64 2, %13
  %34 = getelementptr inbounds i32, i32* %16, i64 %33
  %35 = load i32, i32* @NBUCKETS, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %3
  %42 = mul nsw i64 3, %13
  %43 = getelementptr inbounds i32, i32* %16, i64 %42
  %44 = load i32, i32* @NBUCKETS, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %41, %3
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i64 2, %13
  %55 = getelementptr inbounds i32, i32* %16, i64 %54
  %56 = call i32 @radix_sort_pass(i32* %51, i32* %52, i32 %53, i32* %55, i32 2)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i64 3, %13
  %61 = getelementptr inbounds i32, i32* %16, i64 %60
  %62 = call i32 @radix_sort_pass(i32* %57, i32* %58, i32 %59, i32* %61, i32 3)
  br label %63

63:                                               ; preds = %50, %41
  %64 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @radix_count(i32*, i32, i32**) #2

declare dso_local i32 @radix_sort_pass(i32*, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
