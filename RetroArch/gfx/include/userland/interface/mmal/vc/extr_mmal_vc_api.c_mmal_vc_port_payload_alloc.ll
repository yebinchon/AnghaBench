; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_port_payload_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_port_payload_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }

@MMAL_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"%s: allocating %d bytes, format %s, is_zero_copy %d\00", align 1
@MMAL_ENCODING_OPAQUE = common dso_local global i32 0, align 4
@MMAL_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: failed to allocate %d bytes opaque memory\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: failed to allocate %d bytes of shared memory\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"mmal_vc_port payload\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"could not allocate %i bytes\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s: allocated at %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i64)* @mmal_vc_port_payload_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mmal_vc_port_payload_alloc(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  %16 = load i64, i64* @MMAL_TRUE, align 8
  store i64 %16, i64* %7, align 8
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mmal_4cc_to_string(i8* %22, i32 5, i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21, i32 %28, i64 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MMAL_ENCODING_OPAQUE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %2
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @mmal_vc_opaque_alloc_desc(i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* @MMAL_FALSE, align 8
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %10, align 8
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %45
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 (i8*, i32, ...) @LOG_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %58, i64 %59)
  store i8* null, i8** %3, align 8
  br label %116

61:                                               ; preds = %45
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %94

66:                                               ; preds = %40, %2
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i64, i64* %5, align 8
  %73 = call i8* @mmal_vc_shm_alloc(i64 %72)
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 (i8*, i32, ...) @LOG_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %79, i64 %80)
  store i8* null, i8** %3, align 8
  br label %116

82:                                               ; preds = %71
  br label %93

83:                                               ; preds = %66
  %84 = load i64, i64* %5, align 8
  %85 = call i8* @vcos_calloc(i32 1, i64 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i8* %85, i8** %9, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load i64, i64* %5, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 (i8*, i32, ...) @LOG_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  store i8* null, i8** %3, align 8
  br label %116

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %82
  br label %94

94:                                               ; preds = %93, %61
  %95 = load i64, i64* %7, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @MMAL_ENCODING_OPAQUE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i8*, i8** %9, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @memset(i8* %106, i32 0, i64 %107)
  br label %109

109:                                              ; preds = %105, %97, %94
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %112, i8* %113)
  %115 = load i8*, i8** %9, align 8
  store i8* %115, i8** %3, align 8
  br label %116

116:                                              ; preds = %109, %88, %76, %55
  %117 = load i8*, i8** %3, align 8
  ret i8* %117
}

declare dso_local i32 @LOG_TRACE(i8*, i32, i64, i32, i64) #1

declare dso_local i32 @mmal_4cc_to_string(i8*, i32, i32) #1

declare dso_local i64 @mmal_vc_opaque_alloc_desc(i32) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, ...) #1

declare dso_local i8* @mmal_vc_shm_alloc(i64) #1

declare dso_local i8* @vcos_calloc(i32, i64, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @LOG_DEBUG(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
