; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_fifo.c_hb_frame_buffer_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_fifo.c_hb_frame_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@FRAME_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @hb_frame_buffer_init(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_14__* @av_pix_fmt_desc_get(i32 %15)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %8, align 8
  %17 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 16, i1 false)
  store i32 0, i32* %13, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = icmp eq %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %97

21:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %64, %21
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %22
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %40, %28
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %50
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @hb_image_stride(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @hb_image_height_stride(i32 %56, i32 %57, i32 %58)
  %60 = mul nsw i32 %55, %59
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %48, %42
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %22

67:                                               ; preds = %22
  %68 = load i32, i32* %14, align 4
  %69 = call %struct.TYPE_13__* @hb_buffer_init_internal(i32 %68)
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %9, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = icmp eq %struct.TYPE_13__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %97

73:                                               ; preds = %67
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @FRAME_BUF, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  store i32 %90, i32* %93, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %95 = call i32 @hb_buffer_init_planes(%struct.TYPE_13__* %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %4, align 8
  br label %97

97:                                               ; preds = %73, %72, %20
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %98
}

declare dso_local %struct.TYPE_14__* @av_pix_fmt_desc_get(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @hb_image_stride(i32, i32, i32) #1

declare dso_local i32 @hb_image_height_stride(i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @hb_buffer_init_internal(i32) #1

declare dso_local i32 @hb_buffer_init_planes(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
