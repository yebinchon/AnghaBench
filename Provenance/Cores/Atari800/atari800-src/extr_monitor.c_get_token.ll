; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_get_token.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_get_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@token_ptr = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_token() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @token_ptr, align 8
  store i8* %3, i8** %2, align 8
  br label %4

4:                                                ; preds = %9, %0
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %2, align 8
  br label %4

12:                                               ; preds = %4
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i8* null, i8** %1, align 8
  br label %38

18:                                               ; preds = %12
  %19 = load i8*, i8** %2, align 8
  store i8* %19, i8** @token_ptr, align 8
  br label %20

20:                                               ; preds = %31, %18
  %21 = load i8*, i8** @token_ptr, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** @token_ptr, align 8
  %23 = load i8*, i8** @token_ptr, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i8*, i8** @token_ptr, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** @token_ptr, align 8
  store i8 0, i8* %28, align 1
  br label %36

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** @token_ptr, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %20, label %36

36:                                               ; preds = %31, %27
  %37 = load i8*, i8** %2, align 8
  store i8* %37, i8** %1, align 8
  br label %38

38:                                               ; preds = %36, %17
  %39 = load i8*, i8** %1, align 8
  ret i8* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
