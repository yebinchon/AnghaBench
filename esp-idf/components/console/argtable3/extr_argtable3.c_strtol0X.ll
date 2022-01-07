; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_strtol0X.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_strtol0X.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8**, i8, i32)* @strtol0X to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @strtol0X(i8* %0, i8** %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %12, align 8
  br label %14

14:                                               ; preds = %20, %4
  %15 = load i8*, i8** %12, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call i64 @isspace(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i8*, i8** %12, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %12, align 8
  br label %14

23:                                               ; preds = %14
  %24 = load i8*, i8** %12, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %33 [
    i32 43, label %27
    i32 45, label %30
  ]

27:                                               ; preds = %23
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %12, align 8
  store i32 1, i32* %11, align 4
  br label %34

30:                                               ; preds = %23
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %12, align 8
  store i32 -1, i32* %11, align 4
  br label %34

33:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  br label %34

34:                                               ; preds = %33, %30, %27
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %12, align 8
  %37 = load i8, i8* %35, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 48
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = load i8**, i8*** %7, align 8
  store i8* %41, i8** %42, align 8
  store i64 0, i64* %5, align 8
  br label %73

43:                                               ; preds = %34
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %12, align 8
  %46 = load i8, i8* %44, align 1
  %47 = sext i8 %46 to i32
  %48 = call i64 @toupper(i32 %47)
  %49 = load i8, i8* %8, align 1
  %50 = sext i8 %49 to i32
  %51 = call i64 @toupper(i32 %50)
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i8*, i8** %6, align 8
  %55 = load i8**, i8*** %7, align 8
  store i8* %54, i8** %55, align 8
  store i64 0, i64* %5, align 8
  br label %73

56:                                               ; preds = %43
  %57 = load i8*, i8** %12, align 8
  %58 = load i8**, i8*** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @strtol(i8* %57, i8** %58, i32 %59)
  store i64 %60, i64* %10, align 8
  %61 = load i8**, i8*** %7, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i8*, i8** %6, align 8
  %67 = load i8**, i8*** %7, align 8
  store i8* %66, i8** %67, align 8
  store i64 0, i64* %5, align 8
  br label %73

68:                                               ; preds = %56
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %10, align 8
  %72 = mul nsw i64 %70, %71
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %68, %65, %53, %40
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @toupper(i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
