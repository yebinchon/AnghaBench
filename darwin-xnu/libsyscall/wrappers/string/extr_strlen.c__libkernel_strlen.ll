; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/string/extr_strlen.c__libkernel_strlen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/string/extr_strlen.c__libkernel_strlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONGPTR_MASK = common dso_local global i64 0, align 8
@mask01 = common dso_local global i64 0, align 8
@mask80 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @_libkernel_strlen(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %3, align 8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = load i64, i64* @LONGPTR_MASK, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %6
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  ret i64 %22

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  br label %6

27:                                               ; preds = %6
  %28 = load i8*, i8** %3, align 8
  %29 = bitcast i8* %28 to i64*
  store i64* %29, i64** %4, align 8
  br label %30

30:                                               ; preds = %46, %27
  %31 = load i64*, i64** %4, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @mask01, align 8
  %34 = sub i64 %32, %33
  %35 = load i64, i64* @mask80, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i64*, i64** %4, align 8
  %40 = bitcast i64* %39 to i8*
  store i8* %40, i8** %3, align 8
  %41 = call i32 @testbyte(i32 0)
  %42 = call i32 @testbyte(i32 1)
  %43 = call i32 @testbyte(i32 2)
  %44 = call i32 @testbyte(i32 3)
  br label %45

45:                                               ; preds = %38, %30
  br label %46

46:                                               ; preds = %45
  %47 = load i64*, i64** %4, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %4, align 8
  br label %30
}

declare dso_local i32 @testbyte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
