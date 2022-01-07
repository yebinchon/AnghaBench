; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_switch.c_main.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_switch.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"bfnrtvx\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%c = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = call i32 @backslash(i8 signext %12)
  %14 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8 signext %10, i32 %13)
  br label %15

15:                                               ; preds = %8
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %3, align 8
  br label %4

18:                                               ; preds = %4
  %19 = call i32 (...) @f()
  %20 = call i32 (...) @g()
  %21 = call i32 (...) @h()
  store i32 16777216, i32* %2, align 4
  br label %22

22:                                               ; preds = %29, %18
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, 117440512
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @big(i32 %27)
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 16777216
  store i32 %31, i32* %2, align 4
  br label %22

32:                                               ; preds = %22
  %33 = call i32 (...) @limit()
  ret i32 0
}

declare dso_local i32 @printf(i8*, i8 signext, i32) #1

declare dso_local i32 @backslash(i8 signext) #1

declare dso_local i32 @f(...) #1

declare dso_local i32 @g(...) #1

declare dso_local i32 @h(...) #1

declare dso_local i32 @big(i32) #1

declare dso_local i32 @limit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
