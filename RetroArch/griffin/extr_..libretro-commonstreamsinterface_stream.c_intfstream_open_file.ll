; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonstreamsinterface_stream.c_intfstream_open_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonstreamsinterface_stream.c_intfstream_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@INTFSTREAM_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @intfstream_open_file(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* @INTFSTREAM_FILE, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = call i64 @intfstream_init(%struct.TYPE_3__* %8)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %36

17:                                               ; preds = %3
  %18 = load i32*, i32** %9, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @intfstream_open(i32* %18, i8* %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %27

25:                                               ; preds = %17
  %26 = load i32*, i32** %9, align 8
  store i32* %26, i32** %4, align 8
  br label %36

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @intfstream_close(i32* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @free(i32* %33)
  br label %35

35:                                               ; preds = %30, %27
  store i32* null, i32** %4, align 8
  br label %36

36:                                               ; preds = %35, %25, %16
  %37 = load i32*, i32** %4, align 8
  ret i32* %37
}

declare dso_local i64 @intfstream_init(%struct.TYPE_3__*) #1

declare dso_local i32 @intfstream_open(i32*, i8*, i32, i32) #1

declare dso_local i32 @intfstream_close(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
