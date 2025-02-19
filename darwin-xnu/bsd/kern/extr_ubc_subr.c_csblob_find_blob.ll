; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_csblob_find_blob.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_csblob_find_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_blob = type { i32, i32, i64 }

@CS_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @csblob_find_blob(%struct.cs_blob* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cs_blob*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cs_blob* %0, %struct.cs_blob** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.cs_blob*, %struct.cs_blob** %5, align 8
  %9 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CS_VALID, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %26

15:                                               ; preds = %3
  %16 = load %struct.cs_blob*, %struct.cs_blob** %5, align 8
  %17 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load %struct.cs_blob*, %struct.cs_blob** %5, align 8
  %21 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32* @csblob_find_blob_bytes(i32* %19, i32 %22, i32 %23, i32 %24)
  store i32* %25, i32** %4, align 8
  br label %26

26:                                               ; preds = %15, %14
  %27 = load i32*, i32** %4, align 8
  ret i32* %27
}

declare dso_local i32* @csblob_find_blob_bytes(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
