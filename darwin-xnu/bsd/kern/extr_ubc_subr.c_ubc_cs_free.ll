; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_cs_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_cs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubc_info = type { %struct.cs_blob*, i32 }
%struct.cs_blob = type { i64, %struct.cs_blob* }

@cs_blob_count = common dso_local global i32 0, align 4
@cs_blob_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubc_info*)* @ubc_cs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubc_cs_free(%struct.ubc_info* %0) #0 {
  %2 = alloca %struct.ubc_info*, align 8
  %3 = alloca %struct.cs_blob*, align 8
  %4 = alloca %struct.cs_blob*, align 8
  store %struct.ubc_info* %0, %struct.ubc_info** %2, align 8
  %5 = load %struct.ubc_info*, %struct.ubc_info** %2, align 8
  %6 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %5, i32 0, i32 0
  %7 = load %struct.cs_blob*, %struct.cs_blob** %6, align 8
  store %struct.cs_blob* %7, %struct.cs_blob** %3, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.cs_blob*, %struct.cs_blob** %3, align 8
  %10 = icmp ne %struct.cs_blob* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load %struct.cs_blob*, %struct.cs_blob** %3, align 8
  %13 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %12, i32 0, i32 1
  %14 = load %struct.cs_blob*, %struct.cs_blob** %13, align 8
  store %struct.cs_blob* %14, %struct.cs_blob** %4, align 8
  %15 = call i32 @OSAddAtomic(i32 -1, i32* @cs_blob_count)
  %16 = load %struct.cs_blob*, %struct.cs_blob** %3, align 8
  %17 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 0, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @OSAddAtomic(i32 %20, i32* @cs_blob_size)
  %22 = load %struct.cs_blob*, %struct.cs_blob** %3, align 8
  %23 = call i32 @cs_blob_free(%struct.cs_blob* %22)
  br label %24

24:                                               ; preds = %11
  %25 = load %struct.cs_blob*, %struct.cs_blob** %4, align 8
  store %struct.cs_blob* %25, %struct.cs_blob** %3, align 8
  br label %8

26:                                               ; preds = %8
  %27 = load %struct.ubc_info*, %struct.ubc_info** %2, align 8
  %28 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %27, i32 0, i32 0
  store %struct.cs_blob* null, %struct.cs_blob** %28, align 8
  ret void
}

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @cs_blob_free(%struct.cs_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
