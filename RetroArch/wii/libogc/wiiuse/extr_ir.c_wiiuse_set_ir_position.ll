; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_wiiuse_set_ir_position.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_wiiuse_set_ir_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@WIIUSE_ASPECT_16_9 = common dso_local global i32 0, align 4
@WM_ASPECT_16_9_Y = common dso_local global i32 0, align 4
@WIIUSE_ASPECT_4_3 = common dso_local global i32 0, align 4
@WM_ASPECT_4_3_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiuse_set_ir_position(%struct.wiimote_t* %0, i32 %1) #0 {
  %3 = alloca %struct.wiimote_t*, align 8
  %4 = alloca i32, align 4
  store %struct.wiimote_t* %0, %struct.wiimote_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %6 = icmp ne %struct.wiimote_t* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %95

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %11 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %94 [
    i32 129, label %14
    i32 128, label %53
  ]

14:                                               ; preds = %8
  %15 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %16 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %21 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @WIIUSE_ASPECT_16_9, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %14
  %27 = load i32, i32* @WM_ASPECT_16_9_Y, align 4
  %28 = sdiv i32 %27, 2
  %29 = sub nsw i32 %28, 70
  %30 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %31 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %29, i32* %34, align 4
  br label %52

35:                                               ; preds = %14
  %36 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %37 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WIIUSE_ASPECT_4_3, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load i32, i32* @WM_ASPECT_4_3_Y, align 4
  %44 = sdiv i32 %43, 2
  %45 = sub nsw i32 %44, 100
  %46 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %47 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %42, %35
  br label %52

52:                                               ; preds = %51, %26
  br label %95

53:                                               ; preds = %8
  %54 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %55 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 0, i32* %58, align 4
  %59 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %60 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @WIIUSE_ASPECT_16_9, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %53
  %66 = load i32, i32* @WM_ASPECT_16_9_Y, align 4
  %67 = sub nsw i32 0, %66
  %68 = sdiv i32 %67, 2
  %69 = add nsw i32 %68, 70
  %70 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %71 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %69, i32* %74, align 4
  br label %93

75:                                               ; preds = %53
  %76 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %77 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @WIIUSE_ASPECT_4_3, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load i32, i32* @WM_ASPECT_4_3_Y, align 4
  %84 = sub nsw i32 0, %83
  %85 = sdiv i32 %84, 2
  %86 = add nsw i32 %85, 100
  %87 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %88 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %86, i32* %91, align 4
  br label %92

92:                                               ; preds = %82, %75
  br label %93

93:                                               ; preds = %92, %65
  br label %95

94:                                               ; preds = %8
  br label %95

95:                                               ; preds = %94, %93, %52, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
