; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_get_from_kernel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_get_from_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_30__* }

@MAX_TRAILER_SIZE = common dso_local global i32 0, align 4
@MACH_SEND_NO_BUFFER = common dso_local global i32 0, align 4
@MACH_SEND_TOO_LARGE = common dso_local global i32 0, align 4
@IKM_NULL = common dso_local global %struct.TYPE_30__* null, align 8
@KERNEL_SECURITY_TOKEN = common dso_local global i32 0, align 4
@KERNEL_AUDIT_TOKEN = common dso_local global i32 0, align 4
@MACH_MSG_TRAILER_FORMAT_0 = common dso_local global i32 0, align 4
@MACH_MSG_TRAILER_MINIMUM_SIZE = common dso_local global i32 0, align 4
@MACH_MSG_SUCCESS = common dso_local global i32 0, align 4
@DESC_SIZE_ADJUSTMENT = common dso_local global i32 0, align 4
@MACH_MSGH_BITS_COMPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_kmsg_get_from_kernel(%struct.TYPE_27__* %0, i32 %1, %struct.TYPE_30__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__**, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_30__** %2, %struct.TYPE_30__*** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp uge i64 %14, 16
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 3
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %26, %struct.TYPE_29__** %11, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MAX_TRAILER_SIZE, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %31 = call i64 @IP_VALID(%struct.TYPE_29__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %82

33:                                               ; preds = %3
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %35 = call i32 @IP_PREALLOC(%struct.TYPE_29__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %82

37:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %39 = call i32 @ip_lock(%struct.TYPE_29__* %38)
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %41 = call i32 @ip_active(%struct.TYPE_29__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %45 = call i32 @ip_unlock(%struct.TYPE_29__* %44)
  %46 = load i32, i32* @MACH_SEND_NO_BUFFER, align 4
  store i32 %46, i32* %4, align 4
  br label %133

47:                                               ; preds = %37
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %49 = call i32 @IP_PREALLOC(%struct.TYPE_29__* %48)
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %52, align 8
  store %struct.TYPE_30__* %53, %struct.TYPE_30__** %8, align 8
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %55 = call i64 @ikm_prealloc_inuse(%struct.TYPE_30__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %59 = call i32 @ip_unlock(%struct.TYPE_29__* %58)
  %60 = load i32, i32* @MACH_SEND_NO_BUFFER, align 4
  store i32 %60, i32* %4, align 4
  br label %133

61:                                               ; preds = %47
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 %65, %66
  %68 = icmp sgt i32 %62, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %71 = call i32 @ip_unlock(%struct.TYPE_29__* %70)
  %72 = load i32, i32* @MACH_SEND_TOO_LARGE, align 4
  store i32 %72, i32* %4, align 4
  br label %133

73:                                               ; preds = %61
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %76 = call i32 @ikm_prealloc_set_inuse(%struct.TYPE_30__* %74, %struct.TYPE_29__* %75)
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @ikm_set_header(%struct.TYPE_30__* %77, i32 %78)
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %81 = call i32 @ip_unlock(%struct.TYPE_29__* %80)
  br label %91

82:                                               ; preds = %33, %3
  %83 = load i32, i32* %9, align 4
  %84 = call %struct.TYPE_30__* @ipc_kmsg_alloc(i32 %83)
  store %struct.TYPE_30__* %84, %struct.TYPE_30__** %8, align 8
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** @IKM_NULL, align 8
  %87 = icmp eq %struct.TYPE_30__* %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @MACH_SEND_NO_BUFFER, align 4
  store i32 %89, i32* %4, align 4
  br label %133

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %93, align 8
  %95 = bitcast %struct.TYPE_24__* %94 to i8*
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %97 = bitcast %struct.TYPE_27__* %96 to i8*
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @memcpy(i8* %95, i8* %97, i32 %98)
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %101 = call i32 @ikm_qos_init(%struct.TYPE_30__* %100)
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 4
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %108, align 8
  %110 = ptrtoint %struct.TYPE_24__* %109 to i32
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %114, %struct.TYPE_26__** %10, align 8
  %115 = load i32, i32* @KERNEL_SECURITY_TOKEN, align 4
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @KERNEL_AUDIT_TOKEN, align 4
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @MACH_MSG_TRAILER_FORMAT_0, align 4
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @MACH_MSG_TRAILER_MINIMUM_SIZE, align 4
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %131 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %7, align 8
  store %struct.TYPE_30__* %130, %struct.TYPE_30__** %131, align 8
  %132 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %91, %88, %69, %57, %43
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IP_VALID(%struct.TYPE_29__*) #1

declare dso_local i32 @IP_PREALLOC(%struct.TYPE_29__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_29__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_29__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_29__*) #1

declare dso_local i64 @ikm_prealloc_inuse(%struct.TYPE_30__*) #1

declare dso_local i32 @ikm_prealloc_set_inuse(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ikm_set_header(%struct.TYPE_30__*, i32) #1

declare dso_local %struct.TYPE_30__* @ipc_kmsg_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ikm_qos_init(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
