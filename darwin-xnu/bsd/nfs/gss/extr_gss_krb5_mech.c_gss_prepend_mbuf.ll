; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_prepend_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_prepend_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBUF_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_prepend_mbuf(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @mbuf_data(i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @mbuf_leadingspace(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @mbuf_trailingspace(i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @mbuf_len(i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %3
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %30, %31
  %33 = icmp ule i64 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32* @memmove(i32* %40, i32* %41, i64 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @mbuf_setdata(i32 %45, i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %34, %28, %3
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* @MBUF_WAITOK, align 4
  %53 = call i64 @mbuf_prepend(i32* %50, i64 %51, i32 %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i64, i64* %12, align 8
  store i64 %57, i64* %4, align 8
  br label %66

58:                                               ; preds = %49
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32* @mbuf_data(i32 %60)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @memcpy(i32* %62, i32* %63, i64 %64)
  store i64 0, i64* %4, align 8
  br label %66

66:                                               ; preds = %58, %56
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i32* @mbuf_data(i32) #1

declare dso_local i64 @mbuf_leadingspace(i32) #1

declare dso_local i64 @mbuf_trailingspace(i32) #1

declare dso_local i64 @mbuf_len(i32) #1

declare dso_local i32* @memmove(i32*, i32*, i64) #1

declare dso_local i32 @mbuf_setdata(i32, i32*, i64) #1

declare dso_local i64 @mbuf_prepend(i32*, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
