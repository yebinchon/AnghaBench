; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_esp_vfs_dev_uart_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_esp_vfs_dev_uart_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@uart_end_select = common dso_local global i32 0, align 4
@uart_start_select = common dso_local global i32 0, align 4
@uart_access = common dso_local global i32 0, align 4
@uart_fsync = common dso_local global i32 0, align 4
@uart_fcntl = common dso_local global i32 0, align 4
@uart_read = common dso_local global i32 0, align 4
@uart_close = common dso_local global i32 0, align 4
@uart_fstat = common dso_local global i32 0, align 4
@uart_open = common dso_local global i32 0, align 4
@uart_write = common dso_local global i32 0, align 4
@ESP_VFS_FLAG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/uart\00", align 1
@uart_tcdrain = common dso_local global i32 0, align 4
@uart_tcflush = common dso_local global i32 0, align 4
@uart_tcgetattr = common dso_local global i32 0, align 4
@uart_tcsetattr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_vfs_dev_uart_register() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32* null, i32** %2, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32* null, i32** %3, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32* @uart_end_select, i32** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  store i32* @uart_start_select, i32** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  store i32* @uart_access, i32** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  store i32* @uart_fsync, i32** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 8
  store i32* @uart_fcntl, i32** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 9
  store i32* @uart_read, i32** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 10
  store i32* @uart_close, i32** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 11
  store i32* @uart_fstat, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 12
  store i32* @uart_open, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 13
  store i32* @uart_write, i32** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 14
  %17 = load i32, i32* @ESP_VFS_FLAG_DEFAULT, align 4
  store i32 %17, i32* %16, align 8
  %18 = call i32 @esp_vfs_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %1, i32* null)
  %19 = call i32 @ESP_ERROR_CHECK(i32 %18)
  ret void
}

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_vfs_register(i8*, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
