; ModuleID = '/home/carl/AnghaBench/Craft/deps/glew/src/extr_glew.c__glewSearchExtension.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glew/src/extr_glew.c__glewSearchExtension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_TRUE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @_glewSearchExtension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_glewSearchExtension(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = call i64 @_glewStrLen(i32* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %8, align 8
  br label %15

15:                                               ; preds = %34, %3
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ult i32* %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @_glewStrCLen(i32* %20, i8 signext 32)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32*, i32** %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @_glewStrSame(i32* %27, i32* %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @GL_TRUE, align 4
  store i32 %33, i32* %4, align 4
  br label %41

34:                                               ; preds = %25, %19
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %35, 1
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 %36
  store i32* %38, i32** %8, align 8
  br label %15

39:                                               ; preds = %15
  %40 = load i32, i32* @GL_FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @_glewStrLen(i32*) #1

declare dso_local i64 @_glewStrCLen(i32*, i8 signext) #1

declare dso_local i64 @_glewStrSame(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
