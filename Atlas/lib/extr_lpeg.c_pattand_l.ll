; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_pattand_l.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_pattand_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IChoice = common dso_local global i32 0, align 4
@IBackCommit = common dso_local global i32 0, align 4
@IFail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pattand_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pattand_l(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @getpattl(i32* %5, i32 1)
  store i32 %6, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 1, %8
  %10 = add nsw i32 %9, 2
  %11 = call i32* @newpatt(i32* %7, i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %4, align 8
  %14 = ptrtoint i32* %12 to i32
  %15 = load i32, i32* @IChoice, align 4
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 1, %16
  %18 = add nsw i32 %17, 1
  %19 = call i32 @setinst(i32 %14, i32 %15, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @addpatt(i32* %20, i32* %21, i32 1)
  %23 = load i32*, i32** %4, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %4, align 8
  %28 = ptrtoint i32* %26 to i32
  %29 = load i32, i32* @IBackCommit, align 4
  %30 = call i32 @setinst(i32 %28, i32 %29, i32 2)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @IFail, align 4
  %33 = call i32 @setinstaux(i32* %31, i32 %32, i32 0, i32 1)
  ret i32 1
}

declare dso_local i32 @getpattl(i32*, i32) #1

declare dso_local i32* @newpatt(i32*, i32) #1

declare dso_local i32 @setinst(i32, i32, i32) #1

declare dso_local i32 @addpatt(i32*, i32*, i32) #1

declare dso_local i32 @setinstaux(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
