; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_vidtex.c_vidtex_check_gl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_vidtex.c_vidtex_check_gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"GL error: line %d error 0x%04x\00", align 1
@SVP_STOP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @vidtex_check_gl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vidtex_check_gl(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i64 (...) @glGetError()
  store i64 %7, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %12, %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @GL_NO_ERROR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @vcos_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %14)
  store i32 1, i32* %6, align 4
  %16 = call i64 (...) @glGetError()
  store i64 %16, i64* %5, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @SVP_STOP_ERROR, align 4
  %23 = call i32 @vidtex_stop_cb(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %17
  ret void
}

declare dso_local i64 @glGetError(...) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i64) #1

declare dso_local i32 @vidtex_stop_cb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
