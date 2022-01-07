; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_stream_header_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_stream_header_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__**, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Chunk ID\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"LIST Size\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Chunk Size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, i32, i64)* @avi_write_stream_header_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @avi_write_stream_header_list(%struct.TYPE_23__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %8, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %19, i64 %21
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %9, align 8
  store i64 0, i64* %11, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %25 = call i32 @VC_FOURCC(i8 signext 76, i8 signext 73, i8 signext 83, i8 signext 84)
  %26 = call i32 @WRITE_FOURCC(%struct.TYPE_23__* %24, i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @WRITE_U32(%struct.TYPE_23__* %27, i64 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %31 = call i32 @VC_FOURCC(i8 signext 115, i8 signext 116, i8 signext 114, i8 signext 108)
  %32 = call i32 @WRITE_FOURCC(%struct.TYPE_23__* %30, i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %34 = call i64 @STREAM_STATUS(%struct.TYPE_23__* %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %4, align 8
  br label %153

39:                                               ; preds = %3
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %42 = call i64 @avi_write_stream_header_chunk(%struct.TYPE_23__* %40, %struct.TYPE_22__* %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %4, align 8
  br label %153

48:                                               ; preds = %39
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = call i32 @vc_container_writer_extraio_enable(%struct.TYPE_23__* %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %57 = call i64 @avi_write_stream_format_chunk(%struct.TYPE_23__* %55, %struct.TYPE_22__* %56, i64 0)
  store i64 %57, i64* %10, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %59 = call i64 @STREAM_POSITION(%struct.TYPE_23__* %58)
  %60 = sub nsw i64 %59, 8
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = call i32 @vc_container_writer_extraio_disable(%struct.TYPE_23__* %62, i32* %64)
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @avi_write_stream_format_chunk(%struct.TYPE_23__* %66, %struct.TYPE_22__* %67, i64 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i64, i64* %10, align 8
  store i64 %74, i64* %4, align 8
  br label %153

75:                                               ; preds = %61
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %121

82:                                               ; preds = %75
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %121

89:                                               ; preds = %82
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = call i32 @VC_FOURCC(i8 signext 115, i8 signext 116, i8 signext 114, i8 signext 100)
  %92 = call i32 @WRITE_FOURCC(%struct.TYPE_23__* %90, i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @WRITE_U32(%struct.TYPE_23__* %93, i64 %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @WRITE_BYTES(%struct.TYPE_23__* %100, i64 %105, i64 %110)
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %113 = call i32 @AVI_END_CHUNK(%struct.TYPE_23__* %112)
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %115 = call i64 @STREAM_STATUS(%struct.TYPE_23__* %114)
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %89
  %119 = load i64, i64* %10, align 8
  store i64 %119, i64* %4, align 8
  br label %153

120:                                              ; preds = %89
  br label %121

121:                                              ; preds = %120, %82, %75
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = call i32 @vc_container_writer_extraio_enable(%struct.TYPE_23__* %122, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i64 @avi_write_super_index_chunk(%struct.TYPE_23__* %128, i32 %129, i64 0)
  store i64 %130, i64* %10, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %132 = call i64 @STREAM_POSITION(%struct.TYPE_23__* %131)
  %133 = sub nsw i64 %132, 8
  store i64 %133, i64* %11, align 8
  br label %134

134:                                              ; preds = %127, %121
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  %138 = call i32 @vc_container_writer_extraio_disable(%struct.TYPE_23__* %135, i32* %137)
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i64, i64* %11, align 8
  %142 = call i64 @avi_write_super_index_chunk(%struct.TYPE_23__* %139, i32 %140, i64 %141)
  store i64 %142, i64* %10, align 8
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %134
  %147 = load i64, i64* %10, align 8
  store i64 %147, i64* %4, align 8
  br label %153

148:                                              ; preds = %134
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %150 = call i32 @AVI_END_CHUNK(%struct.TYPE_23__* %149)
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %152 = call i64 @STREAM_STATUS(%struct.TYPE_23__* %151)
  store i64 %152, i64* %4, align 8
  br label %153

153:                                              ; preds = %148, %146, %118, %73, %46, %37
  %154 = load i64, i64* %4, align 8
  ret i64 %154
}

declare dso_local i32 @WRITE_FOURCC(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_23__*, i64, i8*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_23__*) #1

declare dso_local i64 @avi_write_stream_header_chunk(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @vc_container_writer_extraio_enable(%struct.TYPE_23__*, i32*) #1

declare dso_local i64 @avi_write_stream_format_chunk(%struct.TYPE_23__*, %struct.TYPE_22__*, i64) #1

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_23__*) #1

declare dso_local i32 @vc_container_writer_extraio_disable(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_23__*, i64, i64) #1

declare dso_local i32 @AVI_END_CHUNK(%struct.TYPE_23__*) #1

declare dso_local i64 @avi_write_super_index_chunk(%struct.TYPE_23__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
