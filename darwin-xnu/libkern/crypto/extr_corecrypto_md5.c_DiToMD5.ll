; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_md5.c_DiToMD5.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_md5.c_DiToMD5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdigest_info = type { i32, i32 }
%struct.ccdigest_ctx = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccdigest_info*, %struct.ccdigest_ctx*, %struct.TYPE_4__*)* @DiToMD5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DiToMD5(%struct.ccdigest_info* %0, %struct.ccdigest_ctx* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca %struct.ccdigest_info*, align 8
  %5 = alloca %struct.ccdigest_ctx*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.ccdigest_info* %0, %struct.ccdigest_info** %4, align 8
  store %struct.ccdigest_ctx* %1, %struct.ccdigest_ctx** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.ccdigest_info*, %struct.ccdigest_info** %4, align 8
  %9 = load %struct.ccdigest_ctx*, %struct.ccdigest_ctx** %5, align 8
  %10 = call i32 @ccdigest_nbits(%struct.ccdigest_info* %8, %struct.ccdigest_ctx* %9)
  %11 = sdiv i32 %10, 8
  %12 = sext i32 %11 to i64
  %13 = load %struct.ccdigest_info*, %struct.ccdigest_info** %4, align 8
  %14 = load %struct.ccdigest_ctx*, %struct.ccdigest_ctx** %5, align 8
  %15 = call i64 @ccdigest_num(%struct.ccdigest_info* %13, %struct.ccdigest_ctx* %14)
  %16 = add nsw i64 %12, %15
  %17 = call i32 @setCount(%struct.TYPE_4__* %7, i64 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ccdigest_info*, %struct.ccdigest_info** %4, align 8
  %22 = load %struct.ccdigest_ctx*, %struct.ccdigest_ctx** %5, align 8
  %23 = call i32 @ccdigest_data(%struct.ccdigest_info* %21, %struct.ccdigest_ctx* %22)
  %24 = load %struct.ccdigest_info*, %struct.ccdigest_info** %4, align 8
  %25 = getelementptr inbounds %struct.ccdigest_info, %struct.ccdigest_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32 %20, i32 %23, i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ccdigest_info*, %struct.ccdigest_info** %4, align 8
  %32 = load %struct.ccdigest_ctx*, %struct.ccdigest_ctx** %5, align 8
  %33 = call i32 @ccdigest_state_ccn(%struct.ccdigest_info* %31, %struct.ccdigest_ctx* %32)
  %34 = load %struct.ccdigest_info*, %struct.ccdigest_info** %4, align 8
  %35 = getelementptr inbounds %struct.ccdigest_info, %struct.ccdigest_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i32 %30, i32 %33, i32 %36)
  ret void
}

declare dso_local i32 @setCount(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @ccdigest_nbits(%struct.ccdigest_info*, %struct.ccdigest_ctx*) #1

declare dso_local i64 @ccdigest_num(%struct.ccdigest_info*, %struct.ccdigest_ctx*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ccdigest_data(%struct.ccdigest_info*, %struct.ccdigest_ctx*) #1

declare dso_local i32 @ccdigest_state_ccn(%struct.ccdigest_info*, %struct.ccdigest_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
