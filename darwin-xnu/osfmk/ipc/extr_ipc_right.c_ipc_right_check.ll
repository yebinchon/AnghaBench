; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_RECEIVE = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND_ONCE = common dso_local global i32 0, align 4
@IE_BITS_TYPE_MASK = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_DEAD_NAME = common dso_local global i32 0, align 4
@IE_REQ_NONE = common dso_local global i32 0, align 4
@MACH_PORT_UREFS_MAX = common dso_local global i32 0, align 4
@IO_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_right_check(i32 %0, %struct.TYPE_11__* %1, i32 %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @is_active(i32 %11)
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_11__*
  %19 = icmp eq %struct.TYPE_11__* %14, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = call i32 @ip_lock(%struct.TYPE_11__* %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = call i64 @ip_active(%struct.TYPE_11__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %151

29:                                               ; preds = %4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @IE_BITS_UREFS(i32 %39)
  %41 = icmp sgt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %29
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @IE_BITS_TYPE(i32 %49)
  %51 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @IE_BITS_UREFS(i32 %55)
  %57 = icmp sgt i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  br label %92

70:                                               ; preds = %29
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @IE_BITS_TYPE(i32 %71)
  %73 = load i32, i32* @MACH_PORT_TYPE_SEND_ONCE, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @IE_BITS_UREFS(i32 %77)
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %70, %48
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = call i32 @ip_unlock(%struct.TYPE_11__* %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %102 = ptrtoint %struct.TYPE_11__* %101 to i32
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = call i32 @ipc_hash_delete(i32 %100, i32 %102, i32 %103, %struct.TYPE_12__* %104)
  br label %106

106:                                              ; preds = %99, %92
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @IE_BITS_TYPE_MASK, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  %111 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %10, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @IE_REQ_NONE, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %106
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @ipc_port_request_type(%struct.TYPE_11__* %119, i32 %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %118
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @IE_BITS_UREFS(i32 %127)
  %129 = load i32, i32* @MACH_PORT_UREFS_MAX, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %131, %126
  br label %135

135:                                              ; preds = %134, %118
  %136 = load i32, i32* @IE_REQ_NONE, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %106
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i64, i64* @IO_NULL, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %149 = call i32 @ipc_entry_modified(i32 %146, i32 %147, %struct.TYPE_12__* %148)
  %150 = load i32, i32* @TRUE, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %139, %27
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_active(i32) #1

declare dso_local i32 @ip_lock(%struct.TYPE_11__*) #1

declare dso_local i64 @ip_active(%struct.TYPE_11__*) #1

declare dso_local i32 @IE_BITS_UREFS(i32) #1

declare dso_local i32 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @ipc_hash_delete(i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i64 @ipc_port_request_type(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ipc_entry_modified(i32, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
