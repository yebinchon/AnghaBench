; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_socket_bind_35685803.c_multithreaded_bind_test.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_socket_bind_35685803.c_multithreaded_bind_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@SOCK_STREAM = common dso_local global i32 0, align 4
@second_thread = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"close socket %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @multithreaded_bind_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multithreaded_bind_test(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %38, %2
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* @SOCK_STREAM, align 4
  %27 = call i32 @sockv6_open(i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %15, i64 %29
  store i32 %27, i32* %30, align 4
  br label %37

31:                                               ; preds = %22
  %32 = load i32, i32* @SOCK_STREAM, align 4
  %33 = call i32 @sock_open(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %15, i64 %35
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load i32, i32* %4, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32* %15, i32** %44, align 8
  %45 = load i32, i32* @second_thread, align 4
  %46 = call i32 @pthread_create(i32* %9, i32* null, i32 %45, %struct.TYPE_4__* %6)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @T_QUIET, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_ZERO(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @bind_sockets(%struct.TYPE_4__* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @pthread_join(i32 %51, i32* null)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @T_QUIET, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_ZERO(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %73, %41
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %15, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @close(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @T_QUIET, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %15, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_ZERO(i32 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %56

76:                                               ; preds = %56
  %77 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %77)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sockv6_open(i32) #2

declare dso_local i32 @sock_open(i32) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i8*, ...) #2

declare dso_local i32 @bind_sockets(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @pthread_join(i32, i32*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
