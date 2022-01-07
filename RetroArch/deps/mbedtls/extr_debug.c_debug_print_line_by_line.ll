; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_debug.c_debug_print_line_by_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_debug.c_debug_print_line_by_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32, i8*)* @debug_print_line_by_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_print_line_by_line(i32* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load i32, i32* @DEBUG_BUF_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %10, align 8
  store i8* %21, i8** %14, align 8
  br label %22

22:                                               ; preds = %62, %5
  %23 = load i8*, i8** %14, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %22
  %28 = load i8*, i8** %14, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %61

32:                                               ; preds = %27
  %33 = load i8*, i8** %14, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %15, align 8
  %40 = load i32, i32* @DEBUG_BUF_SIZE, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i32, i32* @DEBUG_BUF_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %15, align 8
  br label %48

48:                                               ; preds = %44, %32
  %49 = load i8*, i8** %13, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @memcpy(i8* %19, i8* %49, i64 %50)
  %52 = load i64, i64* %15, align 8
  %53 = getelementptr inbounds i8, i8* %19, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @debug_send_line(i32* %54, i32 %55, i8* %56, i32 %57, i8* %19)
  %59 = load i8*, i8** %14, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8* %60, i8** %13, align 8
  br label %61

61:                                               ; preds = %48, %27
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %14, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %14, align 8
  br label %22

65:                                               ; preds = %22
  %66 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @debug_send_line(i32*, i32, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
