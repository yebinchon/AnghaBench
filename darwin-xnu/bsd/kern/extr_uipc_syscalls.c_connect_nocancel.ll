; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_connect_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_connect_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connect_nocancel_args = type { i32, i32, i32 }
%struct.socket = type { i64 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@M_SONAME = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connect_nocancel(i32 %0, %struct.connect_nocancel_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.connect_nocancel_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.connect_nocancel_args* %1, %struct.connect_nocancel_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %10, align 8
  %14 = load %struct.connect_nocancel_args*, %struct.connect_nocancel_args** %6, align 8
  %15 = getelementptr inbounds %struct.connect_nocancel_args, %struct.connect_nocancel_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.connect_nocancel_args*, %struct.connect_nocancel_args** %6, align 8
  %19 = getelementptr inbounds %struct.connect_nocancel_args, %struct.connect_nocancel_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @AUDIT_ARG(i32 %17, i32 %20)
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @file_socket(i32 %22, %struct.socket** %8)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %105

28:                                               ; preds = %3
  %29 = load %struct.socket*, %struct.socket** %8, align 8
  %30 = icmp eq %struct.socket* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @EBADF, align 4
  store i32 %32, i32* %11, align 4
  br label %101

33:                                               ; preds = %28
  %34 = load %struct.socket*, %struct.socket** %8, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SOCK_DGRAM, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load %struct.connect_nocancel_args*, %struct.connect_nocancel_args** %6, align 8
  %41 = getelementptr inbounds %struct.connect_nocancel_args, %struct.connect_nocancel_args* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %43, 4
  br i1 %44, label %45, label %58

45:                                               ; preds = %33
  %46 = load %struct.socket*, %struct.socket** %8, align 8
  %47 = load %struct.connect_nocancel_args*, %struct.connect_nocancel_args** %6, align 8
  %48 = getelementptr inbounds %struct.connect_nocancel_args, %struct.connect_nocancel_args* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.connect_nocancel_args*, %struct.connect_nocancel_args** %6, align 8
  %51 = getelementptr inbounds %struct.connect_nocancel_args, %struct.connect_nocancel_args* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @getsockaddr(%struct.socket* %46, %struct.sockaddr** %10, i32 %49, i32 %52, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %76

58:                                               ; preds = %33
  %59 = load %struct.socket*, %struct.socket** %8, align 8
  %60 = load %struct.connect_nocancel_args*, %struct.connect_nocancel_args** %6, align 8
  %61 = getelementptr inbounds %struct.connect_nocancel_args, %struct.connect_nocancel_args* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.connect_nocancel_args*, %struct.connect_nocancel_args** %6, align 8
  %64 = getelementptr inbounds %struct.connect_nocancel_args, %struct.connect_nocancel_args* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @getsockaddr_s(%struct.socket* %59, %struct.sockaddr_storage* %9, i32 %62, i32 %65, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  store %struct.sockaddr* %74, %struct.sockaddr** %10, align 8
  br label %75

75:                                               ; preds = %73, %58
  br label %76

76:                                               ; preds = %75, %45
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %101

80:                                               ; preds = %76
  %81 = load %struct.socket*, %struct.socket** %8, align 8
  %82 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %83 = call i32 @connectit(%struct.socket* %81, %struct.sockaddr* %82)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %85 = icmp ne %struct.sockaddr* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %88 = call %struct.sockaddr* @SA(%struct.sockaddr_storage* %9)
  %89 = icmp ne %struct.sockaddr* %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %92 = load i32, i32* @M_SONAME, align 4
  %93 = call i32 @FREE(%struct.sockaddr* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %86, %80
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @ERESTART, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @EINTR, align 4
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %98, %94
  br label %101

101:                                              ; preds = %100, %79, %31
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @file_drop(i32 %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %26
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i32 @file_socket(i32, %struct.socket**) #1

declare dso_local i32 @getsockaddr(%struct.socket*, %struct.sockaddr**, i32, i32, i32) #1

declare dso_local i32 @getsockaddr_s(%struct.socket*, %struct.sockaddr_storage*, i32, i32, i32) #1

declare dso_local i32 @connectit(%struct.socket*, %struct.sockaddr*) #1

declare dso_local %struct.sockaddr* @SA(%struct.sockaddr_storage*) #1

declare dso_local i32 @FREE(%struct.sockaddr*, i32) #1

declare dso_local i32 @file_drop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
