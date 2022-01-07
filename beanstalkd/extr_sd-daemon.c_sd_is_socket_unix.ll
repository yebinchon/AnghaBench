; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_sd-daemon.c_sd_is_socket_unix.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_sd-daemon.c_sd_is_socket_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sockaddr_union = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_is_socket_unix(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.sockaddr_union, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @sd_is_socket_internal(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %6, align 4
  br label %104

22:                                               ; preds = %5
  %23 = call i32 @memset(%union.sockaddr_union* %12, i32 0, i32 8)
  store i32 8, i32* %13, align 4
  %24 = load i32, i32* %7, align 4
  %25 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_4__*
  %26 = call i64 @getsockname(i32 %24, %struct.TYPE_4__* %25, i32* %13)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @errno, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %104

31:                                               ; preds = %22
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %104

38:                                               ; preds = %31
  %39 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AF_UNIX, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %104

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %103

48:                                               ; preds = %45
  %49 = load i64, i64* %11, align 8
  %50 = icmp ule i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i8*, i8** %10, align 8
  %53 = call i64 @strlen(i8* %52)
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* %11, align 8
  %56 = icmp ule i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp eq i64 %59, 4
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %6, align 4
  br label %104

62:                                               ; preds = %54
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %11, align 8
  %71 = add i64 4, %70
  %72 = add i64 %71, 1
  %73 = icmp uge i64 %69, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load i8*, i8** %10, align 8
  %76 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_3__*
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  %81 = call i64 @memcmp(i8* %75, i32 %78, i64 %80)
  %82 = icmp eq i64 %81, 0
  br label %83

83:                                               ; preds = %74, %67
  %84 = phi i1 [ false, %67 ], [ %82, %74 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %6, align 4
  br label %104

86:                                               ; preds = %62
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %11, align 8
  %90 = add i64 4, %89
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = load i8*, i8** %10, align 8
  %94 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_3__*
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i64 @memcmp(i8* %93, i32 %96, i64 %97)
  %99 = icmp eq i64 %98, 0
  br label %100

100:                                              ; preds = %92, %86
  %101 = phi i1 [ false, %86 ], [ %99, %92 ]
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %6, align 4
  br label %104

103:                                              ; preds = %45
  store i32 1, i32* %6, align 4
  br label %104

104:                                              ; preds = %103, %100, %83, %57, %44, %35, %28, %20
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @sd_is_socket_internal(i32, i32, i32) #1

declare dso_local i32 @memset(%union.sockaddr_union*, i32, i32) #1

declare dso_local i64 @getsockname(i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
