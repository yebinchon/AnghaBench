; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testserv.c_mustdialunix.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testserv.c_mustdialunix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mustdialunix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustdialunix(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sockaddr_un, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i64 4, i64* %4, align 8
  %7 = load i32, i32* @AF_UNIX, align 4
  %8 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @snprintf(i32 %10, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* @AF_UNIX, align 4
  %14 = load i32, i32* @SOCK_STREAM, align 4
  %15 = call i32 @socket(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = call i32 @twarn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = bitcast %struct.sockaddr_un* %3 to %struct.sockaddr*
  %24 = call i32 @connect(i32 %22, %struct.sockaddr* %23, i32 8)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = call i32 @twarn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @snprintf(i32, i64, i8*, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @twarn(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
