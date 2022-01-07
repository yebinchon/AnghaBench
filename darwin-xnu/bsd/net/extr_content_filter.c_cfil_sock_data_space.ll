; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_data_space.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_data_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32, %struct.socket* }
%struct.socket = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.cfi_buf, %struct.cfi_buf }
%struct.cfi_buf = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@SOF_CONTENT_FILTER = common dso_local global i32 0, align 4
@SB_RECV = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_sock_data_space(%struct.sockbuf* %0) #0 {
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
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @cfil_sock_udp_data_pending(%struct.sockbuf* %14, i32 %15)
  store i32 %16, i32* %2, align 4
  br label %81

17:                                               ; preds = %1
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SOF_CONTENT_FILTER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %73

24:                                               ; preds = %17
  %25 = load %struct.socket*, %struct.socket** %4, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = load %struct.socket*, %struct.socket** %4, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 (...) @current_thread()
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %73

36:                                               ; preds = %29
  %37 = load %struct.socket*, %struct.socket** %4, align 8
  %38 = call i32 @socket_lock_assert_owned(%struct.socket* %37)
  %39 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %40 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SB_RECV, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.socket*, %struct.socket** %4, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store %struct.cfi_buf* %49, %struct.cfi_buf** %6, align 8
  br label %55

50:                                               ; preds = %36
  %51 = load %struct.socket*, %struct.socket** %4, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store %struct.cfi_buf* %54, %struct.cfi_buf** %6, align 8
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.cfi_buf*, %struct.cfi_buf** %6, align 8
  %57 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.cfi_buf*, %struct.cfi_buf** %6, align 8
  %60 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  store i64 %62, i64* %5, align 8
  %63 = load %struct.cfi_buf*, %struct.cfi_buf** %6, align 8
  %64 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load %struct.cfi_buf*, %struct.cfi_buf** %6, align 8
  %70 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %68, %55
  br label %73

73:                                               ; preds = %72, %29, %24, %17
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @INT32_MAX, align 8
  %76 = icmp slt i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @VERIFY(i32 %77)
  %79 = load i64, i64* %5, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %73, %13
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @IS_UDP(%struct.socket*) #1

declare dso_local i32 @cfil_sock_udp_data_pending(%struct.sockbuf*, i32) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
