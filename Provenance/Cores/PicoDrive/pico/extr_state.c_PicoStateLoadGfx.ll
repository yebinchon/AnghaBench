; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_state.c_PicoStateLoadGfx.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_state.c_PicoStateLoadGfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32*, i32* }

@SEEK_SET = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PicoStateLoadGfx(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @open_save_file(i8* %6, i32 0)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @state_load_gfx(i8* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @SEEK_SET, align 4
  %19 = call i32 @areaSeek(i8* %17, i32 65568, i32 %18)
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 3), align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @areaRead(i32* %20, i32 1, i32 8, i8* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @SEEK_CUR, align 4
  %25 = call i32 @areaSeek(i8* %23, i32 8192, i32 %24)
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 2), align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @areaRead(i32* %26, i32 1, i32 8, i8* %27)
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @areaRead(i32* %29, i32 1, i32 8, i8* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i32 @areaSeek(i8* %32, i32 139680, i32 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @areaRead(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), i32 1, i32 4, i8* %35)
  br label %37

37:                                               ; preds = %16, %11
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @areaClose(i8* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i8* @open_save_file(i8*, i32) #1

declare dso_local i32 @state_load_gfx(i8*) #1

declare dso_local i32 @areaSeek(i8*, i32, i32) #1

declare dso_local i32 @areaRead(i32*, i32, i32, i8*) #1

declare dso_local i32 @areaClose(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
