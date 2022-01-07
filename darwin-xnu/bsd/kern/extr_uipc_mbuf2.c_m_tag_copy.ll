; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_copy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_tag = type { i64, i64, i32 }

@KERNEL_MODULE_TAG_ID = common dso_local global i64 0, align 8
@KERNEL_TAG_TYPE_MACLABEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_tag* @m_tag_copy(%struct.m_tag* %0, i32 %1) #0 {
  %3 = alloca %struct.m_tag*, align 8
  %4 = alloca %struct.m_tag*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m_tag*, align 8
  store %struct.m_tag* %0, %struct.m_tag** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %8 = icmp ne %struct.m_tag* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %12 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %15 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %18 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.m_tag* @m_tag_alloc(i64 %13, i64 %16, i32 %19, i32 %20)
  store %struct.m_tag* %21, %struct.m_tag** %6, align 8
  %22 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %23 = icmp eq %struct.m_tag* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store %struct.m_tag* null, %struct.m_tag** %3, align 8
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %27 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %26, i64 1
  %28 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %29 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %28, i64 1
  %30 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %31 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bcopy(%struct.m_tag* %27, %struct.m_tag* %29, i32 %32)
  %34 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  store %struct.m_tag* %34, %struct.m_tag** %3, align 8
  br label %35

35:                                               ; preds = %25, %24
  %36 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  ret %struct.m_tag* %36
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.m_tag* @m_tag_alloc(i64, i64, i32, i32) #1

declare dso_local i32 @bcopy(%struct.m_tag*, %struct.m_tag*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
