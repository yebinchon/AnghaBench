; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_copyin_undo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_copyin_undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@MACH_MSG_TYPE_MOVE_SEND = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_COPY_SEND = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_MOVE_SEND_ONCE = common dso_local global i64 0, align 8
@IP_NULL = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_NONE = common dso_local global i32 0, align 4
@IO_DEAD = common dso_local global i64 0, align 8
@IE_BITS_RIGHT_MASK = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_DEAD_NAME = common dso_local global i32 0, align 4
@MACH_PORT_UREFS_MAX = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_right_copyin_undo(i32 %0, i32 %1, %struct.TYPE_5__* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @is_active(i32 %17)
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %6
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @MACH_MSG_TYPE_COPY_SEND, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND_ONCE, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %27, %23, %6
  %32 = phi i1 [ true, %23 ], [ true, %6 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @IP_NULL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %31
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND_ONCE, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ true, %38 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @IE_BITS_TYPE(i32 %50)
  %52 = load i32, i32* @MACH_PORT_TYPE_NONE, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @IO_DEAD, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @IE_BITS_RIGHT_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %66 = or i32 %64, %65
  %67 = or i32 %66, 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %196

70:                                               ; preds = %31
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @IE_BITS_TYPE(i32 %71)
  %73 = load i32, i32* @MACH_PORT_TYPE_NONE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %70
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND_ONCE, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i1 [ true, %75 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @IE_BITS_RIGHT_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %92 = or i32 %90, %91
  %93 = or i32 %92, 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %195

96:                                               ; preds = %70
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @IE_BITS_TYPE(i32 %97)
  %99 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %133

101:                                              ; preds = %96
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* @IO_DEAD, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = call i64 @IE_BITS_UREFS(i32 %107)
  %109 = icmp sgt i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @MACH_MSG_TYPE_COPY_SEND, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %101
  %116 = load i32, i32* %13, align 4
  %117 = call i64 @IE_BITS_UREFS(i32 %116)
  %118 = load i64, i64* @MACH_PORT_UREFS_MAX, align 8
  %119 = icmp sle i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i32, i32* %13, align 4
  %123 = call i64 @IE_BITS_UREFS(i32 %122)
  %124 = load i64, i64* @MACH_PORT_UREFS_MAX, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %115
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %126, %115
  br label %132

132:                                              ; preds = %131, %101
  br label %194

133:                                              ; preds = %96
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* @MACH_MSG_TYPE_COPY_SEND, align 8
  %140 = icmp eq i64 %138, %139
  br label %141

141:                                              ; preds = %137, %133
  %142 = phi i1 [ true, %133 ], [ %140, %137 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @IE_BITS_TYPE(i32 %145)
  %147 = load i32, i32* @MACH_PORT_TYPE_SEND, align 4
  %148 = icmp eq i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* @IO_DEAD, align 8
  %153 = icmp ne i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %11, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load i32, i32* %13, align 4
  %164 = call i64 @IE_BITS_UREFS(i32 %163)
  %165 = icmp sgt i64 %164, 0
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = load i64, i64* %10, align 8
  %169 = load i64, i64* @MACH_MSG_TYPE_COPY_SEND, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %188

171:                                              ; preds = %141
  %172 = load i32, i32* %13, align 4
  %173 = call i64 @IE_BITS_UREFS(i32 %172)
  %174 = load i64, i64* @MACH_PORT_UREFS_MAX, align 8
  %175 = icmp sle i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load i32, i32* %13, align 4
  %179 = call i64 @IE_BITS_UREFS(i32 %178)
  %180 = load i64, i64* @MACH_PORT_UREFS_MAX, align 8
  %181 = icmp slt i64 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %171
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %182, %171
  br label %188

188:                                              ; preds = %187, %141
  %189 = load i32, i32* %7, align 4
  %190 = load i64, i64* %11, align 8
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %193 = call i32 @ipc_right_check(i32 %189, i64 %190, i32 %191, %struct.TYPE_5__* %192)
  br label %194

194:                                              ; preds = %188, %132
  br label %195

195:                                              ; preds = %194, %83
  br label %196

196:                                              ; preds = %195, %46
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %200 = call i32 @ipc_entry_modified(i32 %197, i32 %198, %struct.TYPE_5__* %199)
  %201 = load i64, i64* %11, align 8
  %202 = load i64, i64* @IO_DEAD, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %196
  %205 = load i64, i64* %11, align 8
  %206 = call i32 @io_release(i64 %205)
  br label %207

207:                                              ; preds = %204, %196
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_active(i32) #1

declare dso_local i32 @IE_BITS_TYPE(i32) #1

declare dso_local i64 @IE_BITS_UREFS(i32) #1

declare dso_local i32 @ipc_right_check(i32, i64, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ipc_entry_modified(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @io_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
