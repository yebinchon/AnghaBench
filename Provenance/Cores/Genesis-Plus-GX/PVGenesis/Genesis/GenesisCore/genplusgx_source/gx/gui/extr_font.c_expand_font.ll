; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_font.c_expand_font.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_font.c_expand_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@fontHeader = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @expand_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_font(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fontHeader, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %13 = bitcast %struct.TYPE_3__* %12 to i32*
  %14 = getelementptr inbounds i32, i32* %13, i64 44
  store i32* %14, i32** %10, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %89

19:                                               ; preds = %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 2
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %29, %19
  %27 = load i64, i64* %5, align 8
  %28 = icmp uge i64 %27, 0
  br i1 %28, label %29, label %88

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @_SHIFTR(i32 %33, i32 6, i32 2)
  store i64 %34, i64* %6, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @_SHIFTR(i32 %42, i32 4, i32 2)
  store i64 %43, i64* %6, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 240
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 15
  %52 = or i32 %49, %51
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = shl i64 %54, 1
  %56 = add i64 %55, 0
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %52, i32* %57, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @_SHIFTR(i32 %61, i32 2, i32 2)
  store i64 %62, i64* %6, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @_SHIFTR(i32 %70, i32 0, i32 2)
  store i64 %71, i64* %6, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 240
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 15
  %80 = or i32 %77, %79
  %81 = load i32*, i32** %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = shl i64 %82, 1
  %84 = add i64 %83, 1
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load i64, i64* %5, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %5, align 8
  br label %26

88:                                               ; preds = %26
  br label %89

89:                                               ; preds = %88, %2
  %90 = load i32*, i32** %4, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @DCStoreRange(i32* %90, i32 %93)
  ret void
}

declare dso_local i64 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @DCStoreRange(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
