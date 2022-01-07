; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sooptcopyout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sooptcopyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt = type { i64, i64, i64 }

@USER_ADDR_NULL = common dso_local global i64 0, align 8
@kernproc = common dso_local global i64 0, align 8
@caddr_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sooptcopyout(%struct.sockopt* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.sockopt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sockopt* %0, %struct.sockopt** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %11 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @min(i64 %9, i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %16 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %18 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USER_ADDR_NULL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %3
  %23 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %24 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @kernproc, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %31 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @copyout(i8* %29, i64 %32, i64 %33)
  store i32 %34, i32* %7, align 4
  br label %44

35:                                               ; preds = %22
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @caddr_t, align 4
  %38 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %39 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @CAST_DOWN(i32 %37, i64 %40)
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @bcopy(i8* %36, i32 %41, i64 %42)
  br label %44

44:                                               ; preds = %35, %28
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @copyout(i8*, i64, i64) #1

declare dso_local i32 @bcopy(i8*, i32, i64) #1

declare dso_local i32 @CAST_DOWN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
