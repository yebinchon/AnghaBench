; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_capture_aux.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_capture_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IFullCapture = common dso_local global i32 0, align 4
@IOpenCapture = common dso_local global i32 0, align 4
@ICloseCapture = common dso_local global i32 0, align 4
@Cclose = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @capture_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_aux(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @getpatt(i32* %15, i32 1, i32* %7)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @skipchecks(i32* %17, i32 0, i32* %8)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %3
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32* @newpatt(i32* %23, i32 %25)
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @getlabel(i32* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @addpatt(i32* %30, i32* %31, i32 1)
  %33 = load i32*, i32** %11, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @IFullCapture, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @setinstcap(i32* %36, i32 %37, i32 %38, i32 %39, i32 %40)
  br label %69

42:                                               ; preds = %3
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 1, %44
  %46 = add nsw i32 %45, 1
  %47 = call i32* @newpatt(i32* %43, i32 %46)
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %13, align 8
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %14, align 8
  %51 = load i32, i32* @IOpenCapture, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @getlabel(i32* %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @setinstcap(i32* %49, i32 %51, i32 %54, i32 %55, i32 0)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @addpatt(i32* %57, i32* %58, i32 1)
  %60 = load i32*, i32** %14, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %14, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* @ICloseCapture, align 4
  %65 = load i32, i32* @Cclose, align 4
  %66 = call i32 @setinstcap(i32* %63, i32 %64, i32 0, i32 %65, i32 0)
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @optimizecaptures(i32* %67)
  br label %69

69:                                               ; preds = %42, %22
  ret i32 1
}

declare dso_local i32* @getpatt(i32*, i32, i32*) #1

declare dso_local i32 @skipchecks(i32*, i32, i32*) #1

declare dso_local i32* @newpatt(i32*, i32) #1

declare dso_local i32 @getlabel(i32*, i32) #1

declare dso_local i32 @addpatt(i32*, i32*, i32) #1

declare dso_local i32 @setinstcap(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @optimizecaptures(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
