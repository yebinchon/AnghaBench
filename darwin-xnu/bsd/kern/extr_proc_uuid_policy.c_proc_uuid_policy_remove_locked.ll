; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_uuid_policy.c_proc_uuid_policy_remove_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_uuid_policy.c_proc_uuid_policy_remove_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_uuid_policy_entry = type { i32 }

@entries = common dso_local global i32 0, align 4
@proc_uuid_policy_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.proc_uuid_policy_entry* (i32, i32, i32*)* @proc_uuid_policy_remove_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.proc_uuid_policy_entry* @proc_uuid_policy_remove_locked(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.proc_uuid_policy_entry*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store %struct.proc_uuid_policy_entry* null, %struct.proc_uuid_policy_entry** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %10, %3
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.proc_uuid_policy_entry* @proc_uuid_policy_lookup_locked(i32 %13)
  store %struct.proc_uuid_policy_entry* %14, %struct.proc_uuid_policy_entry** %7, align 8
  %15 = load %struct.proc_uuid_policy_entry*, %struct.proc_uuid_policy_entry** %7, align 8
  %16 = icmp ne %struct.proc_uuid_policy_entry* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  %18 = load %struct.proc_uuid_policy_entry*, %struct.proc_uuid_policy_entry** %7, align 8
  %19 = getelementptr inbounds %struct.proc_uuid_policy_entry, %struct.proc_uuid_policy_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.proc_uuid_policy_entry*, %struct.proc_uuid_policy_entry** %7, align 8
  %25 = load i32, i32* @entries, align 4
  %26 = call i32 @LIST_REMOVE(%struct.proc_uuid_policy_entry* %24, i32 %25)
  %27 = load i32, i32* @proc_uuid_policy_count, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @proc_uuid_policy_count, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32*, i32** %6, align 8
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %23
  br label %41

34:                                               ; preds = %17
  %35 = load i32, i32* %5, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.proc_uuid_policy_entry*, %struct.proc_uuid_policy_entry** %7, align 8
  %38 = getelementptr inbounds %struct.proc_uuid_policy_entry, %struct.proc_uuid_policy_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %33
  br label %42

42:                                               ; preds = %41, %12
  %43 = load %struct.proc_uuid_policy_entry*, %struct.proc_uuid_policy_entry** %7, align 8
  ret %struct.proc_uuid_policy_entry* %43
}

declare dso_local %struct.proc_uuid_policy_entry* @proc_uuid_policy_lookup_locked(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.proc_uuid_policy_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
