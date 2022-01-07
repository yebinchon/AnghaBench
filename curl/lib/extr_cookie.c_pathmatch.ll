; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_cookie.c_pathmatch.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_cookie.c_pathmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @pathmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pathmatch(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 1, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %3, align 4
  br label %88

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %18
  %26 = load i8*, i8** %8, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 63)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = icmp eq i64 0, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 47
  br i1 %41, label %42, label %51

42:                                               ; preds = %36, %32
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @free(i8* %43)
  %45 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  br label %88

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @strlen(i8* %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %10, align 4
  br label %84

59:                                               ; preds = %51
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @strncmp(i8* %60, i8* %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %10, align 4
  br label %84

67:                                               ; preds = %59
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %10, align 4
  br label %84

73:                                               ; preds = %67
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 47
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %10, align 4
  br label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %82, %80, %71, %65, %57
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %48, %23, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
