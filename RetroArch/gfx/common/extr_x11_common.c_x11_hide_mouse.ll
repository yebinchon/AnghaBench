; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_hide_mouse.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_hide_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@x11_hide_mouse.bm_no_data = internal global [8 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [6 x i8] c"black\00", align 1
@None = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @x11_hide_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x11_hide_mouse(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @DefaultScreen(i32* %11)
  %13 = call i32 @DefaultColormap(i32* %10, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @XAllocNamedColor(i32* %14, i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %7, %struct.TYPE_6__* %8)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %46

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @XCreateBitmapFromData(i32* %20, i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @x11_hide_mouse.bm_no_data, i64 0, i64 0), i32 8, i32 8)
  store i64 %22, i64* %6, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @XCreatePixmapCursor(i32* %23, i64 %24, i64 %25, %struct.TYPE_6__* %7, %struct.TYPE_6__* %7, i32 0, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @XDefineCursor(i32* %27, i32 %28, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @XFreeCursor(i32* %31, i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @None, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  %38 = load i32*, i32** %3, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @XFreePixmap(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %37, %19
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %45 = call i32 @XFreeColors(i32* %42, i32 %43, i32* %44, i32 1, i32 0)
  br label %46

46:                                               ; preds = %41, %18
  ret void
}

declare dso_local i32 @DefaultColormap(i32*, i32) #1

declare dso_local i32 @DefaultScreen(i32*) #1

declare dso_local i32 @XAllocNamedColor(i32*, i32, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i64 @XCreateBitmapFromData(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @XCreatePixmapCursor(i32*, i64, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @XDefineCursor(i32*, i32, i32) #1

declare dso_local i32 @XFreeCursor(i32*, i32) #1

declare dso_local i32 @XFreePixmap(i32*, i64) #1

declare dso_local i32 @XFreeColors(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
