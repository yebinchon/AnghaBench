; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_main.c_stabend.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_main.c_stabend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32, i32**, i32*, i32*)* }

@stabIR = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@srcfp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**, i32*, i32*)* @stabend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stabend(i32* %0, i32 %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32 (i32*, i32, i32**, i32*, i32*)*, i32 (i32*, i32, i32**, i32*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stabIR, i32 0, i32 0), align 8
  %12 = icmp ne i32 (i32*, i32, i32**, i32*, i32*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %5
  %14 = load i32 (i32*, i32, i32**, i32*, i32*)*, i32 (i32*, i32, i32**, i32*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stabIR, i32 0, i32 0), align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32**, i32*** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 %14(i32* %15, i32 %16, i32** %17, i32* %18, i32* %19)
  br label %21

21:                                               ; preds = %13, %5
  %22 = load i64, i64* @srcfp, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* @srcfp, align 8
  %26 = call i32 @fclose(i64 %25)
  br label %27

27:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @fclose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
