; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_viscii.h_viscii_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_viscii.h_viscii_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@viscii_page00 = common dso_local global i8* null, align 8
@viscii_page1e = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @viscii_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viscii_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 32
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 1, %17
  %19 = and i32 1108344932, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %13
  %22 = load i32, i32* %8, align 4
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %7, align 8
  store i8 %23, i8* %24, align 1
  store i32 1, i32* %5, align 4
  br label %62

25:                                               ; preds = %16, %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sge i32 %26, 192
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 440
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8*, i8** @viscii_page00, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 192
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %10, align 1
  br label %52

38:                                               ; preds = %28, %25
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 7840
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 7936
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i8*, i8** @viscii_page1e, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 7840
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %10, align 1
  br label %51

51:                                               ; preds = %44, %41, %38
  br label %52

52:                                               ; preds = %51, %31
  br label %53

53:                                               ; preds = %52
  %54 = load i8, i8* %10, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8, i8* %10, align 1
  %59 = load i8*, i8** %7, align 8
  store i8 %58, i8* %59, align 1
  store i32 1, i32* %5, align 4
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @RET_ILUNI, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %57, %21
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
