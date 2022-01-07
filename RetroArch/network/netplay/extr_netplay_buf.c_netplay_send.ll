; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_buf.c_netplay_send.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_buf.c_netplay_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_buffer = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_send(%struct.socket_buffer* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.socket_buffer* %0, %struct.socket_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %13 = call i64 @buf_remaining(%struct.socket_buffer* %12)
  %14 = load i64, i64* %9, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @netplay_send_flush(%struct.socket_buffer* %17, i32 %18, i32 1)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %95

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %4
  %24 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %25 = call i64 @buf_remaining(%struct.socket_buffer* %24)
  %26 = load i64, i64* %9, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @socket_send_all_blocking(i32 %29, i8* %30, i64 %31, i32 0)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %95

35:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %95

36:                                               ; preds = %23
  %37 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %38 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %36
  %47 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %49, %52
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub i64 %54, %55
  store i64 %56, i64* %11, align 8
  %57 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %61 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %59, %62
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @memcpy(i64 %63, i8* %64, i64 %65)
  %67 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %68 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @memcpy(i64 %69, i8* %72, i64 %73)
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %77 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %94

78:                                               ; preds = %36
  %79 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %80 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %83 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %81, %84
  %86 = load i8*, i8** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @memcpy(i64 %85, i8* %86, i64 %87)
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.socket_buffer*, %struct.socket_buffer** %6, align 8
  %91 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, %89
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %78, %46
  store i32 1, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %35, %34, %21
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i64 @buf_remaining(%struct.socket_buffer*) #1

declare dso_local i32 @netplay_send_flush(%struct.socket_buffer*, i32, i32) #1

declare dso_local i32 @socket_send_all_blocking(i32, i8*, i64, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
