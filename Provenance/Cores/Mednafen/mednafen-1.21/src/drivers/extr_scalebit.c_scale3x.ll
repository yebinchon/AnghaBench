; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scalebit.c_scale3x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scalebit.c_scale3x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32, i32, i32)* @scale3x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale3x(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %27 = call i8* @SCDST(i32 2)
  %28 = call i8* @SCSRC(i32 0)
  %29 = call i8* @SCSRC(i32 0)
  %30 = call i8* @SCSRC(i32 1)
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @stage_scale3x(i8* %25, i8* %26, i8* %27, i8* %28, i8* %29, i8* %30, i32 %31, i32 %32)
  %34 = call i8* @SCDST(i32 3)
  store i8* %34, i8** %15, align 8
  %35 = load i32, i32* %17, align 4
  %36 = sub i32 %35, 2
  store i32 %36, i32* %17, align 4
  br label %37

37:                                               ; preds = %40, %7
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = call i8* @SCDST(i32 0)
  %42 = call i8* @SCDST(i32 1)
  %43 = call i8* @SCDST(i32 2)
  %44 = call i8* @SCSRC(i32 0)
  %45 = call i8* @SCSRC(i32 1)
  %46 = call i8* @SCSRC(i32 2)
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @stage_scale3x(i8* %41, i8* %42, i8* %43, i8* %44, i8* %45, i8* %46, i32 %47, i32 %48)
  %50 = call i8* @SCDST(i32 3)
  store i8* %50, i8** %15, align 8
  %51 = call i8* @SCSRC(i32 1)
  store i8* %51, i8** %16, align 8
  %52 = load i32, i32* %17, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %17, align 4
  br label %37

54:                                               ; preds = %37
  %55 = call i8* @SCDST(i32 0)
  %56 = call i8* @SCDST(i32 1)
  %57 = call i8* @SCDST(i32 2)
  %58 = call i8* @SCSRC(i32 0)
  %59 = call i8* @SCSRC(i32 1)
  %60 = call i8* @SCSRC(i32 1)
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @stage_scale3x(i8* %55, i8* %56, i8* %57, i8* %58, i8* %59, i8* %60, i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stage_scale3x(i8*, i8*, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i8* @SCDST(i32) #1

declare dso_local i8* @SCSRC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
