; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_layer_set_rgb_input_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_layer_set_rgb_input_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64*, i32, %struct.TYPE_8__, i8*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@DISP_LAYER_WORK_MODE_SCALER = common dso_local global i32 0, align 4
@DISP_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@DISP_SEQ_ARGB = common dso_local global i32 0, align 4
@DISP_MOD_INTERLEAVED = common dso_local global i8* null, align 8
@DISP_FORMAT_RGB565 = common dso_local global i32 0, align 4
@DISP_SEQ_P10 = common dso_local global i32 0, align 4
@DISP_CMD_LAYER_SET_FB = common dso_local global i32 0, align 4
@DISP_CMD_LAYER_SET_SRC_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i64, i32, i32, i32)* @sunxi_layer_set_rgb_input_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_layer_set_rgb_input_buffer(%struct.TYPE_9__* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca [4 x i64], align 16
  %16 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = bitcast %struct.TYPE_10__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 32, i1 false)
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %20, align 4
  %22 = call i32 @memset(%struct.TYPE_11__* %14, i32 0, i32 40)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %139

28:                                               ; preds = %6
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = load i32, i32* @DISP_LAYER_WORK_MODE_SCALER, align 4
  %36 = call i64 @sunxi_layer_change_work_mode(%struct.TYPE_9__* %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  br label %42

41:                                               ; preds = %33
  store i32 -1, i32* %7, align 4
  br label %139

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %46, %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 %48, i64* %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %57, label %67

57:                                               ; preds = %43
  %58 = load i32, i32* @DISP_FORMAT_ARGB8888, align 4
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* @DISP_SEQ_ARGB, align 4
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  store i32 %60, i32* %61, align 8
  %62 = load i8*, i8** @DISP_MOD_INTERLEAVED, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  store i8* %62, i8** %63, align 8
  %64 = load i32, i32* %13, align 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %83

67:                                               ; preds = %43
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 16
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32, i32* @DISP_FORMAT_RGB565, align 4
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  store i32 %71, i32* %72, align 8
  %73 = load i32, i32* @DISP_SEQ_P10, align 4
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  store i32 %73, i32* %74, align 8
  %75 = load i8*, i8** @DISP_MOD_INTERLEAVED, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 %77, 2
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %82

81:                                               ; preds = %67
  store i32 -1, i32* %7, align 4
  br label %139

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  store i64 %86, i64* %87, align 16
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 1
  store i64 %90, i64* %91, align 8
  %92 = ptrtoint %struct.TYPE_11__* %14 to i64
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 2
  store i64 %92, i64* %93, align 16
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @DISP_CMD_LAYER_SET_FB, align 4
  %98 = bitcast [4 x i64]* %15 to i64**
  %99 = call i32 @ioctl(i32 %96, i32 %97, i64** %98)
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %83
  store i32 -1, i32* %7, align 4
  br label %139

102:                                              ; preds = %83
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 4
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  store i64 %125, i64* %126, align 16
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 1
  store i64 %129, i64* %130, align 8
  %131 = ptrtoint %struct.TYPE_10__* %16 to i64
  %132 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 2
  store i64 %131, i64* %132, align 16
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @DISP_CMD_LAYER_SET_SRC_WINDOW, align 4
  %137 = bitcast [4 x i64]* %15 to i64**
  %138 = call i32 @ioctl(i32 %135, i32 %136, i64** %137)
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %102, %101, %81, %41, %27
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i64 @sunxi_layer_change_work_mode(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @ioctl(i32, i32, i64**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
