; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_neighbor.c_deflate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_neighbor.c_deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i32, i32, i8***, i32, i32)* @deflate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deflate(i8** %0, i8** %1, i32 %2, i32 %3, i8*** %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8***, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8*** %4, i8**** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %70, %7
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  store i32 0, i32* %17, align 4
  %24 = load i8**, i8*** %9, align 8
  %25 = load i32, i32* %15, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr i8, i8* %28, i64 %31
  %33 = ptrtoint i8* %32 to i32
  %34 = call i8* @FFMAX(i32 %33, i32 0)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %40, %23
  %37 = load i32, i32* %16, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39
  %41 = load i8***, i8**** %12, align 8
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %16, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8**, i8*** %41, i64 %44
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %50, i64 %52
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %17, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load i32, i32* %17, align 4
  %57 = sdiv i32 %56, 8
  %58 = load i8**, i8*** %9, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @FFMIN(i32 %57, i8* %62)
  %64 = load i32, i32* %18, align 4
  %65 = call i8* @FFMAX(i32 %63, i32 %64)
  %66 = load i8**, i8*** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  store i8* %65, i8** %69, align 8
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %19

73:                                               ; preds = %19
  ret void
}

declare dso_local i8* @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
