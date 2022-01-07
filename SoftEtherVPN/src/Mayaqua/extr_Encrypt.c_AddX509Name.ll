; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_AddX509Name.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_AddX509Name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBSTRING_ASC = common dso_local global i32 0, align 4
@MBSTRING_UTF8 = common dso_local global i32 0, align 4
@openssl_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddX509Name(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @MBSTRING_ASC, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %59

19:                                               ; preds = %15
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @CalcUniToUtf8(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %59

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i64* @ZeroMalloc(i32 %27)
  store i64* %28, i64** %10, align 8
  %29 = load i64*, i64** %10, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @UniToUtf8(i64* %29, i32 %30, i32* %31)
  %33 = load i64*, i64** %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 0, i64* %36, align 8
  %37 = load i64*, i64** %10, align 8
  %38 = call i64 @StrLen(i64* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @UniStrLen(i32* %39)
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %25
  %43 = load i32, i32* @MBSTRING_UTF8, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %42, %25
  %45 = load i8*, i8** %5, align 8
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %8, align 8
  %47 = load i32, i32* @openssl_lock, align 4
  %48 = call i32 @Lock(i32 %47)
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i64*, i64** %10, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @X509_NAME_add_entry_by_NID(i32* %49, i32 %50, i32 %51, i64* %52, i32 %53, i32 -1, i32 0)
  %55 = load i32, i32* @openssl_lock, align 4
  %56 = call i32 @Unlock(i32 %55)
  %57 = load i64*, i64** %10, align 8
  %58 = call i32 @Free(i64* %57)
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %44, %24, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @CalcUniToUtf8(i32*) #1

declare dso_local i64* @ZeroMalloc(i32) #1

declare dso_local i32 @UniToUtf8(i64*, i32, i32*) #1

declare dso_local i64 @StrLen(i64*) #1

declare dso_local i64 @UniStrLen(i32*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @X509_NAME_add_entry_by_NID(i32*, i32, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @Free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
