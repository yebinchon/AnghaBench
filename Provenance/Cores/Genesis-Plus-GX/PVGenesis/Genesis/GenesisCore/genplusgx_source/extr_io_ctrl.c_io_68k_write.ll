; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_68k_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_68k_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }

@io_reg = common dso_local global i32* null, align 8
@port = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @io_68k_write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %70 [
    i32 1, label %6
    i32 2, label %6
    i32 3, label %6
    i32 4, label %27
    i32 5, label %27
    i32 6, label %27
    i32 7, label %57
    i32 10, label %57
    i32 13, label %57
    i32 9, label %63
    i32 12, label %63
    i32 15, label %63
  ]

6:                                                ; preds = %2, %2, %2
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** @io_reg, align 8
  %9 = load i32, i32* %3, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32 %7, i32* %11, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sub i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32*, i32** @io_reg, align 8
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 3
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %18(i32 %19, i32 %25)
  br label %71

27:                                               ; preds = %2, %2, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32*, i32** @io_reg, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %28, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = load i32*, i32** @io_reg, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sub i32 %42, 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = load i32*, i32** @io_reg, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sub i32 %49, 3
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 %47(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %35, %27
  br label %71

57:                                               ; preds = %2, %2, %2
  %58 = load i32, i32* %4, align 4
  %59 = load i32*, i32** @io_reg, align 8
  %60 = load i32, i32* %3, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %71

63:                                               ; preds = %2, %2, %2
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, 248
  %66 = load i32*, i32** @io_reg, align 8
  %67 = load i32, i32* %3, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %71

70:                                               ; preds = %2
  br label %71

71:                                               ; preds = %70, %63, %57, %56, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
