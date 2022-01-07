; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_krb5_n_fold.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_krb5_n_fold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64)* @krb5_n_fold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_n_fold(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @max(i64 %15, i64 %16)
  %18 = mul nsw i32 2, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i64, i64* %6, align 8
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @memcpy(i8* %24, i8* %25, i64 %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @memset(i8* %28, i32 0, i64 %29)
  br label %31

31:                                               ; preds = %66, %4
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i8, i8* %22, i64 %32
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @memcpy(i8* %33, i8* %24, i64 %34)
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %6, align 8
  %40 = mul i64 %39, 8
  %41 = call i32 @rr13(i8* %24, i64 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %70

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @add1(i8* %51, i8* %22, i64 %52)
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %11, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %65

60:                                               ; preds = %50
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds i8, i8* %22, i64 %61
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @memmove(i8* %22, i8* %62, i64 %63)
  br label %46

65:                                               ; preds = %59, %46
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %11, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %31, label %69

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %44
  %71 = load i32, i32* %9, align 4
  %72 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %72)
  ret i32 %71
}

declare dso_local i32 @max(i64, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @rr13(i8*, i64) #1

declare dso_local i32 @add1(i8*, i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
