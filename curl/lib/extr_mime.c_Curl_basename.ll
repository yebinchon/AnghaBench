; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mime.c_Curl_basename.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mime.c_Curl_basename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Curl_basename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Curl_basename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @strrchr(i8* %5, i8 signext 47)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strrchr(i8* %7, i8 signext 92)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ugt i8* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  br label %22

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i8* [ %19, %18 ], [ %21, %20 ]
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %24, i8** %2, align 8
  br label %39

25:                                               ; preds = %11, %1
  %26 = load i8*, i8** %3, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %30, i8** %2, align 8
  br label %38

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %36, i8** %2, align 8
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %28
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
