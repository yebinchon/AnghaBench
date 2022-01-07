; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf16le.h_utf16le_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf16le.h_utf16le_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_TOOSMALL = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @utf16le_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf16le_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sge i32 %12, 55296
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 57344
  br i1 %16, label %72, label %17

17:                                               ; preds = %14, %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 65536
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 2
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 %25, i8* %27, align 1
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 8
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %30, i8* %32, align 1
  store i32 2, i32* %5, align 4
  br label %74

33:                                               ; preds = %20
  %34 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %34, i32* %5, align 4
  br label %74

35:                                               ; preds = %17
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 1114112
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %39, 4
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 65536
  %44 = ashr i32 %43, 10
  %45 = add nsw i32 55296, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 65536
  %48 = and i32 %47, 1023
  %49 = add nsw i32 56320, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 %51, i8* %53, align 1
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %54, 8
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 %56, i8* %58, align 1
  %59 = load i32, i32* %11, align 4
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  store i8 %60, i8* %62, align 1
  %63 = load i32, i32* %11, align 4
  %64 = ashr i32 %63, 8
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  store i8 %65, i8* %67, align 1
  store i32 4, i32* %5, align 4
  br label %74

68:                                               ; preds = %38
  %69 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %69, i32* %5, align 4
  br label %74

70:                                               ; preds = %35
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %14
  %73 = load i32, i32* @RET_ILUNI, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %68, %41, %33, %23
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
