; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_generic_safe_string.c_vcos_safe_strcpy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_generic_safe_string.c_vcos_safe_strcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vcos_safe_strcpy(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8* %19, i8** %10, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %38, %14
  %24 = load i8*, i8** %9, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %29, %30
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi i1 [ false, %23 ], [ %31, %28 ]
  br i1 %33, label %34, label %43

34:                                               ; preds = %32
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %5, align 8
  store i8 %36, i8* %37, align 1
  br label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %9, align 8
  br label %23

43:                                               ; preds = %32
  %44 = load i8*, i8** %5, align 8
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %43, %4
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  ret i64 %50
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
