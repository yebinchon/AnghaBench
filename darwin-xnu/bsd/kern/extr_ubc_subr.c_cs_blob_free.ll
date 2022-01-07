; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_blob_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_blob_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_blob = type { i32*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cs_blob_free(%struct.cs_blob* %0) #0 {
  %2 = alloca %struct.cs_blob*, align 8
  store %struct.cs_blob* %0, %struct.cs_blob** %2, align 8
  %3 = load %struct.cs_blob*, %struct.cs_blob** %2, align 8
  %4 = icmp ne %struct.cs_blob* %3, null
  br i1 %4, label %5, label %35

5:                                                ; preds = %1
  %6 = load %struct.cs_blob*, %struct.cs_blob** %2, align 8
  %7 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load %struct.cs_blob*, %struct.cs_blob** %2, align 8
  %12 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.cs_blob*, %struct.cs_blob** %2, align 8
  %15 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ubc_cs_blob_deallocate(i64 %13, i32 %16)
  %18 = load %struct.cs_blob*, %struct.cs_blob** %2, align 8
  %19 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %10, %5
  %21 = load %struct.cs_blob*, %struct.cs_blob** %2, align 8
  %22 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.cs_blob*, %struct.cs_blob** %2, align 8
  %27 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @osobject_release(i32* %28)
  %30 = load %struct.cs_blob*, %struct.cs_blob** %2, align 8
  %31 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %20
  %33 = load %struct.cs_blob*, %struct.cs_blob** %2, align 8
  %34 = call i32 @kfree(%struct.cs_blob* %33, i32 24)
  br label %35

35:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @ubc_cs_blob_deallocate(i64, i32) #1

declare dso_local i32 @osobject_release(i32*) #1

declare dso_local i32 @kfree(%struct.cs_blob*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
