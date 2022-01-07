; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack.c_read_map.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack.c_read_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmsgpack_read_callbacks = type { i32 (i32, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.rmsgpack_read_callbacks*, i8*)* @read_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_map(i32* %0, i32 %1, %struct.rmsgpack_read_callbacks* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rmsgpack_read_callbacks*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.rmsgpack_read_callbacks* %2, %struct.rmsgpack_read_callbacks** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %8, align 8
  %13 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %12, i32 0, i32 0
  %14 = load i32 (i32, i8*)*, i32 (i32, i8*)** %13, align 8
  %15 = icmp ne i32 (i32, i8*)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %8, align 8
  %18 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %17, i32 0, i32 0
  %19 = load i32 (i32, i8*)*, i32 (i32, i8*)** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 %19(i32 %20, i8* %21)
  store i32 %22, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %52

26:                                               ; preds = %16, %4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @rmsgpack_read(i32* %32, %struct.rmsgpack_read_callbacks* %33, i8* %34)
  store i32 %35, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %52

39:                                               ; preds = %31
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %8, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @rmsgpack_read(i32* %40, %struct.rmsgpack_read_callbacks* %41, i8* %42)
  store i32 %43, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %52

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %11, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %27

51:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %45, %37, %24
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @rmsgpack_read(i32*, %struct.rmsgpack_read_callbacks*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
