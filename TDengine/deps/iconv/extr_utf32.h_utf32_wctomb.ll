; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf32.h_utf32_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf32.h_utf32_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RET_TOOSMALL = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32, i32)* @utf32_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf32_wctomb(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 1114112
  br i1 %12, label %13, label %75

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 55296
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 57344
  br i1 %18, label %75, label %19

19:                                               ; preds = %16, %13
  store i32 0, i32* %10, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 4
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 -2, i8* %33, align 1
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  store i8 -1, i8* %35, align 1
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %37, i8** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %38, 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %10, align 4
  br label %44

42:                                               ; preds = %24
  %43 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %43, i32* %5, align 4
  br label %77

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %19
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 1114112
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %49, 4
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 0, i8* %53, align 1
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 16
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 %56, i8* %58, align 1
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %59, 8
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  store i8 %61, i8* %63, align 1
  %64 = load i32, i32* %8, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  store i8 %65, i8* %67, align 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 4
  store i32 %71, i32* %5, align 4
  br label %77

72:                                               ; preds = %48
  %73 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %73, i32* %5, align 4
  br label %77

74:                                               ; preds = %45
  br label %75

75:                                               ; preds = %74, %16, %4
  %76 = load i32, i32* @RET_ILUNI, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %72, %51, %42
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
