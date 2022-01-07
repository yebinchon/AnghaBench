; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_build_ticker_loop_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_build_ticker_loop_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i64)* @build_ticker_loop_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_ticker_loop_string(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i64 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i64 %9, i64* %20, align 8
  %23 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %21, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %22, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 16
  %28 = load i8*, i8** %19, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  %30 = load i32, i32* %14, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %10
  %33 = load i8*, i8** %19, align 8
  %34 = load i64, i64* %20, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @utf8skip(i8* %36, i32 %37)
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @utf8cpy(i8* %33, i32 %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %10
  %42 = load i32, i32* %16, align 4
  %43 = icmp ugt i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = trunc i64 %24 to i32
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @utf8skip(i8* %46, i32 %47)
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @utf8cpy(i8* %26, i32 %45, i32 %48, i32 %49)
  %51 = load i8*, i8** %19, align 8
  %52 = load i64, i64* %20, align 8
  %53 = call i32 @strlcat(i8* %51, i8* %26, i64 %52)
  br label %54

54:                                               ; preds = %44, %41
  %55 = load i32, i32* %18, align 4
  %56 = icmp ugt i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = trunc i64 %24 to i32
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @utf8skip(i8* %59, i32 %60)
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @utf8cpy(i8* %26, i32 %58, i32 %61, i32 %62)
  %64 = load i8*, i8** %19, align 8
  %65 = load i64, i64* %20, align 8
  %66 = call i32 @strlcat(i8* %64, i8* %26, i64 %65)
  br label %67

67:                                               ; preds = %57, %54
  %68 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %68)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @utf8cpy(i8*, i32, i32, i32) #2

declare dso_local i32 @utf8skip(i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
