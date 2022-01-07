; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_gdi_ctx.c_gfx_ctx_gdi_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_gdi_ctx.c_gfx_ctx_gdi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@g_win32_inited = common dso_local global i64 0, align 8
@WndProcGDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @gfx_ctx_gdi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gfx_ctx_gdi_init(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = call i64 @calloc(i32 1, i32 1)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %35

14:                                               ; preds = %2
  %15 = load i64, i64* @g_win32_inited, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %28

18:                                               ; preds = %14
  %19 = call i32 (...) @win32_window_reset()
  %20 = call i32 (...) @win32_monitor_init()
  %21 = load i32, i32* @WndProcGDI, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = call i32 @win32_window_init(%struct.TYPE_3__* %6, i32 1, i32* null)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %28

26:                                               ; preds = %18
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %3, align 8
  br label %35

28:                                               ; preds = %25, %17
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @free(i8* %32)
  br label %34

34:                                               ; preds = %31, %28
  store i8* null, i8** %3, align 8
  br label %35

35:                                               ; preds = %34, %26, %13
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @win32_window_reset(...) #2

declare dso_local i32 @win32_monitor_init(...) #2

declare dso_local i32 @win32_window_init(%struct.TYPE_3__*, i32, i32*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
