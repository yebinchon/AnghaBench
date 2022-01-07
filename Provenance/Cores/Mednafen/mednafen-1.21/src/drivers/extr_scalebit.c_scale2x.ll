; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scalebit.c_scale2x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scalebit.c_scale2x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32, i32, i32)* @scale2x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale2x(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %15, align 8
  %19 = load i8*, i8** %10, align 8
  store i8* %19, i8** %16, align 8
  %20 = load i32, i32* %14, align 4
  %21 = icmp uge i32 %20, 2
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %17, align 4
  %25 = call i8* @SCDST(i32 0)
  %26 = call i8* @SCDST(i32 1)
  %27 = call i8* @SCSRC(i32 0)
  %28 = call i8* @SCSRC(i32 0)
  %29 = call i8* @SCSRC(i32 1)
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @stage_scale2x(i8* %25, i8* %26, i8* %27, i8* %28, i8* %29, i32 %30, i32 %31)
  %33 = call i8* @SCDST(i32 2)
  store i8* %33, i8** %15, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sub i32 %34, 2
  store i32 %35, i32* %17, align 4
  br label %36

36:                                               ; preds = %39, %7
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = call i8* @SCDST(i32 0)
  %41 = call i8* @SCDST(i32 1)
  %42 = call i8* @SCSRC(i32 0)
  %43 = call i8* @SCSRC(i32 1)
  %44 = call i8* @SCSRC(i32 2)
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @stage_scale2x(i8* %40, i8* %41, i8* %42, i8* %43, i8* %44, i32 %45, i32 %46)
  %48 = call i8* @SCDST(i32 2)
  store i8* %48, i8** %15, align 8
  %49 = call i8* @SCSRC(i32 1)
  store i8* %49, i8** %16, align 8
  %50 = load i32, i32* %17, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %17, align 4
  br label %36

52:                                               ; preds = %36
  %53 = call i8* @SCDST(i32 0)
  %54 = call i8* @SCDST(i32 1)
  %55 = call i8* @SCSRC(i32 0)
  %56 = call i8* @SCSRC(i32 1)
  %57 = call i8* @SCSRC(i32 1)
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @stage_scale2x(i8* %53, i8* %54, i8* %55, i8* %56, i8* %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stage_scale2x(i8*, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i8* @SCDST(i32) #1

declare dso_local i8* @SCSRC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
