; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c___console_clear_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c___console_clear_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@FONT_XSIZE = common dso_local global i32 0, align 4
@FONT_YSIZE = common dso_local global i32 0, align 4
@curr_con = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @__console_clear_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__console_clear_line(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @FONT_XSIZE, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @FONT_YSIZE, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %7, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %72

20:                                               ; preds = %3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* %11, align 4
  %29 = mul i32 %27, %28
  store i32 %29, i32* %13, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %9, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @FONT_YSIZE, align 4
  %36 = load i32, i32* %10, align 4
  %37 = mul i32 %35, %36
  %38 = mul i32 %34, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %11, align 4
  %41 = mul i32 %39, %40
  %42 = add i32 %38, %41
  %43 = load i32*, i32** %9, align 8
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %9, align 8
  br label %46

46:                                               ; preds = %62, %20
  %47 = load i32, i32* %12, align 4
  %48 = add i32 %47, -1
  store i32 %48, i32* %12, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %56, %50
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %8, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  br label %52

62:                                               ; preds = %52
  %63 = load i32, i32* %13, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = zext i32 %63 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32* %67, i32** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %9, align 8
  br label %46

72:                                               ; preds = %19, %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
