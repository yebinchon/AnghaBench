; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetCurrentMachineIpProcessHash.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetCurrentMachineIpProcessHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@machine_ip_process_hash_lock = common dso_local global i32 0, align 4
@machine_ip_process_hash = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetCurrentMachineIpProcessHash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %23

6:                                                ; preds = %1
  %7 = load i32, i32* @machine_ip_process_hash_lock, align 4
  %8 = call i32 @Lock(i32 %7)
  %9 = load i32, i32* @machine_ip_process_hash, align 4
  %10 = load i32, i32* @SHA1_SIZE, align 4
  %11 = call i64 @IsZero(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = load i32, i32* @machine_ip_process_hash, align 4
  %15 = call i32 @GetCurrentMachineIpProcessHashInternal(i32 %14)
  br label %16

16:                                               ; preds = %13, %6
  %17 = load i8*, i8** %2, align 8
  %18 = load i32, i32* @machine_ip_process_hash, align 4
  %19 = load i32, i32* @SHA1_SIZE, align 4
  %20 = call i32 @Copy(i8* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @machine_ip_process_hash_lock, align 4
  %22 = call i32 @Unlock(i32 %21)
  br label %23

23:                                               ; preds = %16, %5
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i64 @IsZero(i32, i32) #1

declare dso_local i32 @GetCurrentMachineIpProcessHashInternal(i32) #1

declare dso_local i32 @Copy(i8*, i32, i32) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
