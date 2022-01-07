; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngstest.c_formatof.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngstest.c_formatof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_COUNT = common dso_local global i64 0, align 8
@format_names = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pngstest: format name '%s' invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @formatof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @formatof(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strtoul(i8* %6, i8** %4, i32 0)
  store i64 %7, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ugt i8* %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @FORMAT_COUNT, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %2, align 8
  br label %47

22:                                               ; preds = %16, %11, %1
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @FORMAT_COUNT, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i32*, i32** @format_names, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @strcmp(i32 %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %2, align 8
  br label %47

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %23

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i64, i64* @FORMAT_COUNT, align 8
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %42, %35, %20
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
