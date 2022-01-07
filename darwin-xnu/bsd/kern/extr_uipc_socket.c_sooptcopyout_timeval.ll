; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sooptcopyout_timeval.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sooptcopyout_timeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt = type { i64, i64, i32 }
%struct.timeval = type { i32, i32 }
%struct.user64_timeval = type { i32, i32 }
%struct.user32_timeval = type { i32, i32 }

@USER_ADDR_NULL = common dso_local global i32 0, align 4
@kernproc = common dso_local global i64 0, align 8
@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockopt*, %struct.timeval*)* @sooptcopyout_timeval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sooptcopyout_timeval(%struct.sockopt* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.sockopt*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.user64_timeval, align 4
  %8 = alloca %struct.user32_timeval, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.sockopt* %0, %struct.sockopt** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %11 = bitcast %struct.user64_timeval* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = bitcast %struct.user32_timeval* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  %13 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %14 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @proc_is64bit(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  store i64 8, i64* %6, align 8
  %19 = load %struct.timeval*, %struct.timeval** %4, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.user64_timeval, %struct.user64_timeval* %7, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.timeval*, %struct.timeval** %4, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.user64_timeval, %struct.user64_timeval* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = bitcast %struct.user64_timeval* %7 to i8*
  store i8* %27, i8** %9, align 8
  br label %38

28:                                               ; preds = %2
  store i64 8, i64* %6, align 8
  %29 = load %struct.timeval*, %struct.timeval** %4, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.user32_timeval, %struct.user32_timeval* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.timeval*, %struct.timeval** %4, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.user32_timeval, %struct.user32_timeval* %8, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = bitcast %struct.user32_timeval* %8 to i8*
  store i8* %37, i8** %9, align 8
  br label %38

38:                                               ; preds = %28, %18
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %41 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @min(i64 %39, i64 %42)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %46 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %48 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @USER_ADDR_NULL, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %38
  %53 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %54 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @kernproc, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %61 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @copyout(i8* %59, i32 %62, i64 %63)
  store i32 %64, i32* %5, align 4
  br label %74

65:                                               ; preds = %52
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* @caddr_t, align 4
  %68 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %69 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @CAST_DOWN(i32 %67, i32 %70)
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @bcopy(i8* %66, i32 %71, i64 %72)
  br label %74

74:                                               ; preds = %65, %58
  br label %75

75:                                               ; preds = %74, %38
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @proc_is64bit(i64) #2

declare dso_local i64 @min(i64, i64) #2

declare dso_local i32 @copyout(i8*, i32, i64) #2

declare dso_local i32 @bcopy(i8*, i32, i64) #2

declare dso_local i32 @CAST_DOWN(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
