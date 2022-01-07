; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_write_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32 }
%struct.op_t = type { %struct.TYPE_2__, i64, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.cmd_blk_t = type { i32, i64, i32 }

@WM_CMD_WRITE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wiiuse_write_data(%struct.wiimote_t* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiimote_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.op_t*, align 8
  %13 = alloca %struct.cmd_blk_t*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
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
  br label %82

21:                                               ; preds = %16
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %21
  store i32 0, i32* %6, align 4
  br label %82

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
  br label %82

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %13, align 8
  %39 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %13, align 8
  %41 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %40, i32 0, i32 0
  store i32 22, i32* %41, align 8
  %42 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %13, align 8
  %43 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.op_t*
  store %struct.op_t* %45, %struct.op_t** %12, align 8
  %46 = load i32, i32* @WM_CMD_WRITE_DATA, align 4
  %47 = load %struct.op_t*, %struct.op_t** %12, align 8
  %48 = getelementptr inbounds %struct.op_t, %struct.op_t* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.op_t*, %struct.op_t** %12, align 8
  %50 = getelementptr inbounds %struct.op_t, %struct.op_t* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.op_t*, %struct.op_t** %12, align 8
  %52 = getelementptr inbounds %struct.op_t, %struct.op_t* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @BIG_ENDIAN_LONG(i32 %53)
  %55 = load %struct.op_t*, %struct.op_t** %12, align 8
  %56 = getelementptr inbounds %struct.op_t, %struct.op_t* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 15
  %60 = load %struct.op_t*, %struct.op_t** %12, align 8
  %61 = getelementptr inbounds %struct.op_t, %struct.op_t* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.op_t*, %struct.op_t** %12, align 8
  %64 = getelementptr inbounds %struct.op_t, %struct.op_t* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @memcpy(i32 %66, i32* %67, i32 %68)
  %70 = load %struct.op_t*, %struct.op_t** %12, align 8
  %71 = getelementptr inbounds %struct.op_t, %struct.op_t* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 16, %76
  %78 = call i32 @memset(i32 %75, i32 0, i32 %77)
  %79 = load %struct.wiimote_t*, %struct.wiimote_t** %7, align 8
  %80 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %13, align 8
  %81 = call i32 @__wiiuse_push_command(%struct.wiimote_t* %79, %struct.cmd_blk_t* %80)
  store i32 1, i32* %6, align 4
  br label %82

82:                                               ; preds = %36, %35, %27, %20
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @WIIMOTE_IS_CONNECTED(%struct.wiimote_t*) #1

declare dso_local i64 @__lwp_queue_get(i32*) #1

declare dso_local i32 @BIG_ENDIAN_LONG(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @__wiiuse_push_command(%struct.wiimote_t*, %struct.cmd_blk_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
