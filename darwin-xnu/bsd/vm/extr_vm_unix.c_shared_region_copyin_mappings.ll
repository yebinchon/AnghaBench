; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c_shared_region_copyin_mappings.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c_shared_region_copyin_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32 }
%struct.shared_file_mapping_np = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"shared_region: %p [%d(%s)] map(): copyin(0x%llx, %d) failed (error=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shared_region_copyin_mappings(%struct.proc* %0, i64 %1, i32 %2, %struct.shared_file_mapping_np* %3) #0 {
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.shared_file_mapping_np*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.shared_file_mapping_np* %3, %struct.shared_file_mapping_np** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 %12, 4
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %8, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @copyin(i64 %14, %struct.shared_file_mapping_np* %15, i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %4
  %21 = call i32 (...) @current_thread()
  %22 = call i64 @VM_KERNEL_ADDRPERM(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.proc*, %struct.proc** %5, align 8
  %25 = getelementptr inbounds %struct.proc, %struct.proc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.proc*, %struct.proc** %5, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %35)
  br label %37

37:                                               ; preds = %20, %4
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @copyin(i64, %struct.shared_file_mapping_np*, i64) #1

declare dso_local i32 @SHARED_REGION_TRACE_ERROR(i8*) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(i32) #1

declare dso_local i32 @current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
