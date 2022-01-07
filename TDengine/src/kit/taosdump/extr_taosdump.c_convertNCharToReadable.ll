; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_convertNCharToReadable.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_convertNCharToReadable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_CUR_MAX = common dso_local global i32 0, align 4
@ascii_literal_list = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convertNCharToReadable(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %10, align 8
  br label %15

15:                                               ; preds = %49, %4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %15
  %19 = load i8*, i8** %9, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %54

24:                                               ; preds = %18
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* @MB_CUR_MAX, align 4
  %27 = call i32 @mbtowc(i64* %11, i8* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i64, i64* %11, align 8
  %29 = trunc i64 %28 to i32
  %30 = icmp slt i32 %29, 256
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i8*, i8** %10, align 8
  %33 = load i32*, i32** @ascii_literal_list, align 8
  %34 = load i64, i64* %11, align 8
  %35 = trunc i64 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @stpcpy(i8* %32, i32 %38)
  store i8* %39, i8** %10, align 8
  br label %49

40:                                               ; preds = %24
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @memcpy(i8* %41, i8* %42, i32 %43)
  %45 = load i32, i32* %12, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %10, align 8
  br label %49

49:                                               ; preds = %40, %31
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %9, align 8
  br label %15

54:                                               ; preds = %23, %15
  %55 = load i8*, i8** %10, align 8
  store i8 0, i8* %55, align 1
  ret i32 0
}

declare dso_local i32 @mbtowc(i64*, i8*, i32) #1

declare dso_local i8* @stpcpy(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
