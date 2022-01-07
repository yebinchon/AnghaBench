; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sotoxsocket64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sotoxsocket64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.socket*, i32, i32, i32 }
%struct.xsocket64 = type { i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i8*, i32, i32, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sotoxsocket64(%struct.socket* %0, %struct.xsocket64* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.xsocket64*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.xsocket64* %1, %struct.xsocket64** %4, align 8
  %5 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %6 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %5, i32 0, i32 0
  store i32 96, i32* %6, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %7)
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %11 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %10, i32 0, i32 18
  store i8* %9, i8** %11, align 8
  %12 = load %struct.socket*, %struct.socket** %3, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 15
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %16 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %15, i32 0, i32 17
  store i32 %14, i32* %16, align 8
  %17 = load %struct.socket*, %struct.socket** %3, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 65535
  %21 = trunc i32 %20 to i16
  %22 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %23 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %22, i32 0, i32 1
  store i16 %21, i16* %23, align 4
  %24 = load %struct.socket*, %struct.socket** %3, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 14
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %28 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %27, i32 0, i32 16
  store i32 %26, i32* %28, align 4
  %29 = load %struct.socket*, %struct.socket** %3, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %33 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %32, i32 0, i32 15
  store i32 %31, i32* %33, align 8
  %34 = load %struct.socket*, %struct.socket** %3, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 12
  %36 = load %struct.socket*, %struct.socket** %35, align 8
  %37 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %36)
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %40 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %39, i32 0, i32 14
  store i8* %38, i8** %40, align 8
  %41 = load %struct.socket*, %struct.socket** %3, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 11
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %2
  %46 = load %struct.socket*, %struct.socket** %3, align 8
  %47 = call i64 @SOCK_PROTO(%struct.socket* %46)
  %48 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %49 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %48, i32 0, i32 13
  store i64 %47, i64* %49, align 8
  %50 = load %struct.socket*, %struct.socket** %3, align 8
  %51 = call i64 @SOCK_DOM(%struct.socket* %50)
  %52 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %53 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %52, i32 0, i32 12
  store i64 %51, i64* %53, align 8
  br label %59

54:                                               ; preds = %2
  %55 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %56 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %55, i32 0, i32 12
  store i64 0, i64* %56, align 8
  %57 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %58 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %57, i32 0, i32 13
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %45
  %60 = load %struct.socket*, %struct.socket** %3, align 8
  %61 = getelementptr inbounds %struct.socket, %struct.socket* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %64 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %63, i32 0, i32 11
  store i32 %62, i32* %64, align 4
  %65 = load %struct.socket*, %struct.socket** %3, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %69 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %68, i32 0, i32 10
  store i32 %67, i32* %69, align 8
  %70 = load %struct.socket*, %struct.socket** %3, align 8
  %71 = getelementptr inbounds %struct.socket, %struct.socket* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %74 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 4
  %75 = load %struct.socket*, %struct.socket** %3, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %79 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 8
  %80 = load %struct.socket*, %struct.socket** %3, align 8
  %81 = getelementptr inbounds %struct.socket, %struct.socket* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %84 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load %struct.socket*, %struct.socket** %3, align 8
  %86 = getelementptr inbounds %struct.socket, %struct.socket* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %89 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load %struct.socket*, %struct.socket** %3, align 8
  %91 = getelementptr inbounds %struct.socket, %struct.socket* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %94 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load %struct.socket*, %struct.socket** %3, align 8
  %96 = getelementptr inbounds %struct.socket, %struct.socket* %95, i32 0, i32 3
  %97 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %98 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %97, i32 0, i32 4
  %99 = call i32 @sbtoxsockbuf(i32* %96, i32* %98)
  %100 = load %struct.socket*, %struct.socket** %3, align 8
  %101 = getelementptr inbounds %struct.socket, %struct.socket* %100, i32 0, i32 2
  %102 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %103 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %102, i32 0, i32 3
  %104 = call i32 @sbtoxsockbuf(i32* %101, i32* %103)
  %105 = load %struct.socket*, %struct.socket** %3, align 8
  %106 = getelementptr inbounds %struct.socket, %struct.socket* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @kauth_cred_getuid(i32 %107)
  %109 = load %struct.xsocket64*, %struct.xsocket64** %4, align 8
  %110 = getelementptr inbounds %struct.xsocket64, %struct.xsocket64* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  ret void
}

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i64 @SOCK_PROTO(%struct.socket*) #1

declare dso_local i64 @SOCK_DOM(%struct.socket*) #1

declare dso_local i32 @sbtoxsockbuf(i32*, i32*) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
