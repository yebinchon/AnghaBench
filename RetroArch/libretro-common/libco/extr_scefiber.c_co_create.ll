; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/libco/extr_scefiber.c_co_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/libco/extr_scefiber.c_co_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@co_active_ = common dso_local global i64 0, align 8
@SCE_SYSMODULE_FIBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tailFiber\00", align 1
@co_thunk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @co_create(i32 %0, void ()* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca void ()*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store void ()* %1, void ()** %5, align 8
  %9 = call i8* @malloc(i32 4)
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 1, %12
  %14 = trunc i64 %13 to i32
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i64, i64* @co_active_, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @SCE_SYSMODULE_FIBER, align 4
  %20 = call i32 @sceSysmoduleLoadModule(i32 %19)
  store i64 1, i64* @co_active_, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @co_thunk, align 4
  %24 = load void ()*, void ()** %5, align 8
  %25 = ptrtoint void ()* %24 to i32
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @_sceFiberInitializeImpl(i32* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25, i8* %26, i32 %27, i32* null)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i32*, i32** %6, align 8
  %33 = ptrtoint i32* %32 to i64
  store i64 %33, i64* %3, align 8
  br label %37

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sceSysmoduleLoadModule(i32) #1

declare dso_local i32 @_sceFiberInitializeImpl(i32*, i8*, i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
