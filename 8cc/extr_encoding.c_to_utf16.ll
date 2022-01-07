; ModuleID = '/home/carl/AnghaBench/8cc/extr_encoding.c_to_utf16.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_encoding.c_to_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @to_utf16(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32* (...) @make_buffer()
  store i32* %8, i32** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  store i8* %12, i8** %6, align 8
  br label %13

13:                                               ; preds = %41, %2
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @read_rune(i32* %7, i8* %18, i8* %19)
  %21 = load i8*, i8** %3, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 65536
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @write16(i32* %27, i32 %28)
  br label %41

30:                                               ; preds = %17
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 10
  %34 = add nsw i32 %33, 55232
  %35 = call i32 @write16(i32* %31, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 1023
  %39 = add nsw i32 %38, 56320
  %40 = call i32 @write16(i32* %36, i32 %39)
  br label %41

41:                                               ; preds = %30, %26
  br label %13

42:                                               ; preds = %13
  %43 = load i32*, i32** %5, align 8
  ret i32* %43
}

declare dso_local i32* @make_buffer(...) #1

declare dso_local i32 @read_rune(i32*, i8*, i8*) #1

declare dso_local i32 @write16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
