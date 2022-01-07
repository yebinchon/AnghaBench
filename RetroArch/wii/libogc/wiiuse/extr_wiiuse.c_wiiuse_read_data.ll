; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_read_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32 }
%struct.op_t = type { %struct.TYPE_2__, i64, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cmd_blk_t = type { i32, i64, i32 }

@WM_CMD_READ_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wiiuse_read_data(%struct.wiimote_t* %0, i32* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiimote_t*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.op_t*, align 8
  %13 = alloca %struct.cmd_blk_t*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.wiimote_t*, %struct.wiimote_t** %7, align 8
  %15 = icmp ne %struct.wiimote_t* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load %struct.wiimote_t*, %struct.wiimote_t** %7, align 8
  %18 = call i32 @WIIMOTE_IS_CONNECTED(%struct.wiimote_t* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %5
  store i32 0, i32* %6, align 4
  br label %68

21:                                               ; preds = %16
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %21
  store i32 0, i32* %6, align 4
  br label %68

28:                                               ; preds = %24
  %29 = load %struct.wiimote_t*, %struct.wiimote_t** %7, align 8
  %30 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %29, i32 0, i32 0
  %31 = call i64 @__lwp_queue_get(i32* %30)
  %32 = inttoptr i64 %31 to %struct.cmd_blk_t*
  store %struct.cmd_blk_t* %32, %struct.cmd_blk_t** %13, align 8
  %33 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %13, align 8
  %34 = icmp ne %struct.cmd_blk_t* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %68

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %13, align 8
  %39 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %13, align 8
  %41 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %40, i32 0, i32 0
  store i32 7, i32* %41, align 8
  %42 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %13, align 8
  %43 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.op_t*
  store %struct.op_t* %45, %struct.op_t** %12, align 8
  %46 = load i32, i32* @WM_CMD_READ_DATA, align 4
  %47 = load %struct.op_t*, %struct.op_t** %12, align 8
  %48 = getelementptr inbounds %struct.op_t, %struct.op_t* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.op_t*, %struct.op_t** %12, align 8
  %51 = getelementptr inbounds %struct.op_t, %struct.op_t* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.op_t*, %struct.op_t** %12, align 8
  %54 = getelementptr inbounds %struct.op_t, %struct.op_t* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @BIG_ENDIAN_LONG(i32 %55)
  %57 = load %struct.op_t*, %struct.op_t** %12, align 8
  %58 = getelementptr inbounds %struct.op_t, %struct.op_t* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @BIG_ENDIAN_SHORT(i64 %60)
  %62 = load %struct.op_t*, %struct.op_t** %12, align 8
  %63 = getelementptr inbounds %struct.op_t, %struct.op_t* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.wiimote_t*, %struct.wiimote_t** %7, align 8
  %66 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %13, align 8
  %67 = call i32 @__wiiuse_push_command(%struct.wiimote_t* %65, %struct.cmd_blk_t* %66)
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %36, %35, %27, %20
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @WIIMOTE_IS_CONNECTED(%struct.wiimote_t*) #1

declare dso_local i64 @__lwp_queue_get(i32*) #1

declare dso_local i32 @BIG_ENDIAN_LONG(i32) #1

declare dso_local i32 @BIG_ENDIAN_SHORT(i64) #1

declare dso_local i32 @__wiiuse_push_command(%struct.wiimote_t*, %struct.cmd_blk_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
