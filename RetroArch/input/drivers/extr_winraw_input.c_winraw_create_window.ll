; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_winraw_input.c_winraw_create_window.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_winraw_input.c_winraw_create_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"[WINRAW]: GetModuleHandleA failed with error %lu.\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"winraw-input\00", align 1
@ERROR_CLASS_ALREADY_EXISTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"[WINRAW]: RegisterClassA failed with error %lu.\0A\00", align 1
@HWND_MESSAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"[WINRAW]: CreateWindowExA failed with error %lu.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @winraw_create_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @winraw_create_window(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %3, align 4
  %6 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  %7 = call i32 @GetModuleHandleA(i32* null)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = call i64 (...) @GetLastError()
  %14 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %13)
  store i32* null, i32** %2, align 8
  br label %44

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %19 = call i32 @RegisterClassA(%struct.TYPE_3__* %5)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = call i64 (...) @GetLastError()
  %23 = load i64, i64* @ERROR_CLASS_ALREADY_EXISTS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  store i32* null, i32** %2, align 8
  br label %44

28:                                               ; preds = %21, %15
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @HWND_MESSAGE, align 4
  %32 = call i32* @CreateWindowExA(i32 0, i8* %30, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %31, i32* null, i32* null, i32* null)
  store i32* %32, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = call i64 (...) @GetLastError()
  %37 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %36)
  br label %40

38:                                               ; preds = %28
  %39 = load i32*, i32** %4, align 8
  store i32* %39, i32** %2, align 8
  br label %44

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @UnregisterClassA(i8* %42, i32* null)
  store i32* null, i32** %2, align 8
  br label %44

44:                                               ; preds = %40, %38, %25, %12
  %45 = load i32*, i32** %2, align 8
  ret i32* %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetModuleHandleA(i32*) #2

declare dso_local i32 @RARCH_ERR(i8*, i64) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @RegisterClassA(%struct.TYPE_3__*) #2

declare dso_local i32* @CreateWindowExA(i32, i8*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @UnregisterClassA(i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
