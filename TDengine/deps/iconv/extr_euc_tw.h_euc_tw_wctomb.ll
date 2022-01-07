; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_euc_tw.h_euc_tw_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_euc_tw.h_euc_tw_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @euc_tw_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @euc_tw_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @ascii_wctomb(i32 %12, i8* %13, i32 %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @RET_ILUNI, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %91

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @cns11643_wctomb(i32 %23, i8* %24, i32 %25, i32 3)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @RET_ILUNI, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %89

30:                                               ; preds = %22
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %30
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %44, i32* %5, align 4
  br label %91

45:                                               ; preds = %40
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %48, 128
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %50, i8* %52, align 1
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %55, 128
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8 %57, i8* %59, align 1
  store i32 2, i32* %5, align 4
  br label %91

60:                                               ; preds = %35
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %64, i32* %5, align 4
  br label %91

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 -114, i8* %67, align 1
  %68 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = add nsw i32 %70, 160
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 %72, i8* %74, align 1
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %77, 128
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8 %79, i8* %81, align 1
  %82 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = add nsw i32 %84, 128
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 3
  store i8 %86, i8* %88, align 1
  store i32 4, i32* %5, align 4
  br label %91

89:                                               ; preds = %22
  %90 = load i32, i32* @RET_ILUNI, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %65, %63, %45, %43, %20
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @ascii_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @cns11643_wctomb(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
