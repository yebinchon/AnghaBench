; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_init.c_net_init_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_init.c_net_init_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.init_list_entry = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@list_head = common dso_local global i64 0, align 8
@LIST_RAN = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"net_init_add: no memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_init_add(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.init_list_entry*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  store i32 %8, i32* %2, align 4
  br label %51

9:                                                ; preds = %1
  %10 = load i64, i64* @list_head, align 8
  %11 = load i64, i64* @LIST_RAN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @EALREADY, align 4
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %9
  %16 = call %struct.init_list_entry* @kalloc(i32 16)
  store %struct.init_list_entry* %16, %struct.init_list_entry** %4, align 8
  %17 = load %struct.init_list_entry*, %struct.init_list_entry** %4, align 8
  %18 = icmp eq %struct.init_list_entry* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %2, align 4
  br label %51

22:                                               ; preds = %15
  %23 = load %struct.init_list_entry*, %struct.init_list_entry** %4, align 8
  %24 = call i32 @bzero(%struct.init_list_entry* %23, i32 16)
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.init_list_entry*, %struct.init_list_entry** %4, align 8
  %27 = getelementptr inbounds %struct.init_list_entry, %struct.init_list_entry* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %42, %22
  %29 = load i64, i64* @list_head, align 8
  %30 = load %struct.init_list_entry*, %struct.init_list_entry** %4, align 8
  %31 = getelementptr inbounds %struct.init_list_entry, %struct.init_list_entry* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.init_list_entry*, %struct.init_list_entry** %4, align 8
  %33 = getelementptr inbounds %struct.init_list_entry, %struct.init_list_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LIST_RAN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.init_list_entry*, %struct.init_list_entry** %4, align 8
  %39 = call i32 @kfree(%struct.init_list_entry* %38, i32 16)
  %40 = load i32, i32* @EALREADY, align 4
  store i32 %40, i32* %2, align 4
  br label %51

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.init_list_entry*, %struct.init_list_entry** %4, align 8
  %44 = getelementptr inbounds %struct.init_list_entry, %struct.init_list_entry* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.init_list_entry*, %struct.init_list_entry** %4, align 8
  %47 = call i32 @OSCompareAndSwapPtr(i64 %45, %struct.init_list_entry* %46, i64* @list_head)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %28, label %50

50:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %37, %19, %13, %7
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.init_list_entry* @kalloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bzero(%struct.init_list_entry*, i32) #1

declare dso_local i32 @kfree(%struct.init_list_entry*, i32) #1

declare dso_local i32 @OSCompareAndSwapPtr(i64, %struct.init_list_entry*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
