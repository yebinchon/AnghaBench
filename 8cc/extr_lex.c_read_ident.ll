; ModuleID = '/home/carl/AnghaBench/8cc/extr_lex.c_read_ident.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_lex.c_read_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8)* @read_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_ident(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32*, align 8
  store i8 %0, i8* %2, align 1
  %4 = call i32* (...) @make_buffer()
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i8, i8* %2, align 1
  %7 = call i32 @buf_write(i32* %5, i8 signext %6)
  br label %8

8:                                                ; preds = %42, %26, %1
  %9 = call signext i8 (...) @readc()
  store i8 %9, i8* %2, align 1
  %10 = load i8, i8* %2, align 1
  %11 = call i64 @isalnum(i8 signext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  %14 = load i8, i8* %2, align 1
  %15 = sext i8 %14 to i32
  %16 = and i32 %15, 128
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load i8, i8* %2, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 95
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8, i8* %2, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 36
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %18, %13, %8
  %27 = load i32*, i32** %3, align 8
  %28 = load i8, i8* %2, align 1
  %29 = call i32 @buf_write(i32* %27, i8 signext %28)
  br label %8

30:                                               ; preds = %22
  %31 = load i8, i8* %2, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 92
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = call zeroext i8 (...) @peek()
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 117
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = call zeroext i8 (...) @peek()
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 85
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %34
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 (...) @read_escaped_char()
  %45 = call i32 @write_utf8(i32* %43, i32 %44)
  br label %8

46:                                               ; preds = %38, %30
  %47 = load i8, i8* %2, align 1
  %48 = call i32 @unreadc(i8 signext %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @buf_write(i32* %49, i8 signext 0)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @buf_body(i32* %51)
  %53 = call i32* @make_ident(i32 %52)
  ret i32* %53
}

declare dso_local i32* @make_buffer(...) #1

declare dso_local i32 @buf_write(i32*, i8 signext) #1

declare dso_local signext i8 @readc(...) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local zeroext i8 @peek(...) #1

declare dso_local i32 @write_utf8(i32*, i32) #1

declare dso_local i32 @read_escaped_char(...) #1

declare dso_local i32 @unreadc(i8 signext) #1

declare dso_local i32* @make_ident(i32) #1

declare dso_local i32 @buf_body(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
