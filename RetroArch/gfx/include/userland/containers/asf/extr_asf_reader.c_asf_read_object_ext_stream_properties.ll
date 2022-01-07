; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_object_ext_stream_properties.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_object_ext_stream_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Start Time\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"End Time\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Data Bitrate\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Buffer Size\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Initial Buffer Fullness\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Alternate Data Bitrate\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Alternate Buffer Size\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Alternate Initial Buffer Fullness\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Maximum Object Size\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Stream Number\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Stream Language ID Index\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Average Time Per Frame\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Stream Name Count\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Payload Extension System Count\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"Language ID Index\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Stream Name Length\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Extension System ID\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Extension Data Size\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Extension System Info Length\00", align 1
@ASF_OBJECT_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @asf_read_object_ext_stream_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_object_ext_stream_properties(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ASF_SKIP_U64(i32* %14, i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ASF_SKIP_U64(i32* %17, i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ASF_SKIP_U32(i32* %20, i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ASF_SKIP_U32(i32* %23, i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ASF_SKIP_U32(i32* %26, i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ASF_SKIP_U32(i32* %29, i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ASF_SKIP_U32(i32* %32, i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ASF_SKIP_U32(i32* %35, i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ASF_SKIP_U32(i32* %38, i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ASF_SKIP_U32(i32* %41, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ASF_READ_U16(i32* %44, i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ASF_SKIP_U16(i32* %47, i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ASF_SKIP_U64(i32* %50, i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ASF_READ_U16(i32* %53, i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  store i32 %55, i32* %9, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ASF_READ_U16(i32* %56, i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  store i32 %58, i32* %10, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @CHECK_POINT(i32* %59, i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32* @asf_reader_find_track(i32* %62, i32 %63, i32 1)
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %2
  %68 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 4
  store i32 %68, i32* %3, align 4
  br label %148

69:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %96, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %78, i32* %3, align 4
  br label %148

79:                                               ; preds = %74
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @ASF_SKIP_U16(i32* %80, i32 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @ASF_READ_U16(i32* %83, i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %90, i32* %3, align 4
  br label %148

91:                                               ; preds = %79
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @ASF_SKIP_BYTES(i32* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %70

99:                                               ; preds = %70
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @CHECK_POINT(i32* %100, i32 %101)
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %132, %99
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %135

107:                                              ; preds = %103
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 22
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %111, i32* %3, align 4
  br label %148

112:                                              ; preds = %107
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @ASF_SKIP_GUID(i32* %113, i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @ASF_SKIP_U16(i32* %116, i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @ASF_READ_U32(i32* %119, i32 %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %112
  %126 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %126, i32* %3, align 4
  br label %148

127:                                              ; preds = %112
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @ASF_SKIP_BYTES(i32* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %8, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %103

135:                                              ; preds = %103
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @CHECK_POINT(i32* %136, i32 %137)
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @ASF_OBJECT_HEADER_SIZE, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i32*, i32** %4, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @asf_read_object(i32* %143, i32 %144)
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %142, %135
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %125, %110, %89, %77, %67
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @ASF_SKIP_U64(i32*, i32, i8*) #1

declare dso_local i32 @ASF_SKIP_U32(i32*, i32, i8*) #1

declare dso_local i32 @ASF_READ_U16(i32*, i32, i8*) #1

declare dso_local i32 @ASF_SKIP_U16(i32*, i32, i8*) #1

declare dso_local i32 @CHECK_POINT(i32*, i32) #1

declare dso_local i32* @asf_reader_find_track(i32*, i32, i32) #1

declare dso_local i32 @ASF_SKIP_BYTES(i32*, i32, i32) #1

declare dso_local i32 @ASF_SKIP_GUID(i32*, i32, i8*) #1

declare dso_local i32 @ASF_READ_U32(i32*, i32, i8*) #1

declare dso_local i32 @asf_read_object(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
