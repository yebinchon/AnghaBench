; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_io_read_sint.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_io_read_sint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @mkv_io_read_sint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_io_read_sint(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @mkv_io_read_uint(%struct.TYPE_4__* %10, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %31 [
    i32 1, label %19
    i32 2, label %22
    i32 3, label %25
    i32 4, label %28
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 63
  store i32 %21, i32* %5, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %23, 8191
  store i32 %24, i32* %5, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 1048575
  store i32 %27, i32* %5, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 134217727
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %28, %25, %22, %19
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @mkv_io_read_uint(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
