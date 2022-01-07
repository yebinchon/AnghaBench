; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_utils.c_parse_csv_line.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_utils.c_parse_csv_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_csv_line(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i32* (...) @make_list()
  store i32* %7, i32** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** %5, align 8
  br label %10

10:                                               ; preds = %43, %1
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 34
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  br label %42

25:                                               ; preds = %15
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 44
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  store i8 0, i8* %34, align 1
  %35 = load i32*, i32** %3, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @copy_string(i8* %36)
  %38 = call i32 @list_insert(i32* %35, i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %33, %30, %25
  br label %42

42:                                               ; preds = %41, %20
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  br label %10

46:                                               ; preds = %10
  %47 = load i32*, i32** %3, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @copy_string(i8* %48)
  %50 = call i32 @list_insert(i32* %47, i32 %49)
  %51 = load i32*, i32** %3, align 8
  ret i32* %51
}

declare dso_local i32* @make_list(...) #1

declare dso_local i32 @list_insert(i32*, i32) #1

declare dso_local i32 @copy_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
