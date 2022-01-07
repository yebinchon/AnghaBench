; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_bootargs.c_PE_get_default.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_bootargs.c_PE_get_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kSuccess = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"/defaults\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PE_get_default(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @kSuccess, align 8
  %12 = call i64 @DTLookupEntry(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %8)
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load i64, i64* @kSuccess, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8*** %9 to i8**
  %19 = call i64 @DTGetProperty(i32 %16, i8* %17, i8** %18, i32* %10)
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %14
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %4, align 4
  br label %47

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = load i8**, i8*** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @memcpy(i8* %30, i8** %31, i32 %32)
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %4, align 4
  br label %47

35:                                               ; preds = %3
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @IODTGetDefault(i8* %36, i8* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @FALSE, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @TRUE, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %29, %27, %21
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @DTLookupEntry(i32*, i8*, i32*) #1

declare dso_local i64 @DTGetProperty(i32, i8*, i8**, i32*) #1

declare dso_local i32 @memcpy(i8*, i8**, i32) #1

declare dso_local i64 @IODTGetDefault(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
