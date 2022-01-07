; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_escape_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_escape_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32)* @escape_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @escape_string(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %64

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %59, %14
  %18 = load i64, i64* %8, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %10, align 1
  %24 = load i8, i8* %10, align 1
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @URI_RESERVED(i8 signext %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %20
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %9, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %9, align 8
  %32 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 37, i8* %32, align 1
  %33 = load i8, i8* %10, align 1
  %34 = sext i8 %33 to i32
  %35 = ashr i32 %34, 4
  %36 = and i32 %35, 15
  %37 = trunc i32 %36 to i8
  %38 = call signext i8 @to_hex(i8 signext %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %9, align 8
  %42 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 %38, i8* %42, align 1
  %43 = load i8, i8* %10, align 1
  %44 = sext i8 %43 to i32
  %45 = and i32 %44, 15
  %46 = trunc i32 %45 to i8
  %47 = call signext i8 @to_hex(i8 signext %46)
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %9, align 8
  %51 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 %47, i8* %51, align 1
  br label %58

52:                                               ; preds = %20
  %53 = load i8, i8* %10, align 1
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %9, align 8
  %57 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 %53, i8* %57, align 1
  br label %58

58:                                               ; preds = %52, %28
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %8, align 8
  br label %17

62:                                               ; preds = %17
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %62, %13
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @URI_RESERVED(i8 signext, i32) #1

declare dso_local signext i8 @to_hex(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
