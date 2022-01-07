; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_reader_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_reader_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_23__*, %struct.TYPE_22__** }
%struct.TYPE_23__ = type { i32, i32, i32 (%struct.TYPE_24__*)*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i64, i32, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"using mp4 reader\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@MP4_BOX_TYPE_ROOT = common dso_local global i32 0, align 4
@mp4_reader_read = common dso_local global i32 0, align 4
@mp4_reader_seek = common dso_local global i32 0, align 4
@VC_CONTAINER_CAPS_CAN_SEEK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"mp4: error opening stream\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp4_reader_open(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %10 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %10, i64* %4, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %5, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %13 = call i32 @PEEK_BYTES(%struct.TYPE_24__* %11, i32* %12, i32 8)
  %14 = icmp ne i32 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %16, i64* %2, align 8
  br label %182

17:                                               ; preds = %1
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %19 = load i32, i32* %18, align 16
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @VC_FOURCC(i32 %19, i32 %21, i32 %23, i32 %25)
  switch i32 %26, label %28 [
    i32 136, label %27
    i32 135, label %27
    i32 134, label %27
    i32 137, label %27
    i32 131, label %27
    i32 128, label %27
    i32 132, label %27
    i32 133, label %27
    i32 130, label %27
    i32 129, label %27
  ]

27:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17, %17
  br label %30

28:                                               ; preds = %17
  %29 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %29, i64* %2, align 8
  br label %182

30:                                               ; preds = %27
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %32 = call i32 @LOG_DEBUG(%struct.TYPE_24__* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %33 = call %struct.TYPE_25__* @malloc(i32 32)
  store %struct.TYPE_25__* %33, %struct.TYPE_25__** %5, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %35 = icmp ne %struct.TYPE_25__* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %37, i64* %4, align 8
  br label %172

38:                                               ; preds = %30
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %40 = call i32 @memset(%struct.TYPE_25__* %39, i32 0, i32 32)
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 3
  store %struct.TYPE_25__* %41, %struct.TYPE_25__** %45, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %47, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 3
  store %struct.TYPE_22__** %48, %struct.TYPE_22__*** %50, align 8
  br label %51

51:                                               ; preds = %109, %38
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %53 = call i64 @STREAM_STATUS(%struct.TYPE_24__* %52)
  %54 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %110

56:                                               ; preds = %51
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %58 = call i32 @INT64_C(i32 -1)
  %59 = call i64 @mp4_read_box_header(%struct.TYPE_24__* %57, i32 %58, i32* %8, i32* %9)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %172

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 135
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %69 = call i64 @STREAM_POSITION(%struct.TYPE_24__* %68)
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %110

80:                                               ; preds = %67
  br label %88

81:                                               ; preds = %64
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 134
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %80
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @MP4_BOX_TYPE_ROOT, align 4
  %93 = call i64 @mp4_read_box_data(%struct.TYPE_24__* %89, i32 %90, i32 %91, i32 %92)
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %172

98:                                               ; preds = %88
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %110

109:                                              ; preds = %103, %98
  br label %51

110:                                              ; preds = %108, %79, %51
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %133, %110
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ult i32 %112, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %111
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %122, i64 %124
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = call i64 @mp4_read_sample_header(%struct.TYPE_24__* %118, i32 %119, i32* %131)
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %117
  %134 = load i32, i32* %6, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %111

136:                                              ; preds = %111
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @SEEK(%struct.TYPE_24__* %137, i64 %140)
  store i64 %141, i64* %4, align 8
  %142 = load i64, i64* %4, align 8
  %143 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  br label %172

146:                                              ; preds = %136
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 2
  store i32 (%struct.TYPE_24__*)* @mp4_reader_close, i32 (%struct.TYPE_24__*)** %150, align 8
  %151 = load i32, i32* @mp4_reader_read, align 4
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 1
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* @mp4_reader_seek, align 4
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %162 = call i64 @STREAM_SEEKABLE(%struct.TYPE_24__* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %146
  %165 = load i32, i32* @VC_CONTAINER_CAPS_CAN_SEEK, align 4
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %146
  %171 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %171, i64* %2, align 8
  br label %182

172:                                              ; preds = %145, %97, %63, %36
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %174 = call i32 @LOG_DEBUG(%struct.TYPE_24__* %173, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %176 = icmp ne %struct.TYPE_25__* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %179 = call i32 @mp4_reader_close(%struct.TYPE_24__* %178)
  br label %180

180:                                              ; preds = %177, %172
  %181 = load i64, i64* %4, align 8
  store i64 %181, i64* %2, align 8
  br label %182

182:                                              ; preds = %180, %170, %28, %15
  %183 = load i64, i64* %2, align 8
  ret i64 %183
}

declare dso_local i32 @PEEK_BYTES(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32 @VC_FOURCC(i32, i32, i32, i32) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_24__*, i8*) #1

declare dso_local %struct.TYPE_25__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_24__*) #1

declare dso_local i64 @mp4_read_box_header(%struct.TYPE_24__*, i32, i32*, i32*) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_24__*) #1

declare dso_local i64 @mp4_read_box_data(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i64 @mp4_read_sample_header(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i64 @SEEK(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @mp4_reader_close(%struct.TYPE_24__*) #1

declare dso_local i64 @STREAM_SEEKABLE(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
