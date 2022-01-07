; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_terminate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@IE_REQ_NONE = common dso_local global i32 0, align 4
@IO_NULL = common dso_local global i32 0, align 4
@IPS_NULL = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"ipc_right_terminate: strange type - 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_right_terminate(i32 %0, i32 %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @IE_BITS_TYPE(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @is_active(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %189 [
    i32 133, label %26
    i32 132, label %41
    i32 130, label %64
    i32 131, label %64
    i32 128, label %64
    i32 129, label %64
  ]

26:                                               ; preds = %3
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IE_REQ_NONE, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IO_NULL, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  br label %192

41:                                               ; preds = %3
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IE_REQ_NONE, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @IPS_NULL, align 4
  %54 = icmp ne i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @ips_lock(i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ips_active(i32 %59)
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @ipc_pset_destroy(i32 %62)
  br label %192

64:                                               ; preds = %3, %3, %3, %3
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %10, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %12, align 8
  store i32 0, i32* %13, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %73 = icmp ne %struct.TYPE_16__* %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %77 = call i32 @ip_lock(%struct.TYPE_16__* %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %79 = call i32 @ip_active(%struct.TYPE_16__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %64
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %83 = call i32 @ip_unlock(%struct.TYPE_16__* %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %85 = call i32 @ip_release(%struct.TYPE_16__* %84)
  br label %192

86:                                               ; preds = %64
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = call %struct.TYPE_16__* @ipc_right_request_cancel_macro(i32 %87, %struct.TYPE_16__* %88, i32 %89, %struct.TYPE_17__* %90)
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %11, align 8
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, 130
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %123

95:                                               ; preds = %86
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %95
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  store %struct.TYPE_16__* %110, %struct.TYPE_16__** %12, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %113 = icmp ne %struct.TYPE_16__* %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 4
  store %struct.TYPE_16__* %115, %struct.TYPE_16__** %117, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %114, %107
  br label %122

122:                                              ; preds = %121, %95
  br label %123

123:                                              ; preds = %122, %86
  %124 = load i32, i32* %8, align 4
  %125 = and i32 %124, 131
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %123
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %143 = call i32 @ipc_port_destroy(%struct.TYPE_16__* %142)
  br label %172

144:                                              ; preds = %123
  %145 = load i32, i32* %8, align 4
  %146 = and i32 %145, 129
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %144
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp sgt i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %156 = call i32 @ip_unlock(%struct.TYPE_16__* %155)
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %158 = call i32 @ipc_notify_send_once(%struct.TYPE_16__* %157)
  br label %171

159:                                              ; preds = %144
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %4, align 4
  %164 = icmp ne i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %168 = call i32 @ip_unlock(%struct.TYPE_16__* %167)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %170 = call i32 @ip_release(%struct.TYPE_16__* %169)
  br label %171

171:                                              ; preds = %159, %148
  br label %172

172:                                              ; preds = %171, %127
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %175 = icmp ne %struct.TYPE_16__* %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @ipc_notify_no_senders(%struct.TYPE_16__* %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %172
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %183 = icmp ne %struct.TYPE_16__* %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %186 = load i32, i32* %5, align 4
  %187 = call i32 @ipc_notify_port_deleted(%struct.TYPE_16__* %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %180
  br label %192

189:                                              ; preds = %3
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %189, %188, %81, %41, %26
  ret void
}

declare dso_local i32 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_active(i32) #1

declare dso_local i32 @ips_lock(i32) #1

declare dso_local i32 @ips_active(i32) #1

declare dso_local i32 @ipc_pset_destroy(i32) #1

declare dso_local i32 @ip_lock(%struct.TYPE_16__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_16__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @ip_release(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @ipc_right_request_cancel_macro(i32, %struct.TYPE_16__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ipc_port_destroy(%struct.TYPE_16__*) #1

declare dso_local i32 @ipc_notify_send_once(%struct.TYPE_16__*) #1

declare dso_local i32 @ipc_notify_no_senders(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ipc_notify_port_deleted(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
