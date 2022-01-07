; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000.c_getsgnctxno.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000.c_getsgnctxno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@contribtab = common dso_local global i32** null, align 8
@JPEG2000_T1_SIG_E = common dso_local global i32 0, align 4
@JPEG2000_T1_SGN_E = common dso_local global i32 0, align 4
@JPEG2000_T1_SIG_W = common dso_local global i32 0, align 4
@JPEG2000_T1_SGN_W = common dso_local global i32 0, align 4
@JPEG2000_T1_SIG_S = common dso_local global i32 0, align 4
@JPEG2000_T1_SGN_S = common dso_local global i32 0, align 4
@JPEG2000_T1_SIG_N = common dso_local global i32 0, align 4
@JPEG2000_T1_SGN_N = common dso_local global i32 0, align 4
@xorbittab = common dso_local global i32** null, align 8
@ctxlbltab = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @getsgnctxno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getsgnctxno(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32**, i32*** @contribtab, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @JPEG2000_T1_SIG_E, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @JPEG2000_T1_SGN_E, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 2
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %12
  %21 = phi i32 [ %18, %12 ], [ 0, %19 ]
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %7, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @JPEG2000_T1_SIG_W, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @JPEG2000_T1_SGN_W, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 2
  br label %37

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i32 [ %35, %29 ], [ 0, %36 ]
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %24, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = load i32**, i32*** @contribtab, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @JPEG2000_T1_SIG_S, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @JPEG2000_T1_SGN_S, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 2
  br label %56

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55, %48
  %57 = phi i32 [ %54, %48 ], [ 0, %55 ]
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %43, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @JPEG2000_T1_SIG_N, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @JPEG2000_T1_SGN_N, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 2
  br label %73

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %65
  %74 = phi i32 [ %71, %65 ], [ 0, %72 ]
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %60, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load i32**, i32*** @xorbittab, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %4, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32**, i32*** @ctxlbltab, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
