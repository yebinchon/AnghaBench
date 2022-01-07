; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmaldec.c_ffmmal_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmaldec.c_ffmmal_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_13__*)* @ffmmal_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmmal_decode(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %23
  %29 = bitcast %struct.TYPE_13__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 16, i1 false)
  %30 = call i32 @av_init_packet(%struct.TYPE_13__* %13)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = call i32 @ffmmal_add_packet(%struct.TYPE_14__* %41, %struct.TYPE_13__* %13, i32 1)
  store i32 %42, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %88

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46, %23, %4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %50 = call i32 @ffmmal_add_packet(%struct.TYPE_14__* %48, %struct.TYPE_13__* %49, i32 0)
  store i32 %50, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %88

54:                                               ; preds = %47
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = call i32 @ffmmal_fill_input_port(%struct.TYPE_14__* %55)
  store i32 %56, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %88

60:                                               ; preds = %54
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = call i32 @ffmmal_fill_output_port(%struct.TYPE_14__* %61)
  store i32 %62, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %5, align 4
  br label %88

66:                                               ; preds = %60
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @ffmmal_read_frame(%struct.TYPE_14__* %67, i32* %68, i32* %69)
  store i32 %70, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %88

74:                                               ; preds = %66
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = call i32 @ffmmal_fill_output_port(%struct.TYPE_14__* %75)
  store i32 %76, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %88

80:                                               ; preds = %74
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = call i32 @ffmmal_fill_input_port(%struct.TYPE_14__* %81)
  store i32 %82, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %5, align 4
  br label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %84, %78, %72, %64, %58, %52, %44
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_13__*) #2

declare dso_local i32 @ffmmal_add_packet(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #2

declare dso_local i32 @ffmmal_fill_input_port(%struct.TYPE_14__*) #2

declare dso_local i32 @ffmmal_fill_output_port(%struct.TYPE_14__*) #2

declare dso_local i32 @ffmmal_read_frame(%struct.TYPE_14__*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
