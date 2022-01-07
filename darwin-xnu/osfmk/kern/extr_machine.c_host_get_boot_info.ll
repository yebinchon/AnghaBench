; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_machine.c_host_get_boot_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_machine.c_host_get_boot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HOST_PRIV_NULL = common dso_local global i32* null, align 8
@KERN_INVALID_HOST = common dso_local global i32 0, align 4
@realhost = common dso_local global i32 0, align 4
@KERNEL_BOOT_INFO_MAX = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_get_boot_info(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** @HOST_PRIV_NULL, align 8
  %9 = icmp eq i32* %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @KERN_INVALID_HOST, align 4
  store i32 %11, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, @realhost
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @KERNEL_BOOT_INFO_MAX, align 4
  %19 = call i8* @machine_boot_info(i8* %17, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @KERNEL_BOOT_INFO_MAX, align 4
  %27 = call i32 @strncpy(i8* %24, i8* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %12
  %29 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @machine_boot_info(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
