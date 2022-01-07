; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_copyout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.knote* }

@IOT_PORT = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_PORT_SEND_ONCE = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND_RECEIVE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@ITS_SIZE_NONE = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_NONE = common dso_local global i64 0, align 8
@IO_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_CAPABILITY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_object_copyout(i32 %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.knote*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = call %struct.TYPE_8__* (...) @current_thread()
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.knote*, %struct.knote** %17, align 8
  store %struct.knote* %18, %struct.knote** %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @IO_VALID(i64 %19)
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @io_otype(i64 %22)
  %24 = load i64, i64* @IOT_PORT, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.knote*, %struct.knote** %12, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @ITH_KNOTE_VALID(%struct.knote* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %5
  %33 = load %struct.knote*, %struct.knote** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @filt_machport_turnstile_prepare_lazily(%struct.knote* %33, i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %32, %5
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @is_write_lock(i32 %39)
  br label %41

41:                                               ; preds = %82, %38
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @is_active(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @is_write_unlock(i32 %46)
  %48 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %48, i64* %6, align 8
  br label %136

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @MACH_MSG_TYPE_PORT_SEND_ONCE, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @ipc_right_reverse(i32 %54, i64 %55, i32* %13, %struct.TYPE_7__** %14)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MACH_PORT_TYPE_SEND_RECEIVE, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @assert(i32 %63)
  br label %118

65:                                               ; preds = %53, %49
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @CAST_MACH_PORT_TO_NAME(i64 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @ipc_entry_get(i32 %68, i32* %13, %struct.TYPE_7__** %14)
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* @KERN_SUCCESS, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ITS_SIZE_NONE, align 4
  %76 = call i64 @ipc_entry_grow_table(i32 %74, i32 %75)
  store i64 %76, i64* %15, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* @KERN_SUCCESS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i64, i64* %15, align 8
  store i64 %81, i64* %6, align 8
  br label %136

82:                                               ; preds = %73
  br label %41

83:                                               ; preds = %65
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IE_BITS_TYPE(i32 %86)
  %88 = load i64, i64* @MACH_PORT_TYPE_NONE, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IO_NULL, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @io_lock(i64 %99)
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @io_active(i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %83
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @io_unlock(i64 %105)
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %110 = call i32 @ipc_entry_dealloc(i32 %107, i32 %108, %struct.TYPE_7__* %109)
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @is_write_unlock(i32 %111)
  %113 = load i64, i64* @KERN_INVALID_CAPABILITY, align 8
  store i64 %113, i64* %6, align 8
  br label %136

114:                                              ; preds = %83
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %114, %58
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i64, i64* %8, align 8
  %125 = call i64 @ipc_right_copyout(i32 %119, i32 %120, %struct.TYPE_7__* %121, i32 %122, i32 %123, i64 %124)
  store i64 %125, i64* %15, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @is_write_unlock(i32 %126)
  %128 = load i64, i64* %15, align 8
  %129 = load i64, i64* @KERN_SUCCESS, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %118
  %132 = load i32, i32* %13, align 4
  %133 = load i32*, i32** %11, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %118
  %135 = load i64, i64* %15, align 8
  store i64 %135, i64* %6, align 8
  br label %136

136:                                              ; preds = %134, %104, %80, %45
  %137 = load i64, i64* %6, align 8
  ret i64 %137
}

declare dso_local %struct.TYPE_8__* @current_thread(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IO_VALID(i64) #1

declare dso_local i64 @io_otype(i64) #1

declare dso_local i64 @ITH_KNOTE_VALID(%struct.knote*, i32) #1

declare dso_local i32 @filt_machport_turnstile_prepare_lazily(%struct.knote*, i32, i32) #1

declare dso_local i32 @is_write_lock(i32) #1

declare dso_local i32 @is_active(i32) #1

declare dso_local i32 @is_write_unlock(i32) #1

declare dso_local i64 @ipc_right_reverse(i32, i64, i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @CAST_MACH_PORT_TO_NAME(i64) #1

declare dso_local i64 @ipc_entry_get(i32, i32*, %struct.TYPE_7__**) #1

declare dso_local i64 @ipc_entry_grow_table(i32, i32) #1

declare dso_local i64 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @io_lock(i64) #1

declare dso_local i32 @io_active(i64) #1

declare dso_local i32 @io_unlock(i64) #1

declare dso_local i32 @ipc_entry_dealloc(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i64 @ipc_right_copyout(i32, i32, %struct.TYPE_7__*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
