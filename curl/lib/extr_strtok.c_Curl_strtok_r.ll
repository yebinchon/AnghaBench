; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_strtok.c_Curl_strtok_r.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_strtok.c_Curl_strtok_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Curl_strtok_r(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i8**, i8*** %7, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  br label %14

14:                                               ; preds = %11, %3
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @strchr(i8* %21, i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %20, %15
  %27 = phi i1 [ false, %15 ], [ %25, %20 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  br label %15

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8**, i8*** %7, align 8
  store i8* %38, i8** %39, align 8
  br label %40

40:                                               ; preds = %56, %35
  %41 = load i8**, i8*** %7, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = load i8**, i8*** %7, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @strchr(i8* %47, i8 signext %50)
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %46, %40
  %55 = phi i1 [ false, %40 ], [ %53, %46 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = load i8**, i8*** %7, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %57, align 8
  br label %40

60:                                               ; preds = %54
  %61 = load i8**, i8*** %7, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i8**, i8*** %7, align 8
  %67 = load i8*, i8** %66, align 8
  store i8 0, i8* %67, align 1
  %68 = load i8**, i8*** %7, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %68, align 8
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i8*, i8** %8, align 8
  store i8* %72, i8** %4, align 8
  br label %74

73:                                               ; preds = %31
  store i8* null, i8** %4, align 8
  br label %74

74:                                               ; preds = %73, %71
  %75 = load i8*, i8** %4, align 8
  ret i8* %75
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
