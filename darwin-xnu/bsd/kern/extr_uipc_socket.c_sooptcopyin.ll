; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sooptcopyin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sooptcopyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@kernproc = common dso_local global i64 0, align 8
@caddr_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sooptcopyin(%struct.sockopt* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockopt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sockopt* %0, %struct.sockopt** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.sockopt*, %struct.sockopt** %6, align 8
  %12 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %48

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.sockopt*, %struct.sockopt** %6, align 8
  %25 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.sockopt*, %struct.sockopt** %6, align 8
  %28 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @kernproc, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.sockopt*, %struct.sockopt** %6, align 8
  %34 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @copyin(i32 %35, i8* %36, i64 %37)
  store i32 %38, i32* %5, align 4
  br label %48

39:                                               ; preds = %26
  %40 = load i32, i32* @caddr_t, align 4
  %41 = load %struct.sockopt*, %struct.sockopt** %6, align 8
  %42 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @CAST_DOWN(i32 %40, i32 %43)
  %45 = load i8*, i8** %7, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @bcopy(i32 %44, i8* %45, i64 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %39, %32, %16
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @copyin(i32, i8*, i64) #1

declare dso_local i32 @bcopy(i32, i8*, i64) #1

declare dso_local i32 @CAST_DOWN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
