; ModuleID = '/home/carl/AnghaBench/RetroArch/ui/drivers/extr_ui_win32.c_win32_window_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ui/drivers/extr_ui_win32.c_win32_window_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i64, i64, i32, i32, i32 }

@CS_HREDRAW = common dso_local global i32 0, align 4
@CS_VREDRAW = common dso_local global i32 0, align 4
@CS_OWNDC = common dso_local global i32 0, align 4
@IDC_ARROW = common dso_local global i32 0, align 4
@MSG_PROGRAM = common dso_local global i32 0, align 4
@IDI_ICON = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@COLOR_WINDOW = common dso_local global i64 0, align 8
@CS_CLASSDC = common dso_local global i32 0, align 4
@MSG_HASH_USER_LANGUAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @win32_window_init(%struct.TYPE_4__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 48, i32* %9, align 8
  %10 = load i32, i32* @CS_HREDRAW, align 4
  %11 = load i32, i32* @CS_VREDRAW, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CS_OWNDC, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = call i32 @GetModuleHandle(i32* null)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @IDC_ARROW, align 4
  %21 = call i32 @LoadCursor(i32* null, i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @MSG_PROGRAM, align 4
  %30 = call i8* @msg_hash_to_str(i32 %29)
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i8* [ %27, %26 ], [ %30, %28 ]
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = call i32 @GetModuleHandle(i32* null)
  %36 = load i32, i32* @IDI_ICON, align 4
  %37 = call i32 @MAKEINTRESOURCE(i32 %36)
  %38 = call i32 @LoadIcon(i32 %35, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = call i32 @GetModuleHandle(i32* null)
  %42 = load i32, i32* @IDI_ICON, align 4
  %43 = call i32 @MAKEINTRESOURCE(i32 %42)
  %44 = load i32, i32* @IMAGE_ICON, align 4
  %45 = call i64 @LoadImage(i32 %41, i32 %43, i32 %44, i32 16, i32 16, i32 0)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %31
  %51 = load i64, i64* @COLOR_WINDOW, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %31
  %55 = load i8*, i8** %7, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @CS_CLASSDC, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %54
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = call i32 @RegisterClassEx(%struct.TYPE_4__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %69

68:                                               ; preds = %63
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @GetModuleHandle(i32*) #1

declare dso_local i32 @LoadCursor(i32*, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @LoadIcon(i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i64 @LoadImage(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RegisterClassEx(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
