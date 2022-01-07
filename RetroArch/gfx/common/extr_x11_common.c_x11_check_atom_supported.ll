; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_check_atom_supported.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_check_atom_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"_NET_SUPPORTED\00", align 1
@True = common dso_local global i32 0, align 4
@None = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@XA_ATOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @x11_check_atom_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x11_check_atom_supported(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @True, align 4
  %15 = call i64 @XInternAtom(i32* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @None, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @DefaultRootWindow(i32* %22)
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @UINT_MAX, align 4
  %26 = load i32, i32* @False, align 4
  %27 = load i64, i64* @XA_ATOM, align 8
  %28 = bitcast i64** %11 to i8**
  %29 = call i32 @XGetWindowProperty(i32* %21, i32 %23, i64 %24, i32 0, i32 %25, i32 %26, i64 %27, i64* %7, i32* %8, i64* %9, i64* %10, i8** %28)
  %30 = load i64*, i64** %11, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @XA_ATOM, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %20
  store i32 0, i32* %3, align 4
  br label %61

37:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %55, %37
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load i64*, i64** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i64*, i64** %11, align 8
  %53 = call i32 @XFree(i64* %52)
  store i32 1, i32* %3, align 4
  br label %61

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %38

58:                                               ; preds = %38
  %59 = load i64*, i64** %11, align 8
  %60 = call i32 @XFree(i64* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %51, %36, %19
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @XInternAtom(i32*, i8*, i32) #1

declare dso_local i32 @XGetWindowProperty(i32*, i32, i64, i32, i32, i32, i64, i64*, i32*, i64*, i64*, i8**) #1

declare dso_local i32 @DefaultRootWindow(i32*) #1

declare dso_local i32 @XFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
