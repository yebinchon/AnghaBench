; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_genaliases.c_emit_encoding.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_genaliases.c_emit_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"grep 'sizeof(\22\00", align 1
@.str.1 = private unnamed_addr constant [103 x i8] c"\22)' tmp.h | sed -e 's|^.*\\(stringpool_str[0-9]*\\).*$|  (int)(long)\\&((struct stringpool_t *)0)->\\1,|'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8**, i64, i8*)* @emit_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_encoding(i32* %0, i32* %1, i8** %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @fprintf(i32* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = load i8**, i8*** %8, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %11, align 8
  br label %17

17:                                               ; preds = %46, %5
  %18 = load i8*, i8** %11, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i8*, i8** %11, align 8
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %12, align 1
  %24 = load i8, i8* %12, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp sge i32 %25, 128
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %21
  %30 = load i8, i8* %12, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sge i32 %31, 97
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i8, i8* %12, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sle i32 %35, 122
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8, i8* %12, align 1
  %39 = zext i8 %38 to i32
  %40 = sub nsw i32 %39, 32
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %12, align 1
  br label %42

42:                                               ; preds = %37, %33, %29
  %43 = load i8, i8* %12, align 1
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @putc(i8 zeroext %43, i32* %44)
  br label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %11, align 8
  br label %17

49:                                               ; preds = %17
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @fprintf(i32* %50, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %61, %49
  %53 = load i64, i64* %9, align 8
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32*, i32** %6, align 8
  %57 = load i8**, i8*** %8, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @emit_alias(i32* %56, i8* %58, i8* %59)
  br label %61

61:                                               ; preds = %55
  %62 = load i8**, i8*** %8, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, -1
  store i64 %65, i64* %9, align 8
  br label %52

66:                                               ; preds = %52
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @putc(i8 zeroext, i32*) #1

declare dso_local i32 @emit_alias(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
