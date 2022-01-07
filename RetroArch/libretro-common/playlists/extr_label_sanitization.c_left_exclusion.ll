; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/playlists/extr_label_sanitization.c_left_exclusion.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/playlists/extr_label_sanitization.c_left_exclusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64)* @left_exclusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @left_exclusion(i8* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  %10 = alloca [32 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlcpy(i8* %11, i8* %12, i32 32)
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %15 = call i32 @string_to_upper(i8* %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %39, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %23 = load i8**, i8*** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlcpy(i8* %22, i8* %27, i32 32)
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %30 = call i32 @string_to_upper(i8* %29)
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %34 = call i32 @strlen(i8* %33)
  %35 = call i64 @string_is_equal_fast(i8* %31, i8* %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %43

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %16

42:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @string_to_upper(i8*) #1

declare dso_local i64 @string_is_equal_fast(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
