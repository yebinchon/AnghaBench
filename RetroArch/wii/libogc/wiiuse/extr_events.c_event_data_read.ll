; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_event_data_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_event_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32, i32, %struct.cmd_blk_t* }
%struct.cmd_blk_t = type { i64, i64*, i32, i32 (%struct.wiimote_t*, i64, i64)*, %struct.cmd_blk_t* }
%struct.op_t = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@CMD_SENT = common dso_local global i64 0, align 8
@WM_CMD_READ_DATA = common dso_local global i64 0, align 8
@CMD_DONE = common dso_local global i8* null, align 8
@WIIUSE_READ_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_t*, i32*)* @event_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_data_read(%struct.wiimote_t* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_t*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.op_t*, align 8
  %9 = alloca %struct.cmd_blk_t*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %11 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %10, i32 0, i32 2
  %12 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %11, align 8
  store %struct.cmd_blk_t* %12, %struct.cmd_blk_t** %9, align 8
  %13 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @wiiuse_pressed_buttons(%struct.wiimote_t* %13, i32* %14)
  %16 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %17 = icmp ne %struct.cmd_blk_t* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %179

19:                                               ; preds = %2
  %20 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %21 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CMD_SENT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %27 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @WM_CMD_READ_DATA, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %25, %19
  br label %179

34:                                               ; preds = %25
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  store i32 %38, i32* %5, align 4
  %39 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %40 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = bitcast i64* %41 to %struct.op_t*
  store %struct.op_t* %42, %struct.op_t** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %84

45:                                               ; preds = %34
  %46 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %47 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %46, i32 0, i32 4
  %48 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %47, align 8
  %49 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %50 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %49, i32 0, i32 2
  store %struct.cmd_blk_t* %48, %struct.cmd_blk_t** %50, align 8
  %51 = load i8*, i8** @CMD_DONE, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %54 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %56 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %55, i32 0, i32 3
  %57 = load i32 (%struct.wiimote_t*, i64, i64)*, i32 (%struct.wiimote_t*, i64, i64)** %56, align 8
  %58 = icmp ne i32 (%struct.wiimote_t*, i64, i64)* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %45
  %60 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %61 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %60, i32 0, i32 3
  %62 = load i32 (%struct.wiimote_t*, i64, i64)*, i32 (%struct.wiimote_t*, i64, i64)** %61, align 8
  %63 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %64 = load %struct.op_t*, %struct.op_t** %8, align 8
  %65 = getelementptr inbounds %struct.op_t, %struct.op_t* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.op_t*, %struct.op_t** %8, align 8
  %68 = getelementptr inbounds %struct.op_t, %struct.op_t* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.op_t*, %struct.op_t** %8, align 8
  %72 = getelementptr inbounds %struct.op_t, %struct.op_t* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = call i32 %62(%struct.wiimote_t* %63, i64 %66, i64 %74)
  br label %76

76:                                               ; preds = %59, %45
  %77 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %78 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %77, i32 0, i32 0
  %79 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %80 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %79, i32 0, i32 2
  %81 = call i32 @__lwp_queue_append(i32* %78, i32* %80)
  %82 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %83 = call i32 @wiiuse_send_next_command(%struct.wiimote_t* %82)
  br label %179

84:                                               ; preds = %34
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 240
  %89 = ashr i32 %88, 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = bitcast i32* %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @BIG_ENDIAN_SHORT(i64 %94)
  store i64 %95, i64* %7, align 8
  %96 = load %struct.op_t*, %struct.op_t** %8, align 8
  %97 = getelementptr inbounds %struct.op_t, %struct.op_t* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 65535
  %101 = load %struct.op_t*, %struct.op_t** %8, align 8
  %102 = getelementptr inbounds %struct.op_t, %struct.op_t* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.op_t*, %struct.op_t** %8, align 8
  %107 = getelementptr inbounds %struct.op_t, %struct.op_t* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  %110 = load %struct.op_t*, %struct.op_t** %8, align 8
  %111 = getelementptr inbounds %struct.op_t, %struct.op_t* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.op_t*, %struct.op_t** %8, align 8
  %114 = getelementptr inbounds %struct.op_t, %struct.op_t* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %112, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %84
  %119 = load %struct.op_t*, %struct.op_t** %8, align 8
  %120 = getelementptr inbounds %struct.op_t, %struct.op_t* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %118, %84
  %122 = load %struct.op_t*, %struct.op_t** %8, align 8
  %123 = getelementptr inbounds %struct.op_t, %struct.op_t* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %7, align 8
  %126 = add nsw i64 %124, %125
  %127 = load %struct.op_t*, %struct.op_t** %8, align 8
  %128 = getelementptr inbounds %struct.op_t, %struct.op_t* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = sub nsw i64 %126, %131
  %133 = load i32*, i32** %4, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 5
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @memcpy(i64 %132, i32* %134, i32 %135)
  %137 = load %struct.op_t*, %struct.op_t** %8, align 8
  %138 = getelementptr inbounds %struct.op_t, %struct.op_t* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %179, label %141

141:                                              ; preds = %121
  %142 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %143 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %142, i32 0, i32 4
  %144 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %143, align 8
  %145 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %146 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %145, i32 0, i32 2
  store %struct.cmd_blk_t* %144, %struct.cmd_blk_t** %146, align 8
  %147 = load i32, i32* @WIIUSE_READ_DATA, align 4
  %148 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %149 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i8*, i8** @CMD_DONE, align 8
  %151 = ptrtoint i8* %150 to i64
  %152 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %153 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %155 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %154, i32 0, i32 3
  %156 = load i32 (%struct.wiimote_t*, i64, i64)*, i32 (%struct.wiimote_t*, i64, i64)** %155, align 8
  %157 = icmp ne i32 (%struct.wiimote_t*, i64, i64)* %156, null
  br i1 %157, label %158, label %171

158:                                              ; preds = %141
  %159 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %160 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %159, i32 0, i32 3
  %161 = load i32 (%struct.wiimote_t*, i64, i64)*, i32 (%struct.wiimote_t*, i64, i64)** %160, align 8
  %162 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %163 = load %struct.op_t*, %struct.op_t** %8, align 8
  %164 = getelementptr inbounds %struct.op_t, %struct.op_t* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.op_t*, %struct.op_t** %8, align 8
  %167 = getelementptr inbounds %struct.op_t, %struct.op_t* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 %161(%struct.wiimote_t* %162, i64 %165, i64 %169)
  br label %171

171:                                              ; preds = %158, %141
  %172 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %173 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %172, i32 0, i32 0
  %174 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  %175 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %174, i32 0, i32 2
  %176 = call i32 @__lwp_queue_append(i32* %173, i32* %175)
  %177 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %178 = call i32 @wiiuse_send_next_command(%struct.wiimote_t* %177)
  br label %179

179:                                              ; preds = %18, %33, %76, %171, %121
  ret void
}

declare dso_local i32 @wiiuse_pressed_buttons(%struct.wiimote_t*, i32*) #1

declare dso_local i32 @__lwp_queue_append(i32*, i32*) #1

declare dso_local i32 @wiiuse_send_next_command(%struct.wiimote_t*) #1

declare dso_local i64 @BIG_ENDIAN_SHORT(i64) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
