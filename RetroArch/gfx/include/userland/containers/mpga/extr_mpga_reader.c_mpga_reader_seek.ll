; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpga/extr_mpga_reader.c_mpga_reader_seek.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpga/extr_mpga_reader.c_mpga_reader_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32*, i8*, i32, i32, i32, i8*, i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_SEEK_MODE_TIME = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_EOS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i32*, i64, i32)* @mpga_reader_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mpga_reader_seek(%struct.TYPE_12__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %10, align 8
  %24 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = call i8* @STREAM_POSITION(%struct.TYPE_12__* %25)
  store i8* %26, i8** %13, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32 %27)
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @VC_CONTAINER_SEEK_MODE_TIME, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = call i32 @STREAM_SEEKABLE(%struct.TYPE_12__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32, %4
  %37 = load i64, i64* @VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION, align 8
  store i64 %37, i64* %5, align 8
  br label %195

38:                                               ; preds = %32
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @INT64_C(i32 0)
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %137

43:                                               ; preds = %38
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* @VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION, align 8
  store i64 %49, i64* %5, align 8
  br label %195

50:                                               ; preds = %43
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %120

55:                                               ; preds = %50
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %64, %67
  %69 = sdiv i32 %61, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @INT64_C(i32 999999)
  %72 = call i32 @MIN(i32 %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sdiv i32 %73, 10000
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %14, align 4
  %76 = srem i32 %75, 10000
  store i32 %76, i32* %18, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp slt i32 %84, 99
  br i1 %85, label %86, label %95

86:                                               ; preds = %55
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  br label %96

95:                                               ; preds = %55
  br label %96

96:                                               ; preds = %95, %86
  %97 = phi i32 [ %94, %86 ], [ 256, %95 ]
  store i32 %97, i32* %17, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %16, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %16, align 4
  %111 = sub nsw i32 %109, %110
  %112 = mul nsw i32 %108, %111
  %113 = load i32, i32* %18, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sdiv i32 %114, 10000
  %116 = add nsw i32 %105, %115
  %117 = ashr i32 %116, 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr i8, i8* %100, i64 %118
  store i8* %119, i8** %12, align 8
  br label %136

120:                                              ; preds = %50
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 4
  %123 = load i8*, i8** %122, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %125, %128
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sdiv i32 %129, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr i8, i8* %123, i64 %134
  store i8* %135, i8** %12, align 8
  br label %136

136:                                              ; preds = %120, %96
  br label %141

137:                                              ; preds = %38
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %12, align 8
  br label %141

141:                                              ; preds = %137, %136
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @SEEK(%struct.TYPE_12__* %142, i8* %143)
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = call i64 @mpga_sync(%struct.TYPE_12__* %145)
  store i64 %146, i64* %11, align 8
  %147 = load i64, i64* %11, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %141
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* @VC_CONTAINER_ERROR_EOS, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %190

154:                                              ; preds = %149, %141
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %156, %159
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = ashr i32 %163, 1
  %165 = add nsw i32 %160, %164
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %165, %168
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 6
  store i32 %169, i32* %171, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %173 = call i8* @STREAM_POSITION(%struct.TYPE_12__* %172)
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 4
  %176 = load i8*, i8** %175, align 8
  %177 = ptrtoint i8* %173 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = inttoptr i64 %179 to i8*
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 8
  store i8* %180, i8** %182, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %184 = call i32 @mpga_calculate_frame_time(%struct.TYPE_12__* %183)
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 7
  store i32 %184, i32* %186, align 8
  %187 = load i32*, i32** %7, align 8
  store i32 %184, i32* %187, align 4
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %189 = call i64 @STREAM_STATUS(%struct.TYPE_12__* %188)
  store i64 %189, i64* %5, align 8
  br label %195

190:                                              ; preds = %153
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %192 = load i8*, i8** %13, align 8
  %193 = call i32 @SEEK(%struct.TYPE_12__* %191, i8* %192)
  %194 = load i64, i64* %11, align 8
  store i64 %194, i64* %5, align 8
  br label %195

195:                                              ; preds = %190, %154, %48, %36
  %196 = load i64, i64* %5, align 8
  ret i64 %196
}

declare dso_local i8* @STREAM_POSITION(%struct.TYPE_12__*) #1

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i32) #1

declare dso_local i32 @STREAM_SEEKABLE(%struct.TYPE_12__*) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @SEEK(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @mpga_sync(%struct.TYPE_12__*) #1

declare dso_local i32 @mpga_calculate_frame_time(%struct.TYPE_12__*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
