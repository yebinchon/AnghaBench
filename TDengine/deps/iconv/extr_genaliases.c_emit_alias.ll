; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_genaliases.c_emit_alias.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_genaliases.c_emit_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c", ei_%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @emit_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_alias(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  br label %10

10:                                               ; preds = %39, %3
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %8, align 1
  %17 = load i8, i8* %8, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sge i32 %18, 128
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %14
  %23 = load i8, i8* %8, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp sge i32 %24, 97
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sle i32 %28, 122
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8, i8* %8, align 1
  %32 = zext i8 %31 to i32
  %33 = sub nsw i32 %32, 32
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %8, align 1
  br label %35

35:                                               ; preds = %30, %26, %22
  %36 = load i8, i8* %8, align 1
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @putc(i8 zeroext %36, i32* %37)
  br label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  br label %10

42:                                               ; preds = %10
  %43 = load i32*, i32** %4, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @fprintf(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %44)
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #1

declare dso_local i32 @putc(i8 zeroext, i32*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
