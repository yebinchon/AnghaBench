; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_copyout_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_copyout_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_23__ = type { i32, i64 }
%struct.knote = type { i32 }
%struct.TYPE_19__ = type { %struct.knote* }
%struct.TYPE_22__ = type { i32, i64 }

@IOT_PORT = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_PORT_SEND_ONCE = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_NONE = common dso_local global i64 0, align 8
@KERN_RIGHT_EXISTS = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_SEND_RECEIVE = common dso_local global i32 0, align 4
@KERN_NAME_EXISTS = common dso_local global i64 0, align 8
@IO_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_CAPABILITY = common dso_local global i64 0, align 8
@IIT_NULL = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_PORT_RECEIVE = common dso_local global i32 0, align 4
@TASK_NULL = common dso_local global %struct.TYPE_20__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_object_copyout_name(%struct.TYPE_21__* %0, i64 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.knote*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = call %struct.TYPE_19__* (...) @current_thread()
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.knote*, %struct.knote** %18, align 8
  store %struct.knote* %19, %struct.knote** %16, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @IO_VALID(i64 %20)
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @io_otype(i64 %23)
  %25 = load i64, i64* @IOT_PORT, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.knote*, %struct.knote** %16, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @ITH_KNOTE_VALID(%struct.knote* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %5
  %34 = load %struct.knote*, %struct.knote** %16, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i64, i64* %8, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_22__*
  %38 = call i32 @filt_machport_turnstile_prepare_lazily(%struct.knote* %34, i32 %35, %struct.TYPE_22__* %37)
  br label %39

39:                                               ; preds = %33, %5
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @ipc_entry_alloc_name(%struct.TYPE_21__* %40, i64 %41, %struct.TYPE_23__** %14)
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* @KERN_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* %15, align 8
  store i64 %47, i64* %6, align 8
  br label %145

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @MACH_MSG_TYPE_PORT_SEND_ONCE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %48
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @ipc_right_reverse(%struct.TYPE_21__* %53, i64 %54, i64* %12, %struct.TYPE_23__** %13)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %52
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @io_unlock(i64 %62)
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @IE_BITS_TYPE(i32 %66)
  %68 = load i64, i64* @MACH_PORT_TYPE_NONE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %74 = call i32 @ipc_entry_dealloc(%struct.TYPE_21__* %71, i64 %72, %struct.TYPE_23__* %73)
  br label %75

75:                                               ; preds = %70, %61
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %77 = call i32 @is_write_unlock(%struct.TYPE_21__* %76)
  %78 = load i64, i64* @KERN_RIGHT_EXISTS, align 8
  store i64 %78, i64* %6, align 8
  br label %145

79:                                               ; preds = %57
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %82 = icmp eq %struct.TYPE_23__* %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MACH_PORT_TYPE_SEND_RECEIVE, align 4
  %89 = and i32 %87, %88
  %90 = call i32 @assert(i32 %89)
  br label %134

91:                                               ; preds = %52, %48
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %95 = call i64 @ipc_right_inuse(%struct.TYPE_21__* %92, i64 %93, %struct.TYPE_23__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i64, i64* @KERN_NAME_EXISTS, align 8
  store i64 %98, i64* %6, align 8
  br label %145

99:                                               ; preds = %91
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @IE_BITS_TYPE(i32 %102)
  %104 = load i64, i64* @MACH_PORT_TYPE_NONE, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @IO_NULL, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @io_lock(i64 %115)
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @io_active(i64 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %99
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @io_unlock(i64 %121)
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %126 = call i32 @ipc_entry_dealloc(%struct.TYPE_21__* %123, i64 %124, %struct.TYPE_23__* %125)
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %128 = call i32 @is_write_unlock(%struct.TYPE_21__* %127)
  %129 = load i64, i64* @KERN_INVALID_CAPABILITY, align 8
  store i64 %129, i64* %6, align 8
  br label %145

130:                                              ; preds = %99
  %131 = load i64, i64* %8, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %130, %79
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i64, i64* %8, align 8
  %141 = call i64 @ipc_right_copyout(%struct.TYPE_21__* %135, i64 %136, %struct.TYPE_23__* %137, i32 %138, i32 %139, i64 %140)
  store i64 %141, i64* %15, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %143 = call i32 @is_write_unlock(%struct.TYPE_21__* %142)
  %144 = load i64, i64* %15, align 8
  store i64 %144, i64* %6, align 8
  br label %145

145:                                              ; preds = %134, %120, %97, %75, %46
  %146 = load i64, i64* %6, align 8
  ret i64 %146
}

declare dso_local %struct.TYPE_19__* @current_thread(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IO_VALID(i64) #1

declare dso_local i64 @io_otype(i64) #1

declare dso_local i64 @ITH_KNOTE_VALID(%struct.knote*, i32) #1

declare dso_local i32 @filt_machport_turnstile_prepare_lazily(%struct.knote*, i32, %struct.TYPE_22__*) #1

declare dso_local i64 @ipc_entry_alloc_name(%struct.TYPE_21__*, i64, %struct.TYPE_23__**) #1

declare dso_local i64 @ipc_right_reverse(%struct.TYPE_21__*, i64, i64*, %struct.TYPE_23__**) #1

declare dso_local i32 @io_unlock(i64) #1

declare dso_local i64 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @ipc_entry_dealloc(%struct.TYPE_21__*, i64, %struct.TYPE_23__*) #1

declare dso_local i32 @is_write_unlock(%struct.TYPE_21__*) #1

declare dso_local i64 @ipc_right_inuse(%struct.TYPE_21__*, i64, %struct.TYPE_23__*) #1

declare dso_local i32 @io_lock(i64) #1

declare dso_local i32 @io_active(i64) #1

declare dso_local i64 @ipc_right_copyout(%struct.TYPE_21__*, i64, %struct.TYPE_23__*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
