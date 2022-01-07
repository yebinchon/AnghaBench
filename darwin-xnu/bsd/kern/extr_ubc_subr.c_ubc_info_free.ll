; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_info_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_info_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubc_info = type { i64, i32 }

@MEMORY_OBJECT_CONTROL_NULL = common dso_local global i64 0, align 8
@ubc_info_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubc_info*)* @ubc_info_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubc_info_free(%struct.ubc_info* %0) #0 {
  %2 = alloca %struct.ubc_info*, align 8
  store %struct.ubc_info* %0, %struct.ubc_info** %2, align 8
  %3 = load %struct.ubc_info*, %struct.ubc_info** %2, align 8
  %4 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @IS_VALID_CRED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.ubc_info*, %struct.ubc_info** %2, align 8
  %10 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %9, i32 0, i32 1
  %11 = call i32 @kauth_cred_unref(i32* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.ubc_info*, %struct.ubc_info** %2, align 8
  %14 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MEMORY_OBJECT_CONTROL_NULL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.ubc_info*, %struct.ubc_info** %2, align 8
  %20 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @memory_object_control_deallocate(i64 %21)
  br label %23

23:                                               ; preds = %18, %12
  %24 = load %struct.ubc_info*, %struct.ubc_info** %2, align 8
  %25 = call i32 @cluster_release(%struct.ubc_info* %24)
  %26 = load %struct.ubc_info*, %struct.ubc_info** %2, align 8
  %27 = call i32 @ubc_cs_free(%struct.ubc_info* %26)
  %28 = load i32, i32* @ubc_info_zone, align 4
  %29 = load %struct.ubc_info*, %struct.ubc_info** %2, align 8
  %30 = call i32 @zfree(i32 %28, %struct.ubc_info* %29)
  ret void
}

declare dso_local i64 @IS_VALID_CRED(i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i32 @memory_object_control_deallocate(i64) #1

declare dso_local i32 @cluster_release(%struct.ubc_info*) #1

declare dso_local i32 @ubc_cs_free(%struct.ubc_info*) #1

declare dso_local i32 @zfree(i32, %struct.ubc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
