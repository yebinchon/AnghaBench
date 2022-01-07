; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_split_one_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_split_one_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i64 0, align 8
@MBUF_WAITOK = common dso_local global i32 0, align 4
@MBUF_PKTHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32**, i32)* @split_one_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @split_one_mbuf(i32* %0, i64 %1, i32** %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32**, i32*** %8, align 8
  store i32* %11, i32** %12, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store i64 0, i64* %5, align 8
  br label %74

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @mbuf_len(i32* %20)
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @mbuf_next(i32* %25)
  %27 = load i32**, i32*** %8, align 8
  store i32* %26, i32** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @mbuf_setnext(i32* %31, i32* null)
  br label %33

33:                                               ; preds = %30, %24
  store i64 0, i64* %5, align 8
  br label %74

34:                                               ; preds = %19
  %35 = load i64, i64* %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @mbuf_len(i32* %36)
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @EINVAL, align 8
  store i64 %40, i64* %5, align 8
  br label %74

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* @MBUF_WAITOK, align 4
  %45 = load i32**, i32*** %8, align 8
  %46 = call i64 @mbuf_split(i32* %42, i64 %43, i32 %44, i32** %45)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %5, align 8
  br label %74

51:                                               ; preds = %41
  %52 = load i32**, i32*** %8, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @mbuf_flags(i32* %53)
  %55 = load i32, i32* @MBUF_PKTHDR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load i32**, i32*** %8, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @MBUF_PKTHDR, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* @MBUF_PKTHDR, align 4
  %64 = call i64 @mbuf_setflags_mask(i32* %60, i32 %62, i32 %63)
  store i64 %64, i64* %10, align 8
  br label %65

65:                                               ; preds = %58, %51
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32*, i32** %6, align 8
  %70 = load i32**, i32*** %8, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @mbuf_setnext(i32* %69, i32* %71)
  br label %73

73:                                               ; preds = %68, %65
  store i64 0, i64* %5, align 8
  br label %74

74:                                               ; preds = %73, %49, %39, %33, %18
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local i64 @mbuf_len(i32*) #1

declare dso_local i32* @mbuf_next(i32*) #1

declare dso_local i32 @mbuf_setnext(i32*, i32*) #1

declare dso_local i64 @mbuf_split(i32*, i64, i32, i32**) #1

declare dso_local i32 @mbuf_flags(i32*) #1

declare dso_local i64 @mbuf_setflags_mask(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
