; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rcv/extr_rcv_reader.c_rcv_seek_nearest_keyframe.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rcv/extr_rcv_reader.c_rcv_seek_nearest_keyframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__, i64, i64 }
%struct.TYPE_14__ = type { i64, i64, i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64*, i32)* @rcv_seek_nearest_keyframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcv_seek_nearest_keyframe(%struct.TYPE_12__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %7, align 8
  %17 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %17, i32* %8, align 4
  store i64 4, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = mul nsw i64 %28, 1000
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %29, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %24, %3
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = call i32 @SEEK(%struct.TYPE_12__* %34, i64 4)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = call i32 @memset(%struct.TYPE_14__* %37, i32 0, i32 4)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %33, %24
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = call i32 @STREAM_POSITION(%struct.TYPE_12__* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %51, %54
  %56 = sext i32 %55 to i64
  %57 = sub i64 %56, 4
  %58 = call i32 @SEEK(%struct.TYPE_12__* %49, i64 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %48, %43
  br label %64

64:                                               ; preds = %63, %131
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = call i32 @PEEK_BYTES(%struct.TYPE_12__* %65, %struct.TYPE_14__* %67, i32 4)
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @VC_CONTAINER_ERROR_EOS, align 4
  store i32 %72, i32* %8, align 4
  br label %139

73:                                               ; preds = %64
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %131

79:                                               ; preds = %73
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = mul nsw i64 %91, 1000
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = call i32 @STREAM_POSITION(%struct.TYPE_12__* %93)
  %95 = call i32 @vc_container_index_add(i64 %87, i64 %92, i32 %94)
  br label %96

96:                                               ; preds = %84, %79
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = mul nsw i64 %100, 1000
  %102 = load i64*, i64** %5, align 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp sge i64 %101, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %96
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = mul nsw i64 %109, 1000
  %111 = load i64*, i64** %5, align 8
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %114, %105
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = mul nsw i64 %119, 1000
  %121 = load i64*, i64** %5, align 8
  store i64 %120, i64* %121, align 8
  br label %139

122:                                              ; preds = %96
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = call i32 @STREAM_POSITION(%struct.TYPE_12__* %123)
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %9, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = mul nsw i64 %129, 1000
  store i64 %130, i64* %10, align 8
  br label %131

131:                                              ; preds = %122, %73
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 4
  %138 = call i32 @SKIP_BYTES(%struct.TYPE_12__* %132, i64 %137)
  br label %64

139:                                              ; preds = %115, %71
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i64, i64* %10, align 8
  %144 = load i64*, i64** %5, align 8
  store i64 %143, i64* %144, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @SEEK(%struct.TYPE_12__* %145, i64 %146)
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %142, %139
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local i32 @SEEK(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @STREAM_POSITION(%struct.TYPE_12__*) #1

declare dso_local i32 @PEEK_BYTES(%struct.TYPE_12__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @vc_container_index_add(i64, i64, i32) #1

declare dso_local i32 @SKIP_BYTES(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
