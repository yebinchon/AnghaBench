; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_string.c_stringd.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_string.c_stringd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stringd(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [25 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 0
  %7 = getelementptr inbounds i8, i8* %6, i64 25
  store i8* %7, i8** %4, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @LONG_MIN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i64, i64* @LONG_MAX, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %5, align 8
  br label %23

14:                                               ; preds = %1
  %15 = load i64, i64* %2, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, i64* %2, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %22

20:                                               ; preds = %14
  %21 = load i64, i64* %2, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %20, %17
  br label %23

23:                                               ; preds = %22, %11
  br label %24

24:                                               ; preds = %31, %23
  %25 = load i64, i64* %5, align 8
  %26 = urem i64 %25, 10
  %27 = add i64 %26, 48
  %28 = trunc i64 %27 to i8
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %30, i8** %4, align 8
  store i8 %28, i8* %30, align 1
  br label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = udiv i64 %32, 10
  store i64 %33, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %24, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %2, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %40, i8** %4, align 8
  store i8 45, i8* %40, align 1
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 0
  %44 = getelementptr inbounds i8, i8* %43, i64 25
  %45 = load i8*, i8** %4, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = call i8* @stringn(i8* %42, i32 %49)
  ret i8* %50
}

declare dso_local i8* @stringn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
