; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/sys/extr_utime.c_utime.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/sys/extr_utime.c_utime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utimbuf = type { i32, i32 }

@SYS_utime = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utime(i8* %0, %struct.utimbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.utimbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.utimbuf, align 4
  store i8* %0, i8** %4, align 8
  store %struct.utimbuf* %1, %struct.utimbuf** %5, align 8
  %8 = load %struct.utimbuf*, %struct.utimbuf** %5, align 8
  %9 = icmp eq %struct.utimbuf* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = call i32 @time(i32* null)
  %12 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %7, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %7, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  store %struct.utimbuf* %7, %struct.utimbuf** %5, align 8
  br label %16

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @SYS_utime, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.utimbuf*, %struct.utimbuf** %5, align 8
  %21 = ptrtoint %struct.utimbuf* %20 to i32
  %22 = call i32 @syscall2(i32 %17, i32 %19, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %29

28:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @syscall2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
