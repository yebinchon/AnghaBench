; ModuleID = '/home/carl/AnghaBench/8cc/extr_lex.c_read_number.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_lex.c_read_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"eEpP\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"+-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8)* @read_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_number(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %7 = call i32* (...) @make_buffer()
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i8, i8* %2, align 1
  %10 = sext i8 %9 to i32
  %11 = call i32 @buf_write(i32* %8, i32 %10)
  %12 = load i8, i8* %2, align 1
  store i8 %12, i8* %4, align 1
  br label %13

13:                                               ; preds = %47, %1
  %14 = call i32 (...) @readc()
  store i32 %14, i32* %5, align 4
  %15 = load i8, i8* %4, align 1
  %16 = sext i8 %15 to i32
  %17 = call i64 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi i1 [ false, %13 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @isdigit(i32 %26) #3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @isalpha(i32 %30) #3
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 46
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @unreadc(i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @buf_write(i32* %42, i32 0)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @buf_body(i32* %44)
  %46 = call i32* @make_number(i32 %45)
  ret i32* %46

47:                                               ; preds = %36, %33, %29, %23
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @buf_write(i32* %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %4, align 1
  br label %13
}

declare dso_local i32* @make_buffer(...) #1

declare dso_local i32 @buf_write(i32*, i32) #1

declare dso_local i32 @readc(...) #1

declare dso_local i64 @strchr(i8*, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isalpha(i32) #2

declare dso_local i32 @unreadc(i32) #1

declare dso_local i32* @make_number(i32) #1

declare dso_local i32 @buf_body(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
