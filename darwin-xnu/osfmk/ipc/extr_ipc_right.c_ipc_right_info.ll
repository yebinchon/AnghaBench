; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }

@MACH_PORT_TYPE_RECEIVE = common dso_local global i32 0, align 4
@IE_REQ_NONE = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_SEND_RIGHTS = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_DEAD_NAME = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_right_info(i32 %0, i32 %1, %struct.TYPE_4__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %12, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %14, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %5
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @IP_VALID(i64 %29)
  %31 = call i32 @assert(i32 %30)
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* @IE_REQ_NONE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @ip_lock(i64 %36)
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @ip_active(i64 %38)
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @ipc_port_request_type(i64 %41, i32 %42, i64 %43)
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @ip_unlock(i64 %47)
  br label %49

49:                                               ; preds = %35, %28
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @is_write_unlock(i32 %50)
  br label %99

52:                                               ; preds = %5
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @MACH_PORT_TYPE_SEND_RIGHTS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %95

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = load i64, i64* %11, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = call i32 @ipc_right_check(i32 %58, i64 %59, i32 %60, %struct.TYPE_4__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %57
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* @IE_REQ_NONE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @ipc_port_request_type(i64 %69, i32 %70, i64 %71)
  %73 = load i32, i32* %13, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %68, %64
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @ip_unlock(i64 %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @is_write_unlock(i32 %78)
  br label %94

80:                                               ; preds = %57
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @IE_BITS_TYPE(i32 %84)
  %86 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @is_write_unlock(i32 %90)
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @ip_release(i64 %92)
  br label %94

94:                                               ; preds = %80, %75
  br label %98

95:                                               ; preds = %52
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @is_write_unlock(i32 %96)
  br label %98

98:                                               ; preds = %95, %94
  br label %99

99:                                               ; preds = %98, %49
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @IE_BITS_TYPE(i32 %100)
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @IE_BITS_UREFS(i32 %106)
  %108 = load i32*, i32** %10, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %109
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IP_VALID(i64) #1

declare dso_local i32 @ip_lock(i64) #1

declare dso_local i32 @ip_active(i64) #1

declare dso_local i32 @ipc_port_request_type(i64, i32, i64) #1

declare dso_local i32 @ip_unlock(i64) #1

declare dso_local i32 @is_write_unlock(i32) #1

declare dso_local i32 @ipc_right_check(i32, i64, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @ip_release(i64) #1

declare dso_local i32 @IE_BITS_UREFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
