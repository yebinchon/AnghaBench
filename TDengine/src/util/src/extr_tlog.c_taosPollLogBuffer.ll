; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tlog.c_taosPollLogBuffer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tlog.c_taosPollLogBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosPollLogBuffer(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @LOG_BUF_START(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @LOG_BUF_END(i32* %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %88

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @MIN(i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @LOG_BUF_BUFFER(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @memcpy(i8* %30, i64 %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %88

39:                                               ; preds = %20
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @LOG_BUF_SIZE(i32* %41)
  %43 = add nsw i32 %40, %42
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @MIN(i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @LOG_BUF_SIZE(i32* %49)
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = icmp sgt i32 %48, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %39
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @LOG_BUF_SIZE(i32* %55)
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %11, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @LOG_BUF_BUFFER(i32* %60)
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @memcpy(i8* %59, i64 %64, i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32*, i32** %5, align 8
  %72 = call i64 @LOG_BUF_BUFFER(i32* %71)
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %73, %74
  %76 = call i32 @memcpy(i8* %70, i64 %72, i32 %75)
  br label %86

77:                                               ; preds = %39
  %78 = load i8*, i8** %6, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i64 @LOG_BUF_BUFFER(i32* %79)
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @memcpy(i8* %78, i64 %83, i32 %84)
  br label %86

86:                                               ; preds = %77, %54
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %24, %19
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @LOG_BUF_START(i32*) #1

declare dso_local i32 @LOG_BUF_END(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i64 @LOG_BUF_BUFFER(i32*) #1

declare dso_local i32 @LOG_BUF_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
