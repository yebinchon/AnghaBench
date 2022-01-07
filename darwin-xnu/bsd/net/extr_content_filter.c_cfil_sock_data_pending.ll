; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_data_pending.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_data_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32, %struct.socket* }
%struct.socket = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cfi_buf, %struct.cfi_buf }
%struct.cfi_buf = type { i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@SOF_CONTENT_FILTER = common dso_local global i32 0, align 4
@SB_RECV = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_sock_data_pending(%struct.sockbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cfi_buf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %3, align 8
  %7 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %8 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %7, i32 0, i32 1
  %9 = load %struct.socket*, %struct.socket** %8, align 8
  store %struct.socket* %9, %struct.socket** %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = call i64 @IS_UDP(%struct.socket* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @cfil_sock_udp_data_pending(%struct.sockbuf* %14, i32 %15)
  store i32 %16, i32* %2, align 4
  br label %74

17:                                               ; preds = %1
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SOF_CONTENT_FILTER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %17
  %25 = load %struct.socket*, %struct.socket** %4, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %66

29:                                               ; preds = %24
  %30 = load %struct.socket*, %struct.socket** %4, align 8
  %31 = call i32 @socket_lock_assert_owned(%struct.socket* %30)
  %32 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %33 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SB_RECV, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.socket*, %struct.socket** %4, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store %struct.cfi_buf* %42, %struct.cfi_buf** %6, align 8
  br label %48

43:                                               ; preds = %29
  %44 = load %struct.socket*, %struct.socket** %4, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.cfi_buf* %47, %struct.cfi_buf** %6, align 8
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.cfi_buf*, %struct.cfi_buf** %6, align 8
  %50 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.cfi_buf*, %struct.cfi_buf** %6, align 8
  %53 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.cfi_buf*, %struct.cfi_buf** %6, align 8
  %58 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load %struct.cfi_buf*, %struct.cfi_buf** %6, align 8
  %63 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %61, %48
  br label %66

66:                                               ; preds = %65, %24, %17
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @INT32_MAX, align 8
  %69 = icmp slt i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @VERIFY(i32 %70)
  %72 = load i64, i64* %5, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %66, %13
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @IS_UDP(%struct.socket*) #1

declare dso_local i32 @cfil_sock_udp_data_pending(%struct.sockbuf*, i32) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
