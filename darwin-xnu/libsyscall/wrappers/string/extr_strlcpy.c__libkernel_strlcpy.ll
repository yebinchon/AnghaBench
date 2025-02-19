; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/string/extr_strlcpy.c__libkernel_strlcpy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/string/extr_strlcpy.c__libkernel_strlcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @_libkernel_strlcpy(i8* noalias %0, i8* noalias %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @_libkernel_strlen(i8* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, 1
  %18 = call i32 @_libkernel_memmove(i8* %14, i8* %15, i64 %17)
  br label %33

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %25, 1
  %27 = call i32 @_libkernel_memmove(i8* %23, i8* %24, i64 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %22, %19
  br label %33

33:                                               ; preds = %32, %13
  %34 = load i64, i64* %7, align 8
  ret i64 %34
}

declare dso_local i64 @_libkernel_strlen(i8*) #1

declare dso_local i32 @_libkernel_memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
