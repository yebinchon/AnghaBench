; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_copyin_two_move_sends.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_copyin_two_move_sends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32 }
%struct.TYPE_17__ = type { i32, i64 }

@IP_NULL = common dso_local global %struct.TYPE_16__* null, align 8
@MACH_PORT_TYPE_SEND = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_RECEIVE = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND_RECEIVE = common dso_local global i32 0, align 4
@IO_NULL = common dso_local global i64 0, align 8
@IE_BITS_UREFS_MASK = common dso_local global i32 0, align 4
@MACH_PORT_UREFS_MAX = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_INVALID_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.TYPE_17__*, i64*, %struct.TYPE_16__**, %struct.TYPE_16__**)* @ipc_right_copyin_two_move_sends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_right_copyin_two_move_sends(i64 %0, i32 %1, %struct.TYPE_17__* %2, i64* %3, %struct.TYPE_16__** %4, %struct.TYPE_16__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_16__**, align 8
  %13 = alloca %struct.TYPE_16__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %10, align 8
  store i64* %3, i64** %11, align 8
  store %struct.TYPE_16__** %4, %struct.TYPE_16__*** %12, align 8
  store %struct.TYPE_16__** %5, %struct.TYPE_16__*** %13, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %17, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %20 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %20, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @is_active(i64 %21)
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  br label %169

32:                                               ; preds = %6
  %33 = load i32, i32* %14, align 4
  %34 = call i64 @IE_BITS_UREFS(i32 %33)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %169

39:                                               ; preds = %32
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %16, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %46 = icmp ne %struct.TYPE_16__* %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = call i64 @ipc_right_check(i64 %49, %struct.TYPE_16__* %50, i32 %51, %struct.TYPE_17__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %39
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %57 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %57, align 8
  br label %169

58:                                               ; preds = %39
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %15, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %137

67:                                               ; preds = %58
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %67
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @IE_BITS_TYPE(i32 %87)
  %89 = load i32, i32* @MACH_PORT_TYPE_SEND_RECEIVE, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %98 = call i32 @ip_reference(%struct.TYPE_16__* %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %100 = call i32 @ip_reference(%struct.TYPE_16__* %99)
  br label %128

101:                                              ; preds = %67
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @IE_BITS_TYPE(i32 %102)
  %104 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %112 = call %struct.TYPE_16__* @ipc_right_request_cancel_macro(i64 %108, %struct.TYPE_16__* %109, i32 %110, %struct.TYPE_17__* %111)
  store %struct.TYPE_16__* %112, %struct.TYPE_16__** %17, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %114, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %118 = call i32 @ip_reference(%struct.TYPE_16__* %117)
  %119 = load i64, i64* %8, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %121 = ptrtoint %struct.TYPE_16__* %120 to i64
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %124 = call i32 @ipc_hash_delete(i64 %119, i64 %121, i32 %122, %struct.TYPE_17__* %123)
  %125 = load i64, i64* @IO_NULL, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %101, %72
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @IE_BITS_UREFS_MASK, align 4
  %131 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %132 = or i32 %130, %131
  %133 = xor i32 %132, -1
  %134 = and i32 %129, %133
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %156

137:                                              ; preds = %58
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 2
  store i64 %141, i64* %139, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %143 = call i32 @ip_reference(%struct.TYPE_16__* %142)
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %145 = call i32 @ip_reference(%struct.TYPE_16__* %144)
  %146 = load i32, i32* %14, align 4
  %147 = call i64 @IE_BITS_UREFS(i32 %146)
  %148 = load i64, i64* @MACH_PORT_UREFS_MAX, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %137
  %151 = load i32, i32* %14, align 4
  %152 = sub nsw i32 %151, 2
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %137
  br label %156

156:                                              ; preds = %155, %128
  %157 = load i64, i64* %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %160 = call i32 @ipc_entry_modified(i64 %157, i32 %158, %struct.TYPE_17__* %159)
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %162 = call i32 @ip_unlock(%struct.TYPE_16__* %161)
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %164 = ptrtoint %struct.TYPE_16__* %163 to i64
  %165 = load i64*, i64** %11, align 8
  store i64 %164, i64* %165, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %167 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  store %struct.TYPE_16__* %166, %struct.TYPE_16__** %167, align 8
  %168 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %168, i32* %7, align 4
  br label %171

169:                                              ; preds = %55, %38, %31
  %170 = load i32, i32* @KERN_INVALID_RIGHT, align 4
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %169, %156
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_active(i64) #1

declare dso_local i64 @IE_BITS_UREFS(i32) #1

declare dso_local i64 @ipc_right_check(i64, %struct.TYPE_16__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @ip_reference(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @ipc_right_request_cancel_macro(i64, %struct.TYPE_16__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ipc_hash_delete(i64, i64, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ipc_entry_modified(i64, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
