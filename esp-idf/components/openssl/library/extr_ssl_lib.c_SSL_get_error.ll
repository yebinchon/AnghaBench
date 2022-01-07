; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_SSL_get_error.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_SSL_get_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SSL_ERROR_SYSCALL = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@SSL_RECEIVED_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_ERROR_ZERO_RETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_get_error(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = call i32 @SSL_ASSERT1(%struct.TYPE_6__* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SSL_ERROR_NONE, align 4
  store i32 %12, i32* %5, align 4
  br label %45

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = call i64 @SSL_want_read(%struct.TYPE_6__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  store i32 %21, i32* %5, align 4
  br label %31

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = call i64 @SSL_want_write(%struct.TYPE_6__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  store i32 %27, i32* %5, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %30, %20
  br label %44

32:                                               ; preds = %13
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @SSL_ERROR_ZERO_RETURN, align 4
  store i32 %40, i32* %5, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %11
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @SSL_ASSERT1(%struct.TYPE_6__*) #1

declare dso_local i64 @SSL_want_read(%struct.TYPE_6__*) #1

declare dso_local i64 @SSL_want_write(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
