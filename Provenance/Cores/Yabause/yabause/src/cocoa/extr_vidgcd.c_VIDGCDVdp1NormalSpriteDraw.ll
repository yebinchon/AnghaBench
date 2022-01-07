; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp1NormalSpriteDraw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp1NormalSpriteDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@cmd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@Vdp1Regs = common dso_local global %struct.TYPE_5__* null, align 8
@Vdp1Ram = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDGCDVdp1NormalSpriteDraw(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp1Regs, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @Vdp1Ram, align 4
  %21 = call i32 @Vdp1ReadCommand(%struct.TYPE_4__* @cmd, i32 %19, i32 %20)
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 2), align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp1Regs, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 1), align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp1Regs, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 0), align 8
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 63
  %35 = mul nsw i32 %34, 8
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 0), align 8
  %37 = and i32 %36, 255
  store i32 %37, i32* %16, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %7, align 8
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @drawQuad(i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67)
  ret void
}

declare dso_local i32 @Vdp1ReadCommand(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @drawQuad(i64, i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
