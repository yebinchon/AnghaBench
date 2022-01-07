; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/libkern/extr_url_encode.c_url_decode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/libkern/extr_url_encode.c_url_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @url_decode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %70

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %69, %8
  %10 = load i8*, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %70

13:                                               ; preds = %9
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %66

18:                                               ; preds = %13
  store i8 0, i8* %3, align 1
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %2, align 8
  store i8* %19, i8** %4, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %2, align 8
  %27 = load i8, i8* %25, align 1
  %28 = sext i8 %27 to i32
  %29 = call signext i8 @hex2int(i32 %28)
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %3, align 1
  %32 = sext i8 %31 to i32
  %33 = add nsw i32 %32, %30
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %3, align 1
  br label %35

35:                                               ; preds = %24, %18
  %36 = load i8*, i8** %2, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i8, i8* %3, align 1
  %41 = sext i8 %40 to i32
  %42 = shl i32 %41, 4
  %43 = load i8*, i8** %2, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %2, align 8
  %45 = load i8, i8* %43, align 1
  %46 = sext i8 %45 to i32
  %47 = call signext i8 @hex2int(i32 %46)
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %42, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %3, align 1
  br label %51

51:                                               ; preds = %39, %35
  %52 = load i8, i8* %3, align 1
  %53 = call i64 @isprint(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i8, i8* %3, align 1
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %4, align 8
  store i8 %56, i8* %57, align 1
  %59 = load i8*, i8** %4, align 8
  %60 = load i8*, i8** %2, align 8
  %61 = load i8*, i8** %2, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = add nsw i64 %62, 1
  %64 = call i8* @memmove(i8* %59, i8* %60, i64 %63)
  store i8* %64, i8** %2, align 8
  br label %65

65:                                               ; preds = %55, %51
  br label %69

66:                                               ; preds = %13
  %67 = load i8*, i8** %2, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %2, align 8
  br label %69

69:                                               ; preds = %66, %65
  br label %9

70:                                               ; preds = %7, %9
  ret void
}

declare dso_local signext i8 @hex2int(i32) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i8* @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
