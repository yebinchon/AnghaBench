; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_aio_copy_in_sigev.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_aio_copy_in_sigev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_sigevent = type { i8*, i8*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.user64_sigevent = type { i8*, i8*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.user32_sigevent = type { i8*, i8*, %struct.TYPE_8__, i32, i32 }

@USER_ADDR_NULL = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.user_sigevent*)* @aio_copy_in_sigev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_copy_in_sigev(i32 %0, i64 %1, %struct.user_sigevent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.user_sigevent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.user64_sigevent, align 8
  %9 = alloca %struct.user32_sigevent, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.user_sigevent* %2, %struct.user_sigevent** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @USER_ADDR_NULL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %88

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @proc_is64bit(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @copyin(i64 %19, %struct.user64_sigevent* %8, i32 32)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.user64_sigevent, %struct.user64_sigevent* %8, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.user_sigevent*, %struct.user_sigevent** %6, align 8
  %27 = getelementptr inbounds %struct.user_sigevent, %struct.user_sigevent* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds %struct.user64_sigevent, %struct.user64_sigevent* %8, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.user_sigevent*, %struct.user_sigevent** %6, align 8
  %31 = getelementptr inbounds %struct.user_sigevent, %struct.user_sigevent* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.user64_sigevent, %struct.user64_sigevent* %8, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.user_sigevent*, %struct.user_sigevent** %6, align 8
  %37 = getelementptr inbounds %struct.user_sigevent, %struct.user_sigevent* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = getelementptr inbounds %struct.user64_sigevent, %struct.user64_sigevent* %8, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.user_sigevent*, %struct.user_sigevent** %6, align 8
  %43 = getelementptr inbounds %struct.user_sigevent, %struct.user_sigevent* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = getelementptr inbounds %struct.user64_sigevent, %struct.user64_sigevent* %8, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.user_sigevent*, %struct.user_sigevent** %6, align 8
  %47 = getelementptr inbounds %struct.user_sigevent, %struct.user_sigevent* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %23, %18
  br label %82

49:                                               ; preds = %14
  %50 = load i64, i64* %5, align 8
  %51 = bitcast %struct.user32_sigevent* %9 to %struct.user64_sigevent*
  %52 = call i32 @copyin(i64 %50, %struct.user64_sigevent* %51, i32 32)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.user32_sigevent, %struct.user32_sigevent* %9, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.user_sigevent*, %struct.user_sigevent** %6, align 8
  %59 = getelementptr inbounds %struct.user_sigevent, %struct.user_sigevent* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = getelementptr inbounds %struct.user32_sigevent, %struct.user32_sigevent* %9, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.user_sigevent*, %struct.user_sigevent** %6, align 8
  %63 = getelementptr inbounds %struct.user_sigevent, %struct.user_sigevent* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.user32_sigevent, %struct.user32_sigevent* %9, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.user_sigevent*, %struct.user_sigevent** %6, align 8
  %68 = getelementptr inbounds %struct.user_sigevent, %struct.user_sigevent* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = getelementptr inbounds %struct.user32_sigevent, %struct.user32_sigevent* %9, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @CAST_USER_ADDR_T(i8* %72)
  %74 = load %struct.user_sigevent*, %struct.user_sigevent** %6, align 8
  %75 = getelementptr inbounds %struct.user_sigevent, %struct.user_sigevent* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = getelementptr inbounds %struct.user32_sigevent, %struct.user32_sigevent* %9, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @CAST_USER_ADDR_T(i8* %77)
  %79 = load %struct.user_sigevent*, %struct.user_sigevent** %6, align 8
  %80 = getelementptr inbounds %struct.user_sigevent, %struct.user_sigevent* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %55, %49
  br label %82

82:                                               ; preds = %81, %48
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @EAGAIN, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %82
  br label %88

88:                                               ; preds = %87, %13
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i64 @proc_is64bit(i32) #1

declare dso_local i32 @copyin(i64, %struct.user64_sigevent*, i32) #1

declare dso_local i8* @CAST_USER_ADDR_T(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
