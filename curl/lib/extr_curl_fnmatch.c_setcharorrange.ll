; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_curl_fnmatch.c_setcharorrange.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_curl_fnmatch.c_setcharorrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*)* @setcharorrange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setcharorrange(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  %14 = load i8, i8* %12, align 1
  store i8 %14, i8* %6, align 1
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8 1, i8* %18, align 1
  %19 = load i8, i8* %6, align 1
  %20 = call i64 @ISALNUM(i8 zeroext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %75

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  %25 = load i8, i8* %23, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 45
  br i1 %27, label %28, label %75

28:                                               ; preds = %22
  %29 = load i8, i8* %6, align 1
  %30 = call i64 @charclass(i8 zeroext %29)
  store i64 %30, i64* %7, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  %33 = load i8, i8* %31, align 1
  store i8 %33, i8* %8, align 1
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 92
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  %40 = load i8, i8* %38, align 1
  store i8 %40, i8* %8, align 1
  br label %41

41:                                               ; preds = %37, %28
  %42 = load i8, i8* %8, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* %6, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp sge i32 %43, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %41
  %48 = load i8, i8* %8, align 1
  %49 = call i64 @charclass(i8 zeroext %48)
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i8, i8* %6, align 1
  %55 = add i8 %54, 1
  store i8 %55, i8* %6, align 1
  %56 = zext i8 %54 to i32
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load i8, i8* %6, align 1
  %62 = call i64 @charclass(i8 zeroext %61)
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %6, align 1
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 1, i8* %69, align 1
  br label %70

70:                                               ; preds = %65, %60
  br label %53

71:                                               ; preds = %53
  %72 = load i8*, i8** %5, align 8
  %73 = load i8**, i8*** %3, align 8
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %71, %47, %41
  br label %75

75:                                               ; preds = %74, %22, %2
  ret void
}

declare dso_local i64 @ISALNUM(i8 zeroext) #1

declare dso_local i64 @charclass(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
