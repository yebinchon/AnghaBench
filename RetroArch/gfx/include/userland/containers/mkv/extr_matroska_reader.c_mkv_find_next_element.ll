; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_find_next_element.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_find_next_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@mkv_cluster_elements_list = common dso_local global i32* null, align 8
@VC_CONTAINER_ERROR_NOT_FOUND = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_BLOCKGROUP = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_SIMPLE_BLOCK = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_BLOCK = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_REFERENCE_BLOCK = common dso_local global i64 0, align 8
@MKV_MAX_ELEMENT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_5__*, i64)* @mkv_find_next_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mkv_find_next_element(i32* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %13, i64* %8, align 8
  br label %14

14:                                               ; preds = %129, %3
  %15 = load i32*, i32** @mkv_cluster_elements_list, align 8
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @STREAM_POSITION(i32* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %26, %35
  %37 = icmp sge i64 %17, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %14
  %39 = load i64, i64* @VC_CONTAINER_ERROR_NOT_FOUND, align 8
  store i64 %39, i64* %4, align 8
  br label %172

40:                                               ; preds = %14
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @INT64_C(i32 1)
  %43 = shl i32 %42, 30
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @mkv_read_element_header(i32* %41, i32 %43, i64* %11, i64* %9, i64 %52, i32** %12)
  store i64 %53, i64* %8, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @STREAM_POSITION(i32* %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %40
  %60 = load i64, i64* %8, align 8
  store i64 %60, i64* %4, align 8
  br label %172

61:                                               ; preds = %40
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %131

66:                                               ; preds = %61
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @MKV_ELEMENT_ID_BLOCKGROUP, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @MKV_ELEMENT_ID_SIMPLE_BLOCK, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %131

75:                                               ; preds = %70, %66
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @MKV_ELEMENT_ID_BLOCK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* @MKV_ELEMENT_ID_REFERENCE_BLOCK, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %79, %75
  %87 = load i32*, i32** %5, align 8
  %88 = call i64 @STREAM_POSITION(i32* %87)
  %89 = load i64, i64* %9, align 8
  %90 = add nsw i64 %88, %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %99, %108
  %110 = icmp sge i64 %90, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %86
  %112 = load i64, i64* @VC_CONTAINER_ERROR_NOT_FOUND, align 8
  store i64 %112, i64* %4, align 8
  br label %172

113:                                              ; preds = %86
  %114 = load i32*, i32** %5, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @INT64_C(i32 1)
  %118 = shl i32 %117, 30
  %119 = call i64 @mkv_read_element_data(i32* %114, i32* %115, i64 %116, i32 %118)
  store i64 %119, i64* %8, align 8
  br label %120

120:                                              ; preds = %113
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32*, i32** %5, align 8
  %126 = call i64 @STREAM_STATUS(i32* %125)
  %127 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %128 = icmp eq i64 %126, %127
  br label %129

129:                                              ; preds = %124, %120
  %130 = phi i1 [ false, %120 ], [ %128, %124 ]
  br i1 %130, label %14, label %131

131:                                              ; preds = %129, %74, %65
  %132 = load i32*, i32** %5, align 8
  %133 = call i64 @STREAM_STATUS(i32* %132)
  %134 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32*, i32** %5, align 8
  %138 = call i64 @STREAM_STATUS(i32* %137)
  store i64 %138, i64* %4, align 8
  br label %172

139:                                              ; preds = %131
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %141, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i64 %144, i64* %152, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  store i64 %153, i64* %161, align 8
  %162 = load i64, i64* %11, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  store i64 %162, i64* %170, align 8
  %171 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %171, i64* %4, align 8
  br label %172

172:                                              ; preds = %139, %136, %111, %59, %38
  %173 = load i64, i64* %4, align 8
  ret i64 %173
}

declare dso_local i64 @STREAM_POSITION(i32*) #1

declare dso_local i64 @mkv_read_element_header(i32*, i32, i64*, i64*, i64, i32**) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i64 @mkv_read_element_data(i32*, i32*, i64, i32) #1

declare dso_local i64 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
