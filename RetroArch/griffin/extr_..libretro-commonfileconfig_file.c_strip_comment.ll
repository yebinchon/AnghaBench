; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_strip_comment.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_strip_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @strip_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @strip_comment(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  store i8* %11, i8** %3, align 8
  store i32 1, i32* %4, align 4
  br label %12

12:                                               ; preds = %62, %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @string_is_empty(i8* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %63

17:                                               ; preds = %12
  store i8* null, i8** %5, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 34)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i8*, i8** %2, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 35)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  store i8* %30, i8** %5, align 8
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %2, align 8
  br label %62

41:                                               ; preds = %34, %31
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = icmp ult i8* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  br label %56

54:                                               ; preds = %47
  %55 = load i8*, i8** %3, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i8* [ %53, %51 ], [ %55, %54 ]
  store i8* %57, i8** %2, align 8
  br label %61

58:                                               ; preds = %44, %41
  %59 = load i8*, i8** %5, align 8
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %5, align 8
  store i8* %60, i8** %2, align 8
  br label %61

61:                                               ; preds = %58, %56
  br label %62

62:                                               ; preds = %61, %38
  br label %12

63:                                               ; preds = %12
  %64 = load i8*, i8** %2, align 8
  ret i8* %64
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
