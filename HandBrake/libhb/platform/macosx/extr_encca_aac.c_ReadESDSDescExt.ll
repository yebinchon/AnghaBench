; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/platform/macosx/extr_encca_aac.c_ReadESDSDescExt.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/platform/macosx/extr_encca_aac.c_ReadESDSDescExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP4ESDescrTag = common dso_local global i32 0, align 4
@MP4DecConfigDescrTag = common dso_local global i32 0, align 4
@MP4DecSpecificDescrTag = common dso_local global i32 0, align 4
@noErr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32**, i32*, i32)* @ReadESDSDescExt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ReadESDSDescExt(i8* %0, i32** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  store i32* %19, i32** %9, align 8
  br label %20

20:                                               ; preds = %17, %4
  %21 = call i32 @readDescr(i32** %9, i32* %10)
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32* %23, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @MP4ESDescrTag, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %27, %20
  %31 = call i32 @readDescr(i32** %9, i32* %10)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @MP4DecConfigDescrTag, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %30
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  store i32* %45, i32** %9, align 8
  %46 = call i32 @readDescr(i32** %9, i32* %10)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MP4DecSpecificDescrTag, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %35
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 8
  %53 = call i32* @calloc(i32 1, i32 %52)
  %54 = load i32**, i32*** %6, align 8
  store i32* %53, i32** %54, align 8
  %55 = load i32**, i32*** %6, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load i32**, i32*** %6, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @memcpy(i32* %60, i32* %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %58, %50
  br label %67

67:                                               ; preds = %66, %35
  br label %68

68:                                               ; preds = %67, %30
  %69 = load i64, i64* @noErr, align 8
  ret i64 %69
}

declare dso_local i32 @readDescr(i32**, i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
