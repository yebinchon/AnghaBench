; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_set_rumble_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_set_rumble_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RETRO_RUMBLE_STRONG = common dso_local global i32 0, align 4
@RETRO_RUMBLE_WEAK = common dso_local global i32 0, align 4
@g_android = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i64, i32)* @android_input_set_rumble_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @android_input_set_rumble_internal(i32 %0, i32* %1, i32* %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = call i64 (...) @jni_thread_getenv()
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32*, i32** %13, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %70

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @RETRO_RUMBLE_STRONG, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %26, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  br label %44

32:                                               ; preds = %21
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @RETRO_RUMBLE_WEAK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %37, %39
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %32
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i32, i32* %14, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load i32, i32* %14, align 4
  %51 = sitofp i32 %50 to float
  %52 = fmul float 0x3F6FE01FE0000000, %51
  %53 = fptosi float %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_android, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_android, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @RETRO_RUMBLE_STRONG, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @CALL_VOID_METHOD_PARAM(i32* %54, i32 %59, i32 %62, i32 %64, i32 %65, i32 %66, i32 0)
  %68 = load i32, i32* %14, align 4
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %20, %49, %44
  ret void
}

declare dso_local i64 @jni_thread_getenv(...) #1

declare dso_local i32 @CALL_VOID_METHOD_PARAM(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
