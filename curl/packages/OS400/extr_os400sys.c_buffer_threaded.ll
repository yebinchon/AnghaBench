; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_buffer_threaded.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_buffer_threaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thdkey = common dso_local global i32 0, align 4
@LK_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i64)* @buffer_threaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @buffer_threaded(i32 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @thdkey, align 4
  %8 = call i64 @pthread_getspecific(i32 %7)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %39

16:                                               ; preds = %12
  %17 = load i64, i64* @LK_LAST, align 8
  %18 = call i32* @calloc(i64 %17, i32 4)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %39

22:                                               ; preds = %16
  %23 = load i32, i32* @thdkey, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = call i64 @pthread_setspecific(i32 %23, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @free(i32* %29)
  store i8* null, i8** %3, align 8
  br label %39

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i64, i64* %5, align 8
  %38 = call i8* @get_buffer(i32* %36, i64 %37)
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %32, %28, %21, %15
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i64 @pthread_getspecific(i32) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i64 @pthread_setspecific(i32, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @get_buffer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
