; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_socket_info.c_fill_common_sockinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_socket_info.c_fill_common_sockinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.socket*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.socket_info = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i8*, i32, i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*, %struct.socket_info*)* @fill_common_sockinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_common_sockinfo(%struct.socket* %0, %struct.socket_info* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket_info*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.socket_info* %1, %struct.socket_info** %4, align 8
  %5 = load %struct.socket*, %struct.socket** %3, align 8
  %6 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %5)
  %7 = inttoptr i64 %6 to i8*
  %8 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %9 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %8, i32 0, i32 15
  store i8* %7, i8** %9, align 8
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 13
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %14 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %13, i32 0, i32 14
  store i32 %12, i32* %14, align 8
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 65535
  %19 = trunc i32 %18 to i16
  %20 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %21 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %20, i32 0, i32 0
  store i16 %19, i16* %21, align 8
  %22 = load %struct.socket*, %struct.socket** %3, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %26 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %25, i32 0, i32 13
  store i32 %24, i32* %26, align 4
  %27 = load %struct.socket*, %struct.socket** %3, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %31 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %30, i32 0, i32 12
  store i32 %29, i32* %31, align 8
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 10
  %34 = load %struct.socket*, %struct.socket** %33, align 8
  %35 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %38 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load %struct.socket*, %struct.socket** %3, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 9
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %2
  %44 = load %struct.socket*, %struct.socket** %3, align 8
  %45 = call i64 @SOCK_PROTO(%struct.socket* %44)
  %46 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %47 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %46, i32 0, i32 10
  store i64 %45, i64* %47, align 8
  %48 = load %struct.socket*, %struct.socket** %3, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 9
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load %struct.socket*, %struct.socket** %3, align 8
  %56 = call i64 @SOCK_DOM(%struct.socket* %55)
  %57 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %58 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %57, i32 0, i32 9
  store i64 %56, i64* %58, align 8
  br label %62

59:                                               ; preds = %43
  %60 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %61 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %60, i32 0, i32 9
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %54
  br label %68

63:                                               ; preds = %2
  %64 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %65 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %64, i32 0, i32 9
  store i64 0, i64* %65, align 8
  %66 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %67 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %66, i32 0, i32 10
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %63, %62
  %69 = load %struct.socket*, %struct.socket** %3, align 8
  %70 = getelementptr inbounds %struct.socket, %struct.socket* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %73 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  %74 = load %struct.socket*, %struct.socket** %3, align 8
  %75 = getelementptr inbounds %struct.socket, %struct.socket* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %78 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load %struct.socket*, %struct.socket** %3, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %83 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load %struct.socket*, %struct.socket** %3, align 8
  %85 = getelementptr inbounds %struct.socket, %struct.socket* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %88 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.socket*, %struct.socket** %3, align 8
  %90 = getelementptr inbounds %struct.socket, %struct.socket* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %93 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.socket*, %struct.socket** %3, align 8
  %95 = getelementptr inbounds %struct.socket, %struct.socket* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %98 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.socket*, %struct.socket** %3, align 8
  %100 = getelementptr inbounds %struct.socket, %struct.socket* %99, i32 0, i32 2
  %101 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %102 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %101, i32 0, i32 2
  %103 = call i32 @fill_sockbuf_info(i32* %100, i32* %102)
  %104 = load %struct.socket*, %struct.socket** %3, align 8
  %105 = getelementptr inbounds %struct.socket, %struct.socket* %104, i32 0, i32 1
  %106 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %107 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %106, i32 0, i32 1
  %108 = call i32 @fill_sockbuf_info(i32* %105, i32* %107)
  ret void
}

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i64 @SOCK_PROTO(%struct.socket*) #1

declare dso_local i64 @SOCK_DOM(%struct.socket*) #1

declare dso_local i32 @fill_sockbuf_info(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
