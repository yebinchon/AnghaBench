; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_md5.c_md5_hash.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_md5.c_md5_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md5_hash(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 1732584193, i32* %11, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 -271733879, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  store i32 -1732584194, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  store i32 271733878, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 64
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @md5_compress(i32* %18, i32 %20, i32* %21)
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  store i32* %23, i32** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = srem i32 %24, 64
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @memcpy(i32* %26, i32* %34, i32 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 128, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 64, %43
  %45 = icmp sge i32 %44, 8
  br i1 %45, label %46, label %54

46:                                               ; preds = %3
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 56, %51
  %53 = call i32 @bzero(i32* %50, i32 %52)
  br label %67

54:                                               ; preds = %3
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 64, %59
  %61 = call i32 @memset(i32* %58, i32 0, i32 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %64 = call i32 @md5_compress(i32* %62, i32 1, i32* %63)
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %66 = call i32 @bzero(i32* %65, i32 56)
  br label %67

67:                                               ; preds = %54, %46
  %68 = load i32, i32* %5, align 4
  %69 = shl i32 %68, 3
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 14
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = ashr i32 %71, 29
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 15
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %76 = call i32 @md5_compress(i32* %74, i32 1, i32* %75)
  ret void
}

declare dso_local i32 @md5_compress(i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
