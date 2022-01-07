; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_inet_ntop.c_inet_ntop4.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_inet_ntop.c_inet_ntop4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64)* @inet_ntop4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @inet_ntop4(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp uge i64 %10, 16
  %12 = zext i1 %11 to i32
  %13 = call i32 @DEBUGASSERT(i32 %12)
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %14, align 16
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 255
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 255
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 255
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 255
  %36 = call i32 @msnprintf(i8* %15, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25, i32 %30, i32 %35)
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %38 = call i64 @strlen(i8* %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %3
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %3
  %46 = load i32, i32* @ENOSPC, align 4
  store i32 %46, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  br label %52

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %50 = call i32 @strcpy(i8* %48, i8* %49)
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %4, align 8
  br label %52

52:                                               ; preds = %47, %45
  %53 = load i8*, i8** %4, align 8
  ret i8* %53
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
