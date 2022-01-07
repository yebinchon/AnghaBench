; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_fix_anchor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_fix_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pfr_fix_anchor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfr_fix_anchor(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i64, i64* @MAXPATHLEN, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 47
  br i1 %13, label %14, label %42

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  store i8* %15, i8** %6, align 8
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %22, %14
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 47
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %16

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %28, %30
  %32 = call i32 @bcopy(i8* %26, i8* %27, i64 %31)
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @memset(i8* %39, i32 0, i32 %40)
  br label %42

42:                                               ; preds = %25, %1
  %43 = load i8*, i8** %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 -1, i32* %2, align 4
  br label %71

50:                                               ; preds = %42
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @strlen(i8* %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %67, %50
  %54 = load i32, i32* %5, align 4
  %55 = load i64, i64* %4, align 8
  %56 = trunc i64 %55 to i32
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 -1, i32* %2, align 4
  br label %71

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %53

70:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %65, %49
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
