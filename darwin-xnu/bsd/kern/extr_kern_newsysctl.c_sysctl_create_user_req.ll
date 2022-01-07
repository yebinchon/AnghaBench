; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_sysctl_create_user_req.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_sysctl_create_user_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i64, i64, i32, i32, i32, i8*, i8*, %struct.proc* }
%struct.proc = type { i32 }

@sysctl_old_user = common dso_local global i32 0, align 4
@sysctl_new_user = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysctl_create_user_req(%struct.sysctl_req* %0, %struct.proc* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.sysctl_req*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.sysctl_req* %0, %struct.sysctl_req** %7, align 8
  store %struct.proc* %1, %struct.proc** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %14 = call i32 @bzero(%struct.sysctl_req* %13, i32 56)
  %15 = load %struct.proc*, %struct.proc** %8, align 8
  %16 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %17 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %16, i32 0, i32 7
  store %struct.proc* %15, %struct.proc** %17, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %20 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %23 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %6
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %29 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %32 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %26, %6
  %34 = load i32, i32* @sysctl_old_user, align 4
  %35 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %36 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @sysctl_new_user, align 4
  %38 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %39 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sysctl_req*, %struct.sysctl_req** %7, align 8
  %41 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.sysctl_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
