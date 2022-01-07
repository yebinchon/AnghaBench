; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_utils.c_split_str.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_utils.c_split_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @split_str(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %6, align 8
  %10 = call i32* (...) @make_list()
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @list_insert(i32* %11, i8* %12)
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %38, %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* %4, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load i8*, i8** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i32*, i32** %7, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = call i32 @list_insert(i32* %31, i8* %35)
  br label %37

37:                                               ; preds = %27, %18
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %14

41:                                               ; preds = %14
  %42 = load i32*, i32** %7, align 8
  ret i32* %42
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @make_list(...) #1

declare dso_local i32 @list_insert(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
