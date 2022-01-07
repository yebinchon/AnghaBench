; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_fillcharset.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_fillcharset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@i = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @fillcharset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fillcharset(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %43 [
    i32 128, label %10
    i32 129, label %10
    i32 132, label %17
    i32 130, label %17
    i32 133, label %30
    i32 131, label %30
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @testchar(i32* %14, i8 signext 0)
  %16 = call i32 @assert(i32 %15)
  br label %17

17:                                               ; preds = %2, %2, %10
  %18 = load i64, i64* @i, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @i, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* @i, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %25, i32* %28, align 4
  %29 = call i32 @loopset(i64 %18, i32 %25)
  br label %49

30:                                               ; preds = %2, %2
  %31 = load i64, i64* @i, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* @i, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 0, i32* %34, align 4
  %35 = call i32 @loopset(i64 %31, i32 0)
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @setchar(i32* %36, i32 %41)
  br label %49

43:                                               ; preds = %2
  %44 = load i64, i64* @i, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i64, i64* @i, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 255, i32* %47, align 4
  %48 = call i32 @loopset(i64 %44, i32 255)
  br label %49

49:                                               ; preds = %43, %30, %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testchar(i32*, i8 signext) #1

declare dso_local i32 @loopset(i64, i32) #1

declare dso_local i32 @setchar(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
