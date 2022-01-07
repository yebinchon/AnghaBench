; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_allocate_full.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_allocate_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@IKM_NULL = common dso_local global i64 0, align 8
@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_VALUE = common dso_local global i32 0, align 4
@MACH_MSG_SIZE_MAX = common dso_local global i64 0, align 8
@MAX_TRAILER_SIZE = common dso_local global i64 0, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_port_allocate_full(i64 %0, i32 %1, i64 %2, %struct.TYPE_3__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i64, i64* @IKM_NULL, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @IS_NULL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @KERN_INVALID_TASK, align 4
  store i32 %22, i32* %6, align 4
  br label %147

23:                                               ; preds = %5
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @MACH_PORT_NULL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %28, i32* %6, align 4
  br label %147

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MACH_PORT_VALID(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %40, i32* %6, align 4
  br label %147

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MACH_MSG_SIZE_MAX, align 8
  %52 = load i64, i64* @MAX_TRAILER_SIZE, align 8
  %53 = sub nsw i64 %51, %52
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %56, i32* %6, align 4
  br label %147

57:                                               ; preds = %47
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MAX_TRAILER_SIZE, align 8
  %62 = add nsw i64 %60, %61
  store i64 %62, i64* %14, align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 128
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %66, i32* %6, align 4
  br label %147

67:                                               ; preds = %57
  %68 = load i64, i64* %14, align 8
  %69 = call i64 @ipc_kmsg_prealloc(i64 %68)
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @IKM_NULL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %74, i32* %6, align 4
  br label %147

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %42
  %78 = load i32, i32* %8, align 4
  switch i32 %78, label %143 [
    i32 128, label %79
    i32 129, label %117
    i32 130, label %139
  ]

79:                                               ; preds = %77
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i64, i64* %7, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ipc_port_alloc_name(i64 %85, i32 %87, i32* %15)
  store i32 %88, i32* %13, align 4
  br label %93

89:                                               ; preds = %79
  %90 = load i64, i64* %7, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @ipc_port_alloc(i64 %90, i32* %91, i32* %15)
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @KERN_SUCCESS, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* @IKM_NULL, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i64, i64* %12, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @ipc_kmsg_set_prealloc(i64 %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %97
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @ip_unlock(i32 %106)
  br label %116

108:                                              ; preds = %93
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* @IKM_NULL, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @ipc_kmsg_free(i64 %113)
  br label %115

115:                                              ; preds = %112, %108
  br label %116

116:                                              ; preds = %115, %105
  br label %145

117:                                              ; preds = %77
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i64, i64* %7, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ipc_pset_alloc_name(i64 %123, i32 %125, i32* %16)
  store i32 %126, i32* %13, align 4
  br label %131

127:                                              ; preds = %117
  %128 = load i64, i64* %7, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @ipc_pset_alloc(i64 %128, i32* %129, i32* %16)
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %127, %122
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @KERN_SUCCESS, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @ips_unlock(i32 %136)
  br label %138

138:                                              ; preds = %135, %131
  br label %145

139:                                              ; preds = %77
  %140 = load i64, i64* %7, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @ipc_object_alloc_dead(i64 %140, i32* %141)
  store i32 %142, i32* %13, align 4
  br label %145

143:                                              ; preds = %77
  %144 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %143, %139, %138, %116
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %145, %73, %65, %55, %39, %27, %21
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @ipc_kmsg_prealloc(i64) #1

declare dso_local i32 @ipc_port_alloc_name(i64, i32, i32*) #1

declare dso_local i32 @ipc_port_alloc(i64, i32*, i32*) #1

declare dso_local i32 @ipc_kmsg_set_prealloc(i64, i32) #1

declare dso_local i32 @ip_unlock(i32) #1

declare dso_local i32 @ipc_kmsg_free(i64) #1

declare dso_local i32 @ipc_pset_alloc_name(i64, i32, i32*) #1

declare dso_local i32 @ipc_pset_alloc(i64, i32*, i32*) #1

declare dso_local i32 @ips_unlock(i32) #1

declare dso_local i32 @ipc_object_alloc_dead(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
