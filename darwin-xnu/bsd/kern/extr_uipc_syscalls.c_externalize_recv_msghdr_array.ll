; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_externalize_recv_msghdr_array.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_externalize_recv_msghdr_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_msghdr_x = type { i64, i32 }
%struct.recv_msg_elem = type { i32, i32 }
%struct.user64_msghdr_x = type { i64, i32 }
%struct.user32_msghdr_x = type { i64, i32 }

@UIO_READ = common dso_local global i32 0, align 4
@SOCK_MSG_DATA = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @externalize_recv_msghdr_array(i8* %0, i32 %1, i32 %2, i64 %3, %struct.user_msghdr_x* %4, %struct.recv_msg_elem* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.user_msghdr_x*, align 8
  %12 = alloca %struct.recv_msg_elem*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.user_msghdr_x*, align 8
  %17 = alloca %struct.recv_msg_elem*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.user64_msghdr_x*, align 8
  %20 = alloca %struct.user32_msghdr_x*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.user_msghdr_x* %4, %struct.user_msghdr_x** %11, align 8
  store %struct.recv_msg_elem* %5, %struct.recv_msg_elem** %12, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %13, align 8
  br label %21

21:                                               ; preds = %99, %6
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %102

25:                                               ; preds = %21
  %26 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %11, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %26, i64 %27
  store %struct.user_msghdr_x* %28, %struct.user_msghdr_x** %16, align 8
  %29 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %29, i64 %30
  store %struct.recv_msg_elem* %31, %struct.recv_msg_elem** %17, align 8
  %32 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %33 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %17, align 8
  %36 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @uio_resid(i32 %37)
  %39 = sub nsw i64 %34, %38
  store i64 %39, i64* %18, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @UIO_READ, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %25
  %44 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %17, align 8
  %45 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SOCK_MSG_DATA, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 1, i32* %14, align 4
  br label %51

51:                                               ; preds = %50, %43
  br label %62

52:                                               ; preds = %25
  %53 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %54 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i64, i64* %18, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %14, align 4
  br label %61

61:                                               ; preds = %60, %57, %52
  br label %62

62:                                               ; preds = %61, %51
  %63 = load i32, i32* %14, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %15, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %15, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @UIO_USERSPACE64, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i8*, i8** %7, align 8
  %74 = bitcast i8* %73 to %struct.user64_msghdr_x*
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %74, i64 %75
  store %struct.user64_msghdr_x* %76, %struct.user64_msghdr_x** %19, align 8
  %77 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %78 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %19, align 8
  %81 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load i64, i64* %18, align 8
  %83 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %19, align 8
  %84 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %98

85:                                               ; preds = %68
  %86 = load i8*, i8** %7, align 8
  %87 = bitcast i8* %86 to %struct.user32_msghdr_x*
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %87, i64 %88
  store %struct.user32_msghdr_x* %89, %struct.user32_msghdr_x** %20, align 8
  %90 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %91 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %20, align 8
  %94 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load i64, i64* %18, align 8
  %96 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %20, align 8
  %97 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %85, %72
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %13, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %13, align 8
  br label %21

102:                                              ; preds = %21
  %103 = load i64, i64* %15, align 8
  ret i64 %103
}

declare dso_local i64 @uio_resid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
