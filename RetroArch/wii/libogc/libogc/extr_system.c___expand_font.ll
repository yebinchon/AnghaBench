; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___expand_font.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___expand_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@sys_fontdata = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @__expand_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__expand_font(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %11 = bitcast %struct.TYPE_2__* %10 to i32*
  %12 = getelementptr inbounds i32, i32* %11, i64 44
  store i32* %12, i32** %9, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 2
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %27, %17
  %25 = load i64, i64* %5, align 8
  %26 = icmp uge i64 %25, 0
  br i1 %26, label %27, label %86

27:                                               ; preds = %24
  %28 = load i32*, i32** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @_SHIFTR(i32 %31, i32 6, i32 2)
  store i64 %32, i64* %6, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @_SHIFTR(i32 %40, i32 4, i32 2)
  store i64 %41, i64* %6, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 240
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 15
  %50 = or i32 %47, %49
  %51 = load i32*, i32** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = shl i64 %52, 1
  %54 = add i64 %53, 0
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @_SHIFTR(i32 %59, i32 2, i32 2)
  store i64 %60, i64* %6, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @_SHIFTR(i32 %68, i32 0, i32 2)
  store i64 %69, i64* %6, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 240
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 15
  %78 = or i32 %75, %77
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = shl i64 %80, 1
  %82 = add i64 %81, 1
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %78, i32* %83, align 4
  %84 = load i64, i64* %5, align 8
  %85 = add i64 %84, -1
  store i64 %85, i64* %5, align 8
  br label %24

86:                                               ; preds = %24
  br label %87

87:                                               ; preds = %86, %2
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @DCStoreRange(i32* %88, i32 %91)
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
