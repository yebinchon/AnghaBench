; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/win32/extr_in_vk.c_in_vk_get_key_name.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/win32/extr_in_vk.c_in_vk_get_key_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in_vk_get_key_name.buff = internal global [4 x i8] zeroinitializer, align 1
@IN_VK_NKEYS = common dso_local global i32 0, align 4
@in_vk_keys = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"Unkn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @in_vk_get_key_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @in_vk_get_key_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp sle i32 65, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 90
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @in_vk_get_key_name.buff, i64 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @in_vk_get_key_name.buff, i64 0, i64 1), align 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @in_vk_get_key_name.buff, i64 0, i64 0), i8** %2, align 8
  br label %32

13:                                               ; preds = %7, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 0, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IN_VK_NKEYS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i8**, i8*** @in_vk_keys, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %20, %16, %13
  %27 = load i8*, i8** %4, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %2, align 8
  br label %32

32:                                               ; preds = %30, %10
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
