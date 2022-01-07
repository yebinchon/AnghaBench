; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_copyin_two.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_copyin_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@KERN_INVALID_CAPABILITY = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_MOVE_SEND_ONCE = common dso_local global i64 0, align 8
@KERN_INVALID_RIGHT = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_MAKE_SEND = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_MAKE_SEND_ONCE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@IP_NULL = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_RECEIVE = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_MOVE_SEND = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_COPY_SEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_right_copyin_two(i32 %0, i32 %1, %struct.TYPE_6__* %2, i64 %3, i64 %4, i64* %5, i64* %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  store i32 0, i32* %19, align 4
  %22 = load i64, i64* %13, align 8
  %23 = call i32 @MACH_MSG_TYPE_PORT_ANY_SEND(i64 %22)
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* %14, align 8
  %26 = call i32 @MACH_MSG_TYPE_PORT_ANY_SEND(i64 %25)
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @ipc_right_copyin_check(i32 %28, i32 %29, %struct.TYPE_6__* %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %8
  %35 = load i64, i64* @KERN_INVALID_CAPABILITY, align 8
  store i64 %35, i64* %9, align 8
  br label %199

36:                                               ; preds = %8
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND_ONCE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND_ONCE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %36
  %45 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %45, i64* %9, align 8
  br label %199

46:                                               ; preds = %40
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @MACH_MSG_TYPE_MAKE_SEND, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @MACH_MSG_TYPE_MAKE_SEND_ONCE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* @MACH_MSG_TYPE_MAKE_SEND, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* @MACH_MSG_TYPE_MAKE_SEND_ONCE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %139

62:                                               ; preds = %58, %54, %50, %46
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* @FALSE, align 4
  %68 = load i64*, i64** %15, align 8
  %69 = load i64*, i64** %16, align 8
  %70 = load i64*, i64** %17, align 8
  %71 = call i64 @ipc_right_copyin(i32 %63, i32 %64, %struct.TYPE_6__* %65, i64 %66, i32 %67, i64* %68, i64* %69, i64* %70, i32* %19)
  store i64 %71, i64* %18, align 8
  %72 = load i32, i32* %19, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* @KERN_SUCCESS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %62
  %80 = load i64, i64* %18, align 8
  store i64 %80, i64* %9, align 8
  br label %199

81:                                               ; preds = %62
  %82 = load i64*, i64** %15, align 8
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @IO_VALID(i64 %83)
  %85 = call i32 @assert(i32 %84)
  %86 = load i64*, i64** %16, align 8
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IP_NULL, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i64*, i64** %17, align 8
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IP_NULL, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load i32, i32* @FALSE, align 4
  %103 = load i64*, i64** %16, align 8
  %104 = load i64*, i64** %17, align 8
  %105 = call i64 @ipc_right_copyin(i32 %98, i32 %99, %struct.TYPE_6__* %100, i64 %101, i32 %102, i64* %20, i64* %103, i64* %104, i32* %19)
  store i64 %105, i64* %18, align 8
  %106 = load i32, i32* %19, align 4
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i64, i64* %18, align 8
  %111 = load i64, i64* @KERN_SUCCESS, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i64*, i64** %16, align 8
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @IP_NULL, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load i64*, i64** %17, align 8
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @IP_NULL, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i64, i64* %20, align 8
  %128 = load i64*, i64** %15, align 8
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %127, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %137 = and i32 %135, %136
  %138 = call i32 @assert(i32 %137)
  br label %197

139:                                              ; preds = %58
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %161

143:                                              ; preds = %139
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %143
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %151 = load i64*, i64** %15, align 8
  %152 = load i64*, i64** %16, align 8
  %153 = load i64*, i64** %17, align 8
  %154 = call i64 @ipc_right_copyin_two_move_sends(i32 %148, i32 %149, %struct.TYPE_6__* %150, i64* %151, i64* %152, i64* %153)
  store i64 %154, i64* %18, align 8
  %155 = load i64, i64* %18, align 8
  %156 = load i64, i64* @KERN_SUCCESS, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %147
  %159 = load i64, i64* %18, align 8
  store i64 %159, i64* %9, align 8
  br label %199

160:                                              ; preds = %147
  br label %196

161:                                              ; preds = %143, %139
  %162 = load i64, i64* %13, align 8
  %163 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load i64, i64* %14, align 8
  %167 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165, %161
  %170 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  store i64 %170, i64* %21, align 8
  br label %173

171:                                              ; preds = %165
  %172 = load i64, i64* @MACH_MSG_TYPE_COPY_SEND, align 8
  store i64 %172, i64* %21, align 8
  br label %173

173:                                              ; preds = %171, %169
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %177 = load i64, i64* %21, align 8
  %178 = load i32, i32* @FALSE, align 4
  %179 = load i64*, i64** %15, align 8
  %180 = load i64*, i64** %16, align 8
  %181 = load i64*, i64** %17, align 8
  %182 = call i64 @ipc_right_copyin(i32 %174, i32 %175, %struct.TYPE_6__* %176, i64 %177, i32 %178, i64* %179, i64* %180, i64* %181, i32* %19)
  store i64 %182, i64* %18, align 8
  %183 = load i32, i32* %19, align 4
  %184 = icmp eq i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i64, i64* %18, align 8
  %188 = load i64, i64* @KERN_SUCCESS, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %173
  %191 = load i64, i64* %18, align 8
  store i64 %191, i64* %9, align 8
  br label %199

192:                                              ; preds = %173
  %193 = load i64*, i64** %15, align 8
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @ipc_port_copy_send(i64 %194)
  br label %196

196:                                              ; preds = %192, %160
  br label %197

197:                                              ; preds = %196, %81
  %198 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %198, i64* %9, align 8
  br label %199

199:                                              ; preds = %197, %190, %158, %79, %44, %34
  %200 = load i64, i64* %9, align 8
  ret i64 %200
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MACH_MSG_TYPE_PORT_ANY_SEND(i64) #1

declare dso_local i32 @ipc_right_copyin_check(i32, i32, %struct.TYPE_6__*, i64) #1

declare dso_local i64 @ipc_right_copyin(i32, i32, %struct.TYPE_6__*, i64, i32, i64*, i64*, i64*, i32*) #1

declare dso_local i32 @IO_VALID(i64) #1

declare dso_local i64 @ipc_right_copyin_two_move_sends(i32, i32, %struct.TYPE_6__*, i64*, i64*, i64*) #1

declare dso_local i32 @ipc_port_copy_send(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
