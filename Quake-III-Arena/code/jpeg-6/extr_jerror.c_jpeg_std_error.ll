; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jerror.c_jpeg_std_error.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jerror.c_jpeg_std_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_error_mgr = type { i32, i64, i64, i32*, i32, i64, i64, i64, i32, i32, i32, i32, i32 }

@error_exit = common dso_local global i32 0, align 4
@emit_message = common dso_local global i32 0, align 4
@output_message = common dso_local global i32 0, align 4
@format_message = common dso_local global i32 0, align 4
@reset_error_mgr = common dso_local global i32 0, align 4
@jpeg_std_message_table = common dso_local global i32 0, align 4
@JMSG_LASTMSGCODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* %0) #0 {
  %2 = alloca %struct.jpeg_error_mgr*, align 8
  store %struct.jpeg_error_mgr* %0, %struct.jpeg_error_mgr** %2, align 8
  %3 = load i32, i32* @error_exit, align 4
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 12
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @emit_message, align 4
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 11
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @output_message, align 4
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 10
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @format_message, align 4
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @reset_error_mgr, align 4
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 8
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @jpeg_std_message_table, align 4
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load i64, i64* @JMSG_LASTMSGCODE, align 8
  %28 = trunc i64 %27 to i32
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  ret %struct.jpeg_error_mgr* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
