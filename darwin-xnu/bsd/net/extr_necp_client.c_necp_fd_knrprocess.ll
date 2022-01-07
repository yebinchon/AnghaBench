; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_fd_knrprocess.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_fd_knrprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { %struct.kevent_internal_s, i64 }
%struct.kevent_internal_s = type { i32 }
%struct.filt_process_s = type { i32 }
%struct.necp_fd_data = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.filt_process_s*, %struct.kevent_internal_s*)* @necp_fd_knrprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_fd_knrprocess(%struct.knote* %0, %struct.filt_process_s* %1, %struct.kevent_internal_s* %2) #0 {
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.filt_process_s*, align 8
  %6 = alloca %struct.kevent_internal_s*, align 8
  %7 = alloca %struct.necp_fd_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.filt_process_s* %1, %struct.filt_process_s** %5, align 8
  store %struct.kevent_internal_s* %2, %struct.kevent_internal_s** %6, align 8
  %10 = load %struct.knote*, %struct.knote** %4, align 8
  %11 = getelementptr inbounds %struct.knote, %struct.knote* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.necp_fd_data*
  store %struct.necp_fd_data* %13, %struct.necp_fd_data** %7, align 8
  %14 = load %struct.necp_fd_data*, %struct.necp_fd_data** %7, align 8
  %15 = call i32 @NECP_FD_LOCK(%struct.necp_fd_data* %14)
  %16 = load %struct.necp_fd_data*, %struct.necp_fd_data** %7, align 8
  %17 = load i32, i32* @POLLIN, align 4
  %18 = call i32 (...) @current_proc()
  %19 = call i32 @necp_fd_poll(%struct.necp_fd_data* %16, i32 %17, i32* null, i32 %18, i32 1)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @POLLIN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %6, align 8
  %29 = load %struct.knote*, %struct.knote** %4, align 8
  %30 = getelementptr inbounds %struct.knote, %struct.knote* %29, i32 0, i32 0
  %31 = bitcast %struct.kevent_internal_s* %28 to i8*
  %32 = bitcast %struct.kevent_internal_s* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 8 %32, i64 4, i1 false)
  br label %33

33:                                               ; preds = %27, %3
  %34 = load %struct.necp_fd_data*, %struct.necp_fd_data** %7, align 8
  %35 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %34)
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local i32 @NECP_FD_LOCK(%struct.necp_fd_data*) #1

declare dso_local i32 @necp_fd_poll(%struct.necp_fd_data*, i32, i32*, i32, i32) #1

declare dso_local i32 @current_proc(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NECP_FD_UNLOCK(%struct.necp_fd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
