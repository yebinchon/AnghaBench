; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_writer.c_asf_write_object.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_writer.c_asf_write_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64 (%struct.TYPE_19__*)*, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@asf_object_list = common dso_local global %struct.TYPE_17__* null, align 8
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i64 0, align 8
@ASF_OBJECT_TYPE_HEADER_EXT_INTERNAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Header Extension Data Size\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Object ID\00", align 1
@VC_CONTAINER_ERROR_EOS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Object Name: %s\00", align 1
@ASF_OBJECT_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"Object Size\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"object %s appears to be corrupted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i64)* @asf_write_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @asf_write_object(%struct.TYPE_19__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %6, align 8
  %15 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %15, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %36, %2
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** @asf_object_list, align 8
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** @asf_object_list, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %24, %16
  %34 = phi i1 [ false, %16 ], [ %32, %24 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %16

39:                                               ; preds = %33
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** @asf_object_list, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = call i32 @vc_container_assert(i32 0)
  %49 = load i64, i64* @VC_CONTAINER_ERROR_CORRUPTED, align 8
  store i64 %49, i64* %3, align 8
  br label %145

50:                                               ; preds = %39
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = call i32 @vc_container_writer_extraio_enable(%struct.TYPE_19__* %51, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** @asf_object_list, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %61, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = call i64 %62(%struct.TYPE_19__* %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = call i64 @STREAM_POSITION(%struct.TYPE_19__* %65)
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %56, %50
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = call i32 @vc_container_writer_extraio_disable(%struct.TYPE_19__* %68, i32* %70)
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @ASF_OBJECT_TYPE_HEADER_EXT_INTERNAL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %67
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @WRITE_U32(%struct.TYPE_19__* %76, i64 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** @asf_object_list, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %83, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %86 = call i64 %84(%struct.TYPE_19__* %85)
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  store i64 %87, i64* %3, align 8
  br label %145

88:                                               ; preds = %67
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** @asf_object_list, align 8
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @WRITE_GUID(%struct.TYPE_19__* %89, i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %97 = sext i32 %96 to i64
  %98 = icmp ne i64 %97, 4
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i64, i64* @VC_CONTAINER_ERROR_EOS, align 8
  store i64 %100, i64* %3, align 8
  br label %145

101:                                              ; preds = %88
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** @asf_object_list, align 8
  %104 = load i32, i32* %9, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @LOG_FORMAT(%struct.TYPE_19__* %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* @ASF_OBJECT_HEADER_SIZE, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @WRITE_U64(%struct.TYPE_19__* %110, i64 %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** @asf_object_list, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %123, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %126 = call i64 %124(%struct.TYPE_19__* %125)
  store i64 %126, i64* %7, align 8
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %128, align 4
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %101
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** @asf_object_list, align 8
  %137 = load i32, i32* %9, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @LOG_DEBUG(%struct.TYPE_19__* %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %134, %101
  %144 = load i64, i64* %7, align 8
  store i64 %144, i64* %3, align 8
  br label %145

145:                                              ; preds = %143, %99, %75, %47
  %146 = load i64, i64* %3, align 8
  ret i64 %146
}

declare dso_local i32 @vc_container_assert(i32) #1

declare dso_local i32 @vc_container_writer_extraio_enable(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_19__*) #1

declare dso_local i32 @vc_container_writer_extraio_disable(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_19__*, i64, i8*) #1

declare dso_local i32 @WRITE_GUID(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @LOG_FORMAT(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @WRITE_U64(%struct.TYPE_19__*, i64, i8*) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_19__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
