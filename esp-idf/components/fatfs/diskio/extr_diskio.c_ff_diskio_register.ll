; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/diskio/extr_diskio.c_ff_diskio_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/diskio/extr_diskio.c_ff_diskio_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FF_VOLUMES = common dso_local global i64 0, align 8
@s_impls = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_diskio_register(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @FF_VOLUMES, align 8
  %9 = icmp ult i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32**, i32*** @s_impls, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i32*, i32** %12, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load i32**, i32*** @s_impls, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  %22 = load i32**, i32*** @s_impls, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  store i32* null, i32** %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @free(i32* %25)
  br label %27

27:                                               ; preds = %17, %2
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %45

31:                                               ; preds = %27
  %32 = call i64 @malloc(i32 4)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @memcpy(i32* %38, i32* %39, i32 4)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32**, i32*** @s_impls, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  store i32* %41, i32** %44, align 8
  br label %45

45:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
