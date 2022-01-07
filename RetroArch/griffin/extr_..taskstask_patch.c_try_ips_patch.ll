; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_patch.c_try_ips_patch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_patch.c_try_ips_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"IPS\00", align 1
@ips_apply_patch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32**, i32*)* @try_ips_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_ips_patch(i32 %0, i8* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @string_is_empty(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @path_is_valid(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @filestream_read_file(i8* %24, i8** %12, i64* %10)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %49

28:                                               ; preds = %23
  %29 = load i64, i64* %10, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32**, i32*** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @ips_apply_patch, align 4
  %36 = load i8*, i8** %12, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @apply_patch_content(i32** %32, i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35, i8* %36, i64 %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i8*, i8** %12, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @free(i8* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %19
  br label %48

48:                                               ; preds = %47, %15, %4
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %45, %27
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i64 @path_is_valid(i8*) #1

declare dso_local i32 @filestream_read_file(i8*, i8**, i64*) #1

declare dso_local i32 @apply_patch_content(i32**, i32*, i8*, i8*, i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
