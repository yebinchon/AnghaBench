; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_layer_reserve.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_layer_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i8*, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i8*, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@DISP_LAYER_WORK_MODE_NORMAL = common dso_local global i64 0, align 8
@DISP_CMD_LAYER_REQUEST = common dso_local global i32 0, align 4
@DISP_CMD_LAYER_GET_PARA = common dso_local global i32 0, align 4
@DISP_FORMAT_ARGB8888 = common dso_local global i8* null, align 8
@DISP_SEQ_ARGB = common dso_local global i32 0, align 4
@DISP_MOD_INTERLEAVED = common dso_local global i32 0, align 4
@DISP_CMD_LAYER_SET_PARA = common dso_local global i32 0, align 4
@DISP_LAYER_WORK_MODE_SCALER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @sunxi_layer_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_layer_reserve(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca [4 x i64], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  store i64 %8, i64* %9, align 16
  %10 = load i64, i64* @DISP_LAYER_WORK_MODE_NORMAL, align 8
  %11 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1
  store i64 %10, i64* %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DISP_CMD_LAYER_REQUEST, align 4
  %16 = call i64 (i32, i32, ...) @ioctl(i32 %14, i32 %15, [4 x i64]* %5)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %108

24:                                               ; preds = %1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1
  store i64 %31, i64* %32, align 8
  %33 = ptrtoint %struct.TYPE_10__* %4 to i64
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  store i64 %33, i64* %34, align 16
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DISP_CMD_LAYER_GET_PARA, align 4
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %40 = call i64 (i32, i32, ...) @ioctl(i32 %37, i32 %38, i64* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %108

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  store i32 255, i32* %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %49, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load i8*, i8** @DISP_FORMAT_ARGB8888, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @DISP_SEQ_ARGB, align 4
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @DISP_MOD_INTERLEAVED, align 4
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  store i64 %71, i64* %72, align 16
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1
  store i64 %75, i64* %76, align 8
  %77 = ptrtoint %struct.TYPE_10__* %4 to i64
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  store i64 %77, i64* %78, align 16
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @DISP_CMD_LAYER_SET_PARA, align 4
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %84 = call i64 (i32, i32, ...) @ioctl(i32 %81, i32 %82, i64* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %43
  store i32 -1, i32* %2, align 4
  br label %108

87:                                               ; preds = %43
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = load i64, i64* @DISP_LAYER_WORK_MODE_SCALER, align 8
  %90 = call i64 @sunxi_layer_change_work_mode(%struct.TYPE_9__* %88, i64 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = load i64, i64* @DISP_LAYER_WORK_MODE_NORMAL, align 8
  %98 = call i64 @sunxi_layer_change_work_mode(%struct.TYPE_9__* %96, i64 %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 4
  store i64 0, i64* %100, align 8
  %101 = load i8*, i8** @DISP_FORMAT_ARGB8888, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %95, %86, %42, %23
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i64 @sunxi_layer_change_work_mode(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
