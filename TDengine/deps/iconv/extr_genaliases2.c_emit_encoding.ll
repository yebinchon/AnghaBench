; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_genaliases2.c_emit_encoding.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_genaliases2.c_emit_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [62 x i8] c"  (int)(long)&((struct stringpool2_t *)0)->stringpool_%s_%u,\0A\00", align 1
@counter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i8**, i64, i8*)* @emit_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_encoding(i32* %0, i32* %1, i8* %2, i8** %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* @counter, align 4
  %16 = call i32 @fprintf(i32* %13, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  br label %17

17:                                               ; preds = %27, %6
  %18 = load i64, i64* %11, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8**, i8*** %10, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = call i32 @emit_alias(i32* %21, i8* %22, i8* %24, i8* %25)
  br label %27

27:                                               ; preds = %20
  %28 = load i8**, i8*** %10, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %11, align 8
  br label %17

32:                                               ; preds = %17
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, i32) #1

declare dso_local i32 @emit_alias(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
